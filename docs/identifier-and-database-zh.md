# 补充：标识与数据库调用链

## 已确认：标识不是简单的数字产品 ID

CoreUARP `-[UARPSupportedAccessory identifier]`（0x19F58FFB4）检查对象字段 +0x78 和 +0x80。相应 getter 证明它们分别是 productGroup 和 productNumber（0x19F5921F8、0x19F59220C）。两者均存在时用格式字符串 `%@%@` 拼接；此格式本身不额外插入分隔符。否则返回 +0x70 的 appleModelNumber（getter 0x19F5921E4）；型号也不存在时返回回退常量。

格式字符串 CFString 0x1F04B9ED8 的字符指针归一化后是 0x19F5B8177，原始字节为 `25 40 25 40 00`。

USBPD 在生成 MagSafe IOKit 匹配规则时，从 supported accessory 取 identifier（0x100010280–0x1000102A8），传给 initWithIdentifier:xpcEventStream:matchingDictionary:。

创建配件实例时，findByHardwareID: 的结果提供 identifier（0x1000049F8、0x100004A38），作为参数传给 initWithHardwareID:identifier:vuarpDelegate:hpmDelegate:（0x100004A5C）。初始化在 0x10000DAF4–0x10000DAFC 将此参数存入实例 +0x38，identifier getter 0x10000DBAC 返回该字段。qAddAccessory: 使用该 getter 对禁用字典做完整键查询。

**推测而非运行时确认**：A3285 类构造路径设置 appleModelNumber=A3285，未在所检查初始化片段中设置 productGroup/productNumber，所以默认路径的候选 identifier 是 A3285。仍需排除后续修改、替代注册记录或其他运行时路径，不能据此直接发布 defaults write 命令。

## 已确认：数据库优先查本配件，再查 partner

daemon 0x100006898 接收 serialNumber、modelNumber、hwFusingType、partnerSerialNumbers。serialNumber 存在时先查询开发者数据库；本配件记录存在便选择本配件标识。找不到时委托 0x1000064DC 选择 partner 记录，并再次核实其存在。没有序列号或没有可用记录时可以返回 nil。

partner 搜索还读取记录中的字段并比较 hwFusingType；具体边界条件尚未全部还原。因此不能把 `isOTADisabled` 简化为一个适用于所有配件的顶层全局布尔项。本文没有构造或写入数据库。

## 仍未解决

- A3285 当前固件版本与正在使用的实际 identifier。
- 守护进程实际偏好套件中的相应记录及 isOTADisabled 状态。
- 当前资产是否已有 remoteURL，以及 OTA 检查分支是否实际执行。
- 已暂存固件的后续安装路径是否也受该检查约束。
- 写入任何规则后，充电、连接、唤醒、重启及更新行为是否保持预期。

这些缺口意味着研究结论仍是“找到候选机制”，不是“已锁定 3.1.12”。
