# 只读检查命令

按组手动执行。无需 sudo；无偏好写入、服务控制、固件更新或联网下载。命令只输出到终端。第二组需要系统 dyld_info；第三组需要 strings。

## 第 1 组

```sh
sh commands/stage-1.sh
```

## 第 2 组

```sh
sh commands/stage-2.sh
```

## 第 3 组

```sh
sh commands/stage-3.sh
```

第一组输出系统版本、去除电池数字 ID 的电源状态及组件哈希。第二组摘录相关 CoreUARP 方法。第三组只确认字符串存在，不能证明开关生效。命令不收集配件序列号或 UUID；第三方工具若报错并显示个人路径，请先人工检查再公开。
