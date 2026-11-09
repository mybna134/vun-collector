# Design

## Context

当前 `AmapFix` 仅包含 `altitudeMeters`（来自高德 SDK），缺少 `speedMps` 和 `bearingDeg`。`RecordingService.onAmapFix()` 仅透传 `altitudeMeters` 到 `LocationSampleEntity`。导出 JSON 也不包含速度和方位角。用户要求这三字段全部由高德 SDK 直接提供，不回退到 Android 系统 API。

## Goals / Non-Goals

**Goals:**
- `AmapFix` 新增 `speedMps: Double?`、`bearingDeg: Double?` 字段
- `AmapLocationSource.parse()` 从 `AMapLocation.getSpeed()/getBearing()/hasSpeed()/hasBearing()` 提取
- `RecordingService.onAmapFix()` 透传三字段到 `LocationSampleEntity`
- `RecordingExporter` 导出 JSON 包含 `speedMps`、`bearingDeg`
- 数据库 `LocationSampleEntity` 新增对应列（需迁移）

**Non-Goals:**
- 不使用 Android `Location.getSpeed()`/`getBearing()`/`getAltitude()` 等系统 API 采集这些字段
- 不修改历史已导出数据格式（新增字段可选）
- 不改变 `GpsFix`（用于 GeeToken 预定位，保持原样）

## Decisions

1. **AmapFix 扩展。** 直接在数据类添加 `speedMps: Double?`、`bearingDeg: Double?`，`altitudeMeters` 已存在。

2. **parse() 提取逻辑。**
   ```kotlin
   altitudeMeters = if (location.hasAltitude() && location.altitude.isFinite()) location.altitude else null
   speedMps = if (location.hasSpeed() && location.speed.isFinite()) location.speed else null
   bearingDeg = if (location.hasBearing() && location.bearing.isFinite()) location.bearing else null
   ```

3. **LocationSampleEntity 扩展。** 新增 `speedMps: Double?`、`bearingDeg: Double?` 列，Room 自动迁移或手写迁移脚本。

4. **RecordingExporter 扩展。** 在 GPS 样本导出循环中写入 `speedMps`、`bearingDeg`。

5. **AmapFixRules 不变。** 现有有效性校验不依赖新字段。

## Risks / Trade-offs

- [高德 SDK 某些场景不返回速度/方位角] → 字段为 null，导出时可选，不阻断记录
- [数据库 Schema 变更需迁移] → 使用 Room 自动迁移 (`fallbackToDestructiveMigration` 已开启) 或编写迁移脚本

## Migration Plan

1. 修改 `AmapFix`、`parse()`、`LocationSampleEntity`、`RecordingExporter`
2. 运行 `:app:assembleDebug` 验证编译
3. 安装测试：运动记录 -> 导出 JSON 验证三字段存在

## Open Questions

无。