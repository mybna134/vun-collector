# Spec Delta

## Purpose

高德 SDK 位置点完整包含海拔、速度、方位角三字段，来源统一为 AMap Android SDK，不回退到 Android 系统 GPS/GNSS API 采集这些字段。

## ADDED Requirements

### Requirement: 高德 SDK 位置点包含海拔
系统 SHALL 在高德 SDK 返回有效位置时，从 `AMapLocation.getAltitude()` 提取海拔值（单位米），作为 `AmapFix.altitudeMeters` 保存。仅当 `hasAltitude()` 返回 true 且数值有限时写入。

#### Scenario: SDK 返回有效海拔
- **WHEN** 高德 SDK 回调位置且 `hasAltitude() == true` 且数值有限
- **THEN** 位置点的 altitudeMeters 字段包含该海拔值

#### Scenario: SDK 未返回海拔
- **WHEN** 高德 SDK 回调位置但 `hasAltitude() == false` 或数值非有限
- **THEN** 位置点的 altitudeMeters 字段为 null

### Requirement: 高德 SDK 位置点包含速度
系统 SHALL 在高德 SDK 返回有效位置时，从 `AMapLocation.getSpeed()` 提取速度值（单位 m/s），作为 `AmapFix.speedMps` 保存。仅当 `hasSpeed()` 返回 true 且数值有限时写入。

#### Scenario: SDK 返回有效速度
- **WHEN** 高德 SDK 回调位置且 `hasSpeed() == true` 且数值有限
- **THEN** 位置点的 speedMps 字段包含该速度值

#### Scenario: SDK 未返回速度
- **WHEN** 高德 SDK 回调位置但 `hasSpeed() == false` 或数值非有限
- **THEN** 位置点的 speedMps 字段为 null

### Requirement: 高德 SDK 位置点包含方位角
系统 SHALL 在高德 SDK 返回有效位置时，从 `AMapLocation.getBearing()` 提取方位角值（单位度，0-360，真北为 0），作为 `AmapFix.bearingDeg` 保存。仅当 `hasBearing()` 返回 true 且数值有限时写入。

#### Scenario: SDK 返回有效方位角
- **WHEN** 高德 SDK 回调位置且 `hasBearing() == true` 且数值有限
- **THEN** 位置点的 bearingDeg 字段包含该方位角值

#### Scenario: SDK 未返回方位角
- **WHEN** 高德 SDK 回调位置但 `hasBearing() == false` 或数值非有限
- **THEN** 位置点的 bearingDeg 字段为 null

### Requirement: 记录导出包含速度与方位角
运动记录导出 JSON 时，每个位置点 SHALL 包含 `speedMps` 与 `bearingDeg` 字段（若可用），数据来源为高德 SDK。

#### Scenario: 导出包含 speedMps 和 bearingDeg
- **WHEN** 用户导出运动记录且位置点有速度/方位角
- **THEN** 导出 JSON 的位置点对象包含 `speedMps` 和 `bearingDeg` 字段