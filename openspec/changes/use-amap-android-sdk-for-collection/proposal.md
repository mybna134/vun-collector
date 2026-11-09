# Proposal

## Why

目前城市信息使用高德 Web API，而 GeeToken 定位等待和运动记录直接使用 Android GPS。用户希望位置与城市统一使用高德 Android 定位 SDK，坐标保持 SDK 原值，不自动回退，同时在配置 Android Key 前获得注册所需的包名和签名 SHA1。

## What Changes

- 集成高德 Android 定位 SDK，以其实时有效位置作为 GeeToken 预定位、城市信息和运动位置采样的唯一位置来源；城市、省、区使用 SDK 逆地理结果，移除城市流程的高德 Web API 请求与 Web Key 输入。
- 高德 SDK 未提供的位置或城市字段不自动补值；缺少必需值、Key、授权或有效定位时，相关流程显示具体原因并停止成功导出，实施中遇到未预见的缺失字段先向用户请示。
- 高德坐标保持 SDK 原值，不进行坐标转换；本次仅接受 SDK 标示为 GCJ-02 的新位置结果，不能判定为 GCJ-02 的结果需先向用户请示。历史 Android GPS/WGS84 记录保留原有坐标含义。
- SDK 不提供的运动传感器事件、NMEA/GGA、DeviceInfo 与 SIM 字段作为独立采集项继续使用 Android API，不作为位置或城市的回退来源。
- 将 Android SDK Key 与现有 Web Key 分离配置；在用户提供 Android Key 前完成可编译集成和签名信息核对，待获得 Key 后再做真实 SDK 设备验证。
- 增加 SDK 隐私告知和授权流程，满足初始化前的接口要求。

## Capabilities

### New Capabilities

- `amap-first-collection`: 规定高德 Android 定位 SDK 作为位置和城市唯一来源、GCJ-02 原值导出、独立 Android 原始数据采集及 Key/隐私门槛。

### Modified Capabilities

无。当前主规格目录为空；本变更与历史 `sensor-gps-recording`、`geetoken-collection` 和 `default-amap-key` 变更的现行行为衔接，不直接改写历史变更文件。

## Impact

- `app/build.gradle.kts`、`settings.gradle.kts`、`AndroidManifest.xml`、应用启动/隐私界面及 Key 配置。
- `LocationAwaiter.kt`、`ProbeViewModel.kt`、`GeoCity.kt`、`ProbePages.kt`、`RecordingService.kt`、位置模型/导出及相关测试。
- 保持安装包名 `com.collector.vun`；Android Key 需绑定实际签名证书 SHA1，调试与发布签名可能不同。GeeToken SDK 的加密输出仍由其自身产生。
