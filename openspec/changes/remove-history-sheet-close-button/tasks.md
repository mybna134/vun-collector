# Tasks

## 1. 移除关闭按钮

- [x] 1.1 删除 RecordsPage 的“关闭”按钮及其 onBack 参数，顶部仅保留标题；检查调用点并编译确认无遗留回调。
- [x] 1.2 更新现有历史 Sheet 设备测试，用标题/列表定位并断言无关闭按钮，将点击关闭替换为返回键；确认详情返回列表及 Sheet 关闭路径。可用环境运行对应测试，环境阻塞时记录限制，不报告通过。

## 验证记录

2026-10-24：已删除按钮和 RecordsPage 的 onBack 参数及调用回调；Sheet 的 onDismissRequest、详情返回与 BackHandler 保持原逻辑。现有设备测试已改为定位历史标题、断言无“关闭”按钮，并使用系统返回关闭。

`python3 /tmp/check_vun_kotlin.py` 执行成功：修改的生产 Kotlin 与设备测试独立编译通过，附带执行的 6 项 JVM 测试通过。当前 ADB 因 USB 不可访问及 socket listener 被禁止而无法启动，设备交互测试未执行，不计为通过；完整 Gradle 构建限制见 `docs/vun-collector-verification.md`。
