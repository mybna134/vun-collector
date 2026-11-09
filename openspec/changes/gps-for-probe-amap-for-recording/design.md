# Design

## Context

当前三处位置采集（GeeToken 预定位、城市采集、运动记录）均使用 `AmapLocationSource`（高德 Android SDK）。用户希望：
- **GeeToken 预定位**改用 Android 原生 GPS (`FusedLocationProviderClient`)，返回 WGS84，无需高德 Key
- **城市采集（"其他信息"页）继续用高德 SDK**，返回 GCJ-02 + 逆地理城市信息，需 Key
- **运动记录**继续用高德 SDK 连续定位，保留 GCJ-02 + accuracy

## Goals / Non-Goals

**Goals:**
- `LocationAwaiter.await()` 用 `FusedLocationProviderClient` 获取 WGS84 GPS，供 GeeToken 预定位
- `LocationAwaiter.awaitCity()` 继续用高德 SDK (`AmapLocationSource.await(requireCity=true)`)，返回 `AmapFix`，供城市采集
- `GeoCity` 继续用 `AmapFix`，输出 `coordsys:"GCJ02"`
- `AmapLocationSource` 保留完整 API（`await`、`awaitCity`、`parse`、`availableKey`、`unavailableReason`、`startContinuous`）
- `RecordingService` 继续用 `startContinuous`，无变化

**Non-Goals:**
- 不引入坐标转换
- 不改变历史已导出的城市/运动记录格式

## Decisions

1. **GpsFix 数据模型。** 新建 `location/GpsFix.kt`，含 timeMs、lat/lon、accuracyMeters、altitudeMeters?、speedMps?、bearingDeg?、provider、SOURCE="android_gps"、COORD_SYS="WGS84"。仅用于 GeeToken 预定位。

2. **LocationAwaiter 分离实现。**
   - `await()`：用 `FusedLocationProviderClient` 获取单次 WGS84 GPS 位置，返回 `GpsFix`
   - `awaitCity()`：委托给 `AmapLocationSource.await(context, requireCity=true)`，返回 `AmapFix`

3. **GeoCity 无变化。** 继续接受 `AmapFix`，输出 GCJ02。

4. **AmapLocationSource 保留完整。** 恢复 `await`/`awaitCity`/`parse`/`availableKey`/`unavailableReason`，供城市采集用。

5. **ProbeViewModel 适配。** `generate()` 用 `LocationAwaiter.await()` (GpsFix)，`fetchCity()` 用 `LocationAwaiter.awaitCity()` (AmapFix)。

6. **RecordingService 无变化。** 继续用 `AmapLocationSource.startContinuous`。

## Risks / Trade-offs

- [GPS 预定位在室内可能失败] → FusedLocationProviderClient 自动融合网络定位；保留超时与明确错误提示
- [城市采集仍需高德 Key/隐私] → 这是用户明确要求的，不作为缺陷
- [两种坐标系并存] → GeeToken 预定位用 WGS84（仅作等待条件），城市/运动记录用 GCJ02，导出时 coordsys 字段区分

## Migration Plan

1. 新增 `GpsFix`、`GpsFixRules`
2. 重写 `LocationAwaiter.await()` 为 GPS，`awaitCity()` 委托高德 SDK
3. 恢复 `AmapLocationSource.await`/`awaitCity`/`parse`/`availableKey`/`unavailableReason`
4. 验证 GeeToken 生成（GPS预定位）、城市采集（高德 SDK）、运动记录（高德 SDK）三路流程

## Open Questions

无。