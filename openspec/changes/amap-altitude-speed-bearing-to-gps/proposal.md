# Proposal

## Why

当前 `AmapFix` 仅从高德 SDK 采集海拔（`altitudeMeters`），速度（`speedMps`）和方位角（`bearingDeg`）字段缺失或由系统 API 补充。用户要求这三个字段全部由高德 SDK 直接提供，确保数据来源一致性，且不依赖 Android 系统 GPS/GNSS API。

## What Changes

- `AmapFix` 数据类新增 `speedMps: Double?`、`bearingDeg: Double?` 字段（`altitudeMeters` 已存在）
- `AmapLocationSource.parse()` 从 `AMapLocation.getSpeed()`、`getBearing()`、`hasSpeed()`、`hasBearing()` 提取并填充
- `RecordingService.onAmapFix()` 将新字段透传到 `LocationSampleEntity` 入库
- 导出 JSON 时保留 `speedMps`、`bearingDeg` 字段
- **不使用** Android `Location.getSpeed()`/`getBearing()`/`getAltitude()` 等系统 API 采集这些字段

## Capabilities

### New Capabilities

- `amap-altitude-speed-bearing`: 高德 SDK 位置点完整包含海拔、速度、方位角三字段，来源统一为 AMap Android SDK，不回退到系统 API

### Modified Capabilities

无。

## Impact

- `app/src/main/java/com/sportsmonitor/logger/location/AmapLocationSource.kt`：`AmapFix` 新增字段、`parse()` 提取逻辑
- `app/src/main/java/com/sportsmonitor/logger/recording/RecordingService.kt`：`onAmapFix()` 透传新字段到 `LocationSampleEntity`
- `app/src/main/java/com/sportsmonitor/logger/data/RecordingExporter.kt`：导出 JSON 包含 `speedMps`、`bearingDeg`
- 数据库 Schema 可能需迁移（新增列）