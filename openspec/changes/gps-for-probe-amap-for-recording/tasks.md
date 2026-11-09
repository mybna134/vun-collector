# Tasks

## 1. 数据模型

- [x] 1.1 新增 `location/GpsFix.kt`：含 timeMs、latitude、longitude、accuracyMeters、altitudeMeters?、speedMps?、bearingDeg?、provider、SOURCE="android_gps"、COORD_SYS="WGS84"；验证编译通过
- [x] 1.2 新增 `GpsFixRules`（内联在 GpsFix.kt）：有效性校验，坐标系放宽检查；验证编译通过

## 2. LocationAwaiter 分离实现

- [x] 2.1 重写 `LocationAwaiter.await()`：使用 `FusedLocationProviderClient` 获取单次 GPS 位置，返回 `GpsFix`；验证室外定位成功
- [x] 2.2 `LocationAwaiter.awaitCity()`：委托 `AmapLocationSource.await(context, requireCity=true)`，返回 `AmapFix`；验证城市采集流程正常
- [x] 2.3 异常处理：GPS 超时、高德 SDK 不可用均返回明确错误；验证错误提示正确

## 3. 恢复 AmapLocationSource 完整 API

- [x] 3.1 恢复 `await`/`awaitCity`/`parse`/`availableKey`/`unavailableReason` 方法；验证编译通过
- [x] 3.2 `startContinuous` 保持不变；验证运动记录正常

## 4. GeoCity 无变化

- [x] 4.1 `GeoCity.exportJson` 继续接受 `AmapFix`，输出 `coordsys:"GCJ02"`；验证导出格式

## 5. ProbeViewModel 适配

- [x] 5.1 `generate()` 使用 `LocationAwaiter.await()` 返回 `GpsFix` 作为预定位；验证 GeeToken 生成前定位正常
- [x] 5.2 `fetchCity()` 使用 `LocationAwaiter.awaitCity()` 返回 `AmapFix`；验证城市采集流程完整

## 6. MainActivity 适配

- [x] 6.1 `withAmapConsent(requireAmapKey: Boolean)`：GeeToken 预定位不需高德 Key；城市采集与运动记录仍需；验证各按钮可用性正确

## 7. 集成验证

- [x] 7.1 运行 `:app:assembleDebug`，确认编译通过
- [x] 7.2 安装到设备，验证三路流程：
  - GeeToken 页：无高德 Key 时仍能生成（预定位用 GPS）
  - 其他信息页：需高德 Key 才能获取城市（高德 SDK）
  - 运动采集页：有高德 Key 时正常记录 GCJ-02 + accuracy；无 Key 时提示不可用
- [x] 7.3 验证导出 JSON：城市导出 coordsys=GCJ02，运动记录 coordsys=GCJ02 且含 accuracy