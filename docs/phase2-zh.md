# MagSafe 3 A3285 OTA：第二阶段只读研究

研究日期：2026-10-07（America/Toronto）。本次样本：macOS 26.3.2，build 25D2150，arm64e。

## 当前结论

尚未证明能够将 A3285 固件保持在 3.1.12、阻止 3.2.0，同时完全保留充电。本阶段没有写入配置、停止服务、调用固件更新接口、修改系统文件或关闭 SIP。

单配件开发者数据库中存在真正的 OTA 禁用判断；然而存在代码不等于 A3285 的实际更新一定受其控制。`disabledProductIdentifiers` 的影响也超出单纯下载过滤，暂不建议写入。

## 可复核证据

以下 daemon 地址是未加载时虚拟地址；CoreUARP 地址是本机 dyld_info 输出的 unslid 地址。地址仅适用于该系统样本，不能跨版本照搬。

### 1. A3285、A2363 与 0x7800

CoreUARP 的 `UARPSupportedAccessoryA2363` 类：

| 方法 | 地址 | 静态结果 |
|---|---|---|
| `+appleModelNumber` | `0x19F545890` | 返回 CFString `0x1F04BED38`：A3285 |
| `+alternativeAppleModelNumbers` | `0x19F54589C` | 集合含 CFString `0x1F04BED18`：A2363 |
| `+productID` | `0x19F5458D0` | `mov w0, #0x7800; ret` |
| `-init` | `0x19F545680` | 设置型号、日志、分析能力和 USBPD hardware ID |

字符串交叉验证使用 `__AUTH_CONST,__cfstring` 中的字符指针和 `__TEXT,__cstring` 原始字节。共享缓存的字符指针包含运行时 slide，须归一化后比对。特别注意：本机 dyld_info 的格式化 cstring 输出所列地址表现为字符串末尾位置，不能直接作为字符串起始地址；原始字节显示 A2363 起于 `0x19F5BC596`，A3285 起于 `0x19F5BC59C`。

因此，旧类名 A2363 不意味着它不包含 A3285。这也不意味着禁用字典的键必然是十六进制或十进制产品 ID。

### 2. 真正的数据库字段是 isOTADisabled

`AUDeveloperSettingsDatabase` 的 `accessoriesDictionary`（daemon `0x1000050D0`）读取偏好键 `accessories`，并检查结果是 NSDictionary。读取经由 `NSUserDefaults` 类别方法 `AUDeveloperSettingsObjectWithKey:`，存在守护进程用户与 XPC 读取分支；普通当前用户的偏好文件不能直接代表守护进程实际看到的数据库。

daemon `0x100006A14` 从 accessoryID 获取 serialNumber、modelNumber、hwFusingType、partnerSerialNumbers，委托给 `0x100006AD8`。后者通过 `0x100006898` 选择查找标识，访问数据库字典，再读取常量地址 `0x10013D9A8` 所指向的 CFString `0x100144E48`，内容为 **isOTADisabled**，随后调用 boolValue。

这纠正了一个容易混淆的点：`UARPSettingsAccessory` 的只读属性名 `otaDisabled`，与此处数据库字典中的 `isOTADisabled` 不是同一拼写。不能根据属性名推导出可写配置格式。

`UARPMobileAssetManager -updateAssetSettingsForAccessory:checkForUpdate:automaticUpdatesDisabled:`（`0x100037B70`）先按序列号访问开发者数据库，并有 partner accessory 查找分支；在 `0x100037F94` 调用上述 OTA 判断，命中后在 `0x100037FF0–0x100037FF8` 将 automaticUpdatesDisabled 输出布尔量置为 true。紧邻日志为 “Entry found in AUDeveloperSettingsDatabase Accessory:%@ with OTA Update disabled, not attempting update”。

这是静态控制流证据，尚未观测到 A3285 实际命中这一分支。

### 3. supportsDeveloperSettings 与更新入口不同

CoreUARP 的 `-supportsDeveloperSettings`（`0x19F59230C`）读取对象 `+0x63` 字节；字典初始化路径从 `SupportsDeveloperSettings` 取 boolValue 写入该字段（`0x19F58EC30–0x19F58EC50`）。

在 A2363/A3285 类的 `-init` 中未发现显式调用 `setSupportsDeveloperSettings:`。USBPD 基类初始化会开启 `supportsInternalSettings`（`0x19F534F6C–0x19F534F74`）。

daemon `-performFirmwareAssetQuery:` 的 `0x100038D24–0x100038D40` 使用 **supportsInternalSettings** 作为进入上述资产设置检查的条件之一，另一个条件是 assetID 没有 remoteURL。`supportsDeveloperSettings` 还被写入配件信息数据库（`0x100038AC4–0x100038AEC`）。

推测：开发者界面支持标志与资产查询里的 OTA 检查入口并非同一个门槛。不能仅凭缺少开发者支持 setter 就判定单配件禁用对 A3285 不生效。仍需核实实际对象能力、数据库记录、remoteURL 状态，以及完整调用路径。

### 4. disabledProductIdentifiers 的两条路径

