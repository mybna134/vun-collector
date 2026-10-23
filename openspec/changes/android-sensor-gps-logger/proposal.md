# Proposal

## Why

当前项目尚无应用代码。需要一个可在 Android 设备上直接采集、查看和整理运动传感器及 GPS 数据的工具，并能将完整记录导出为 JSON，便于后续分析。

## What Changes

- 新建 Android 应用，在采集时实时显示加速度、累计计步、计步事件、方向、陀螺仪和 GPS 的最新值。
- 为每次采集建立独立记录；按指定传感器类型采样，按每秒一次的目标请求 GPS 更新，并保存带时间戳的采样点。
- 支持查看记录及采样点，修改记录名称、备注和单个采样点，删除整次记录。
- 支持通过系统文件选择器将单次记录导出为带版本号的 JSON 文件。
- 处理运行时权限、设备缺少传感器、GPS 暂不可用及采集被中断的情况。

## Capabilities

### New Capabilities

- `sensor-gps-recording`: 采集、实时显示并持久化指定传感器和 GPS 数据。
- `recording-management`: 查看、修改和删除采集记录及其单个采样点。
- `recording-json-export`: 将单次记录导出为可供后续处理的 JSON。

### Modified Capabilities

无；项目尚无现有规格。

## Impact

将在本仓库建立 Android 应用、构建配置和本地数据存储；使用 Android `SensorManager`、`LocationManager`、前台服务、运行时权限及 Storage Access Framework。数据默认保存在设备本地，导出时由用户选择目标文件。
