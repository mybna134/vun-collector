# Spec Delta

## Purpose

规定高德 Android SDK Key 在构建时的默认值，使应用无需外部配置即可编译并启用 SDK，并定义构建时 Key 与运行时保存 Key 的优先级关系。

## ADDED Requirements

### Requirement: 构建时预置默认 Android Key
系统 SHALL 在构建时将 `AMAP_ANDROID_KEY` 默认值设为 `f594fc9e11f9d07ce81e59e0ea985de7`，使无 Key 时应用仍可构建且依赖 SDK 的位置与城市流程可用。

#### Scenario: 未显式提供 Key 时使用默认 Key
- **WHEN** 未通过环境变量或 gradle 属性显式设置 `AMAP_ANDROID_KEY`
- **THEN** 构建产物中 `BuildConfig.AMAP_ANDROID_KEY` 的值为 `f594fc9e11f9d07ce81e59e0ea985de7`

#### Scenario: 显式配置覆盖默认 Key
- **WHEN** 通过环境变量 `AMAP_ANDROID_KEY` 或 gradle 属性 `amapAndroidKey` 显式设置了其他值
- **THEN** 构建产物中 `BuildConfig.AMAP_ANDROID_KEY` 使用显式设置的值，而非默认值

### Requirement: 运行时 Key 优先于构建时 Key
系统 SHALL 在判定 SDK 可用性与初始化 SDK 客户端时，优先使用用户在 Settings 页运行时保存的 Key，其次回退到构建时 Key。

#### Scenario: 运行时保存了 Key
- **WHEN** 用户在 Settings 页保存了非空 Key
- **THEN** SDK 可用性判定与客户端初始化使用运行时保存的 Key

#### Scenario: 未运行时保存 Key
- **WHEN** 用户未在 Settings 页保存 Key
- **THEN** SDK 可用性判定与客户端初始化回退到构建时 Key
