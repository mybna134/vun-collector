# Proposal

## Why

当前 GeeToken 预定位、城市采集、运动记录三处都使用高德 Android SDK。用户希望：
- **GeeToken 预定位**改用 Android 原生 GPS（FusedLocationProviderClient），不依赖高德 SDK
- **城市采集（"其他信息"页）继续使用高德 Android SDK**，保留 GCJ-02 坐标与逆地理能力，需 Key
- **运动记录**继续使用高德 SDK 连续定位，保留 accuracy 等特有字段

## What Changes

- `LocationAwaiter.await()`：改用 `FusedLocationProviderClient` 获取 WGS84 GPS 位置，用于 GeeToken 预定位
- `LocationAwaiter.awaitCity()`：保留高德 SDK 实现（`AmapLocationSource.await(requireCity=true)`），返回 `AmapFix`，用于城市采集
- `GeoCity.exportJson`：继续接受 `AmapFix`，输出 `coordsys: "GCJ02"`
- `AmapLocationSource`：保留 `await`/`awaitCity`/`parse`/`availableKey`/`unavailableReason`/`startContinuous`
- `RecordingService`：继续使用 `startContinuous`，无变化
- **GeeToken 生成前的预定位不再需要高德 Key；城市采集与运动记录仍需高德 Key**

## Capabilities

### New Capabilities

- `gps-geetoken-preloc`: GeeToken 生成前的预定位使用 Android 原生 GPS（WGS84），不依赖高德 SDK
- `amap-city-collection`: 城市信息采集继续使用高德 Android SDK，返回 GCJ-02 坐标与逆地理结果，需 Key
- `amap-recording-only`: 运动记录继续使用高德 Android SDK 连续定位，保留 GCJ-02 坐标与 accuracy

### Modified Capabilities

无。

## Impact

- `app/build.gradle.kts`：保留 `play-services-location` 依赖（用于 GeeToken 预定位）
- `app/src/main/java/com/sportsmonitor/logger/probe/LocationAwaiter.kt`：`await()` 用 GPS，`awaitCity()` 用高德 SDK
- `app/src/main/java/com/sportsmonitor/logger/probe/GeoCity.kt`：继续用 `AmapFix`，输出 GCJ02
- `app/src/main/java/com/sportsmonitor/logger/location/AmapLocationSource.kt`：保留完整 API
- `app/src/main/java/com/sportsmonitor/logger/recording/RecordingService.kt`：无变化
- `app/src/main/java/com/sportsmonitor/logger/location/GpsFix.kt`：新增，仅用于 GeeToken 预定位