# MagSafe 3 A3285 OTA Research

只读研究：评估是否能阻止 A3285 从 3.1.12 升级到 3.2.0，并保留正常充电。

**当前尚未实现或验证固件锁定。** 本仓库提供静态证据，不提供可推荐的 OTA 禁用配置。

Read-only research into per-accessory OTA controls on macOS. Firmware pinning with uninterrupted charging has **not** been demonstrated.

## 内容 / Contents

- [中文研究报告](docs/phase2-zh.md)：已确认事实、推测与局限。
- [补充调用链](docs/identifier-and-database-zh.md)：标识生成、USBPD 传递路径及数据库查找顺序。
- [English summary](docs/summary-en.md).
- [静态代码摘录](evidence/static-excerpts.md)与[补充摘录](evidence/followup-excerpts.md)。
- [JSON 数据](data/findings.json)及 [CSV 数据](data/findings.csv)。
- [只读检查命令](commands/README.md)：按阶段手动执行，不写配置。
- [隐私与来源说明](PRIVACY.md)及[核验记录](VALIDATION.md)。

样本：macOS 26.3.2 (25D2150), arm64e；研究日期：2026-10-07 (America/Toronto)。虚拟地址仅针对该样本。

第一阶段原 ZIP 未在本工作区获得，因此本包没有冒称包含原 ZIP 的全部文件。历史发现仅作为背景；本包核心结论已通过本机只读静态分析重新核实。

解压后可将此目录的内容上传至 GitHub 仓库。没有内嵌原始统一日志、配件数据库、完整 Apple 二进制或固件镜像。

## License

原创报告、结构化数据和检查命令使用 [MIT License](LICENSE)。Apple 系统代码摘录的权利归属见 [Third-party notices](THIRD_PARTY_NOTICES.md)。
