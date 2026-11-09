# Spec Delta

## Purpose

GeeToken 生成前的预定位使用 Android 原生定位 API（GPS/网络融合），返回 WGS84 坐标，完全不依赖高德 Android SDK，简化鉴权配置与依赖。

## ADDED Requirements

### Requirement: GPS 位置用于 GeeToken 预定位
系统 SHALL 在用户发起 GeeToken 生成前，使用 Android FusedLocationProviderClient 获取一次新鲜、有效的 GPS 位置（WGS84），并作为预定位等待完成的条件。

#### Scenario: 成功获取 GPS 位置
- **WHEN** 用户触发 GeeToken 生成且具备精确定位权限
- **THEN** 系统在超时前返回有效的 WGS84 经纬度、精度、时间戳

#### Scenario: 定位超时或失败
- **WHEN** GPS/网络定位在指定超时内未返回有效位置
- **THEN** 系统报告具体失败原因（超时、权限不足、定位服务关闭），GeeToken 生成流程不继续

### Requirement: 预定位不依赖高德 SDK 的 Key、隐私授权与初始化
GeeToken 预定位流程 SHALL 在未配置高德 Android Key、未同意高德隐私条款、或高德 SDK 初始化失败时仍能正常工作。

#### Scenario: 高德 Key 未配置时 GeeToken 预定位仍可用
- **WHEN** 应用未配置高德 Android Key
- **THEN** 用户仍可成功完成 GeeToken 生成