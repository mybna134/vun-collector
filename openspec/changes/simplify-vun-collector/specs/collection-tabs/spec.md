# Spec Delta

## Purpose

在统一的三类采集导航中提供极简探针操作页面，明确最新结果的可用状态、异步操作反馈以及只在当前进程保留数据的边界，同时保证运动采集持续运行。

## ADDED Requirements

### Requirement: Minimal probe pages
系统 SHALL 保留运动采集、GeeToken、DeviceInfo 三个 Tab 并默认进入运动采集。两个探针页面的常驻内容 SHALL 分别仅为 `GeeToken` 或 `DeviceInfo` 标题，以及 `生成`、`导出` 两个按钮；系统 SHALL 移除结果正文、说明文案、复制、手动解密、存档和探针历史列表。成功、错误、权限降级及不可用原因 SHALL 通过短暂提示反馈，忙碌状态 SHALL 可从按钮状态识别。

#### Scenario: Open minimal pages
- **WHEN** 用户进入任一探针 Tab
- **THEN** 页面正文只显示对应标题和两个按钮，导航 AppBar 和 Tab 正常保留

#### Scenario: Unsupported GeeToken architecture
- **WHEN** 当前进程无法加载 GeeToken 原生库
- **THEN** GeeToken 生成和导出禁用且提示原因，DeviceInfo 和运动功能仍可用

### Requirement: Latest result export state
系统 SHALL 分别管理两页的最新结果。未生成、生成中、自动解密中或任一探针正在选择导出位置/写入期间，相关导出入口 SHALL 禁用；新生成开始 SHALL 立即使该页旧结果失效，失败后 SHALL 不回退为可导出的旧结果。系统 SHALL 只导出当前页最新成功结果，不提供旧结果选择。导出成功、取消或失败后 SHALL 恢复该结果的导出能力；同页生成和导出 SHALL 互斥。

#### Scenario: Generate then export
- **WHEN** 空白页面完成一次成功生成
- **THEN** 导出从禁用变为可用，点击后从选择位置直至写入完成保持禁用

#### Scenario: Failed replacement
- **WHEN** 已有结果后再次生成且新生成或解密失败
- **THEN** 旧结果不再可导出，导出禁用直到后续成功生成

#### Scenario: Cancel or fail export
- **WHEN** 用户取消文件选择或目标写入失败
- **THEN** 系统反馈原因并允许重试当前最新结果，不显示成功消息

### Requirement: In-memory lifecycle and recording continuity
系统 SHALL 在 Tab 切换与 Activity 配置重建时保留最新结果和操作状态，SHALL 不重复生成或自动导出；进程重启后 SHALL 不恢复探针结果且导出初始禁用。探针结果 SHALL 不自动写入本地报告、缓存、数据库、保存状态或明文日志；用户主动选择的导出文件除外。稳定 DeviceId 的既有存储 SHALL 继续使用。切换 Tab 或操作探针 SHALL 不停止运动记录服务。

#### Scenario: Rotate and switch tabs
- **WHEN** 用户生成结果后切换 Tab 并旋转屏幕
- **THEN** 返回时最新结果仍可导出，且运动记录继续采集

#### Scenario: Restart process
- **WHEN** 生成后终止并重新启动应用进程
- **THEN** 两个探针页面均无可导出结果，既有 DeviceId 继续复用

#### Scenario: No automatic archives
- **WHEN** 用户多次生成两类探针结果但未主动导出
- **THEN** 应用不新增或更新探针存档，不加载旧版探针存档，不输出完整报告到日志