此前 `0x10001B884` 已解析为 `UARPUpdaterServiceManager -automaticUpdatesDisabledForIdentifier:`。它按 `.` 拆分传入字符串，取第 0 项，在 CFPreferencesCopyAppValue 取得的字典中查值并取 boolValue。IOKit 事件处理在 `0x10001BBC4` 调用它，命中会跳过 `ioKitRuleMatched:`。

第二条路径将整个字典传给 USBPD 服务：daemon `0x10001BCD4`，服务 `-disabledProductIdentifiers:`（`0x100010F70`），再交给 `UARPUSBPDUpdater -disabledProductIdentifiers:`（`0x10000C1CC`），在 block `0x10000C26C` 复制并保存到实例 `+0x50`。

`UARPUSBPDUpdater -qAddAccessory:` 在 `0x1000061C0–0x1000061F0` 用配件 `identifier` **直接**查此字典并取 boolValue。命中后 `0x1000062B8–0x1000062DC` 跳过后续添加流程。因此不能假定所有消费者都采用同样的 `.` 前缀规则，也不能声称该选项只屏蔽下载或必定不影响充电。

完整传入标识尚待确认。此前日志出现的 `com.apple.iokit.matching,com.apple.UARPUpdaterServiceUSBPD,A3285` 是事件过滤名称，不能直接当成字典键。历史缓存记录键 `A3285-<REDACTED>` 也不能自动等同于上述两个接口的 identifier。

## 当前硬件状态与局限

本次较早的 `pmset -g batt` 快照显示 AC Power、charging。稍后的 IORegistry 白名单查询显示 ExternalConnected=true、IsCharging=false、FullyCharged=false，并识别出 Apple 电源适配器。这两次快照不一致，不能据此确认持续充电正常，也不能判断原因；本阶段未修改任何充电或更新设置。AdapterDetails 未提供线缆固件版本。当前线缆固件版本尚未重新确认；3.1.12 与 3.2.0 在本文中是研究目标和候选升级版本，不是本阶段独立确认的现状。

原始历史附件包含真实用户名、主机名和配件序列号；未复制进此公开报告。没有发布完整硬件转储、数据库或统一日志。本次只公开静态代码摘录和系统组件哈希。相关数据库目录普通用户不可读；不将权限不足解释为数据库不存在或禁用项为 false。

## 下一阶段

1. 只读确认 A3285 当前固件、实际 capability 与资产状态，使用字段白名单输出；序列号仅在本机内存中用于匹配，输出固定占位符。
2. 在获准读取的守护进程数据库里核实 `accessories` 结构和相应记录。先验证偏好套件及用户上下文，再讨论配置；不写入。
3. 静态跟踪两个 identifier 的构造方式，并核实 USBPD 跳过添加的后续影响。
4. 任何可写实验之前，必须有独立的充电行为与更新状态验证方案。当前没有形成可推荐的阻止升级命令。

## 样本 SHA-256

- accessoryupdaterd（完整 universal 文件）：`e4989b1e9a5ca6fafc784573a6aa96fd62dd4b1426f169cda81d44639b487f24`
- UARPUpdaterServiceUSBPD（完整 universal 文件）：`b9a9d6f582322608cb20d37bea7940ad9d220a9a6748745516c5e5221b9a61c2`

## 可复制的只读命令

第一组：记录样本与系统报告的充电状态。输出不包含配件序列号、用户名或主机名；pmset 输出含本机电池数字 ID，公开时应删除括号中的 id。

```sh
sw_vers
pmset -g batt | sed -E 's/\(id=[0-9]+\)/(id=REDACTED)/g'
shasum -a 256 /System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/Support/accessoryupdaterd
shasum -a 256 /System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/XPCServices/UARPUpdaterServiceUSBPD.xpc/Contents/MacOS/UARPUpdaterServiceUSBPD
```

第二组：直接从共享缓存读取代码，不加载或调用配件更新接口。按方法名筛选，避免照搬地址；输出较长，可分别执行。

```sh
dyld_info -disassemble /System/Library/PrivateFrameworks/CoreUARP.framework/Versions/A/CoreUARP |
awk '/^[-+]\[UARPSupportedAccessoryA2363 / {p=1} /^[-+]\[/ && !/^[-+]\[UARPSupportedAccessoryA2363 / {p=0} p'

dyld_info -disassemble /System/Library/PrivateFrameworks/CoreUARP.framework/Versions/A/CoreUARP |
awk '/^[-+]\[UARPSupportedAccessoryUSBPD / {p=1} /^[-+]\[/ && !/^[-+]\[UARPSupportedAccessoryUSBPD / {p=0} p'
```

第三组：只确认二进制中的相关字符串存在。这组不能单独证明控制流或配置生效。

```sh
strings -a /System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/Support/accessoryupdaterd |
grep -E '^(isOTADisabled|otaDisabled|supportsDeveloperSettings|disabledProductIdentifiers|AUDeveloperSettingsDatabase|Entry found in AUDeveloperSettingsDatabase.*OTA Update disabled.*)$'
```

以上命令无需 sudo。未提供 defaults write、launchctl disable/kill 或任何固件写入命令。

核验：本文三组命令已在该系统样本上执行，全部退出码为 0。公开报告与静态证据摘录已扫描用户路径、已知用户名/主机名、UUID 以及 A3285 序列号形式，未发现匹配。此扫描仅覆盖生成的两份 Markdown，不代表原始附件已经脱敏。
