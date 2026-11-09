# Spec Delta

## Purpose

运动记录（传感器与位置记录）继续使用高德 Android 定位 SDK 连续定位，保留 GCJ-02 坐标原值、accuracy 精度半径等 SDK 特有字段，不回退到 Android 原生定位。

## ADDED Requirements

### Requirement: 运动记录仅用高德 SDK 连续定位
系统 SHALL 在“传感器与位置记录”开始记录时，启动高德 SDK 连续定位客户端，仅接收 SDK 回调的实时、有效、标示为 GCJ-02 的位置点。

#### Scenario: SDK 返回有效 GCJ-02 位置
- **WHEN** 高德 SDK 在记录期间返回新鲜、有效且标示为 GCJ-02 的位置
- **THEN** 系统使用该位置原值（经纬度、精度、可选海拔、locationType）写入记录，标记来源为 amap_android_sdk、坐标系为 GCJ-02

#### Scenario: SDK 无有效位置
- **WHEN** SDK 未配置 Key、授权被拒、发生错误、超时或返回非 GCJ-02/无效位置
- **THEN** 记录流程显示具体原因，不生成替代位置点，不回退到 Android GPS

### Requirement: 记录位置点包含 accuracy 字段
每个运动记录位置点 SHALL 包含高德 SDK 返回的水平精度半径（accuracy，单位米），导出 JSON 时保留该字段。

#### Scenario: 导出包含 accuracy
- **WHEN** 用户导出运动记录
- **THEN** 每个位置点的 JSON 包含 accuracy 字段（数值来自 SDK getAccuracy()）