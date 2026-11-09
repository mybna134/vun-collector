# Proposal

## Why

“其他信息”页目前直接显示高德 SDK 状态，缺少其他采集页使用的大号页面标题，四个 Tab 的视觉层级不一致。

## What Changes

- 在“其他信息”页内容顶部显示“其他信息”标题，使用与 GeeToken、DeviceInfo 和运动采集页相同的 `headlineSmall` 字体样式。
- 保留标题下方的 SDK 状态文字和现有获取、导出操作。

## Capabilities

### New Capabilities

- `other-info-ui`: 规定“其他信息”页的标题及其与状态和操作内容的布局关系。

### Modified Capabilities

无。

## Impact

仅涉及 Android Compose 的 `GeoPage` 页面布局；不变更定位、城市采集、导出格式、权限或依赖。
