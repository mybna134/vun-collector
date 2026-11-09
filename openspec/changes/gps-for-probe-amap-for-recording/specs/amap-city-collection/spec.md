# Spec Delta

## Purpose

城市信息采集（"其他信息"页）继续使用高德 Android 定位 SDK 获取位置并逆地理编码，返回 GCJ-02 坐标与城市/省/区，依赖高德 Key 与隐私授权。

## ADDED Requirements

### Requirement: 城市信息由高德 Android SDK 获取
系统 SHALL 在用户发起城市采集时，使用高德 Android 定位 SDK 获取实时、有效、标示为 GCJ-02 的位置，并通过 SDK 逆地理编码获取城市、省、区。

#### Scenario: SDK 返回有效 GCJ-02 位置与完整城市信息
- **WHEN** 高德 SDK 返回新鲜、有效且标示为 GCJ-02 的位置，且逆地理返回城市名
- **THEN** 系统使用该位置原值（经纬度、精度、城市、省、区），输出 coordsys="GCJ02"

#### Scenario: SDK 返回有效位置但逆地理缺少城市名
- **WHEN** 高德 SDK 定位成功但逆地理未返回城市名
- **THEN** 系统报告缺少城市名，城市采集流程不产生成功导出

#### Scenario: SDK 无有效位置
- **WHEN** SDK 未配置 Key、授权被拒、发生错误、超时或返回非 GCJ-02/无效位置
- **THEN** 城市采集报告具体原因，不产生成功导出

### Requirement: 城市采集依赖高德 Key 与隐私授权
城市采集流程 SHALL 在未配置高德 Android Key 或未同意高德隐私条款时明确报告不可用。

#### Scenario: 高德 Key 未配置时城市采集不可用
- **WHEN** 应用未配置高德 Android Key
- **THEN** 用户尝试获取城市时提示 Key 未配置，无法完成城市采集