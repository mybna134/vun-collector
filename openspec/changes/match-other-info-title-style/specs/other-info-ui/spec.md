# Spec Delta

## Purpose

统一“其他信息”采集页与其他采集页的标题层级，让用户进入任一 Tab 后都能立即识别当前页面，同时保持采集状态与操作入口清晰可见。

## ADDED Requirements

### Requirement: Other-info page title matches sibling pages

系统 SHALL 在“其他信息”页内容顶部显示“其他信息”标题。该标题 SHALL 与 GeeToken、DeviceInfo 和运动采集页的页面标题使用相同的文字样式与视觉层级。高德 SDK 状态文字 SHALL 显示在标题下方，获取与导出按钮 SHALL 保持可见且沿用现有可用状态规则。

#### Scenario: Open the Other Info tab

- **WHEN** 用户打开“其他信息”Tab
- **THEN** 内容顶部显示与其他采集页同样醒目的“其他信息”标题，下方显示 SDK 状态和获取、导出按钮
