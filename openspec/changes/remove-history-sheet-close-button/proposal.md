# Proposal

## Why

运动历史 BottomSheet 已支持返回键、下滑和外部点击关闭，列表标题旁的“关闭”按钮可以移除以简化界面。

## What Changes

- 删除运动历史列表顶部的“关闭”按钮，仅保留“历史记录”标题。
- 保留返回键、下滑和点击外部关闭 Sheet；保留详情中的“返回列表”。
- 更新现有设备测试，改用历史列表标题识别 Sheet，并使用返回键关闭。

## Capabilities

### New Capabilities

- `recording-management`：明确历史 Sheet 无“关闭”按钮及替代关闭方式。主规格目录为空，复用 `simplify-vun-collector` 的能力路径，以 ADDED 补充合同。

### Modified Capabilities

无已发布主规格；与尚未归档的 `simplify-vun-collector` 配套使用，本次不归档其他变更。

## Impact

仅涉及 MainActivity.kt 中 RecordsPage 的按钮、无用回调及 ProbeIntegrationTest.kt 的相关交互断言，无数据或依赖变更。
