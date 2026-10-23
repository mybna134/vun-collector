# Tasks

## 1. 应用标识和顶部栏

- [ ] 1.1 新增 Vun Collector 字符串及 Info 矢量/adaptive icon，配置 Manifest label、icon、roundIcon；用 APK 资源检查和设备启动器确认名称、普通/圆形图标正确且 applicationId 未变。
- [ ] 1.2 在共享 Scaffold 增加 Vun Collector TopAppBar，整理三个 Tab 文案和系统栏间距；设备检查三页内容不被遮挡，更新 README 的应用名称和导航说明。

## 2. 最新结果与生成链

- [x] 2.1 重构 ProbeViewModel 的两页状态为单份内存最新结果和可验证的操作状态，新生成立即清空旧结果；增加状态测试覆盖初始禁用、重新生成失效、失败不回退、两页互不覆盖。
- [ ] 2.2 将应用 GeeToken 调用固定为既有全采集配置，串联 SDK 生成、自动解密、JSON 校验和原存档递归过滤；更新解密/转换单测覆盖嵌套字段过滤、保留值、无效 Token/JSON，设备验证真实配置生成成功后直接 Ready。
- [ ] 2.3 移除 DeviceInfo 自动写报告、探针历史加载、复制/手动存档入口及完整结果日志，解除或删除生产归档调用并保留 DeviceId 存储；更新 ProbeFilesTest/DeviceInfo 集成测试，确认 hm 的 15 字段、DeviceId 稳定且多次生成不新增/改写报告文件。
- [x] 2.4 更新 README 中内存生命周期、自动解密、现有 JSON 过滤及无探针历史的说明；检查与本变更规格一致，并明确旧文件不读取、不自动删除。

## 3. 内存导出与精简页面

- [x] 3.1 将探针按文件路径导出改为最新内存 JSON 快照导出，统一 JSON CreateDocument launcher；增加针对工具/版本绑定与原子 pending 的测试，覆盖重复点击、跨 Tab、选择器取消、拉起失败、写入/关闭失败及重试。
- [ ] 3.2 在选择位置到输出关闭全程禁用两个探针导出按钮，同页生成与导出互斥，成功/失败后释放 pending 并保留最新结果；验证 gee_plain_ / device_info_ 名称、MIME、UTF-8 JSON 内容及不完整目标的最佳努力清理。
- [ ] 3.3 将 ProbePages 精简为对应标题和两个固定文案按钮，使用共享 Snackbar 反馈成功/错误/权限降级/ABI 不可用；更新 UI 自动化确认旧按钮、正文和存档列表消失，忙碌和导出禁用规则正确。
- [ ] 3.4 更新探针 Activity 重建/Tab 切换测试，验证内存结果和 pending 绑定保持、无重复生成；用新进程验证结果不恢复、导出禁用，DeviceId 及用户已导出文件仍保留，并更新 README 导出操作说明。

## 4. 运动历史 BottomSheet

- [ ] 4.1 从主界面移除运动 list/detail 全页路由，历史入口打开独立 ModalBottomSheet，Sheet 内复用列表和 DetailPage；设备验证空列表、长列表、详情返回列表、列表返回关闭、外部点击/下滑及 Tab 切换关闭。
- [ ] 4.2 适配 Sheet 中详情布局、分页、编辑对话框和删除回调，保留独立运动导出链；更新集成测试覆盖修改后导出 v2/SHA-256、删除刷新列表及活动记录编辑/删除限制。
- [ ] 4.3 更新 README 运动历史使用说明；验证打开/关闭 Sheet、探针生成及切换 Tab 期间运动采样继续，历史与详情始终不混入探针存档。

## 5. 整体验收

- [ ] 5.1 执行 `./gradlew :app:testDebugUnitTest :app:lintDebug :app:assembleDebug` 并检查全部通过；在可用设备执行 `:app:connectedDebugAndroidTest`，记录真实 arm64 SDK 验证与不可用设备限制，不把跳过记为通过。
- [ ] 5.2 同身份升级安装，检查旧运动记录和 DeviceId 保留、Info 图标/名称生效、旧探针文件不显示且未被删除；在新的验收文档记录设备、命令、关键结果及未验证项，不写入真实 Token 或设备报告正文。

## 当前实施备注

2026-10-24：本清单涉及的生产代码、README 和测试已编写。已执行的 6 项独立 JVM 测试通过，修改的生产 Kotlin、新资源及设备测试编译通过。完整 Gradle/lint/APK 和设备验收被当前环境的只读缓存及 socket/USB 限制阻塞；涉及这些验收的任务保持未勾选，不视为完成。详见 `docs/vun-collector-verification.md`。
