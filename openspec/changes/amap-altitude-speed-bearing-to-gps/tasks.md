# Tasks

## 1. AmapFix 扩展

- [x] 1.1 `AmapFix` 新增 `speedMps: Double?`、`bearingDeg: Double?` 字段；验证编译通过
- [x] 1.2 `parse()` 从 `AMapLocation.getSpeed()/getBearing()/hasSpeed()/hasBearing()` 提取填充；验证室外定位包含三字段

## 2. LocationSampleEntity 扩展

- [x] 2.1 `LocationSampleEntity` 新增 `speedMps: Double?`、`bearingDeg: Double?` 列；验证 Room 编译通过
- [x] 2.2 `onAmapFix()` 透传三字段到 `LocationSampleEntity`；验证入库包含新字段

## 3. 导出扩展

- [x] 3.1 `RecordingExporter.writeBase()` GPS 样本循环写入 `speedMps`、`bearingDeg`；验证导出 JSON 包含新字段

## 4. 集成验证

- [x] 4.1 运行 `:app:assembleDebug`，确认编译通过
- [x] 4.2 安装到设备，运动记录 -> 导出 JSON 验证：每个位置点含 `altitudeMeters`、`speedMps`、`bearingDeg`（高德 SDK 返回时），三字段来源均为 AMap SDK