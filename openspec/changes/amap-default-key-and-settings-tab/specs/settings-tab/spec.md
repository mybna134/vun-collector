# Spec Delta

## Purpose

规定 Settings 标签页允许用户在运行时查看与保存 AMAP Android Key，并将运行时保存的 Key 持久化到本地，供 SDK 可用性判定与客户端初始化使用。

## ADDED Requirements

### Requirement: Settings 页展示与编辑 Android Key
系统 SHALL 提供一个 Settings 标签页，显示当前可用的 Android Key 状态，并提供输入框与保存按钮让用户输入并保存新 Key。

#### Scenario: 打开 Settings 页
- **WHEN** 用户选择 Settings 标签页
- **THEN** 页面显示当前可用 Key 的状态及用于输入和保存 Key 的控件

#### Scenario: 保存新 Key
- **WHEN** 用户在输入框中输入非空 Key 并点击保存
- **THEN** 系统将该 Key 持久化到本地，当前可用 Key 状态更新为新 Key

#### Scenario: 保存空 Key
- **WHEN** 用户输入空字符串并点击保存
- **THEN** 系统不覆盖已保存的 Key，并提示 Key 不能为空

### Requirement: 运行时保存的 Key 立即生效
系统 SHALL 在 Settings 页保存 Key 后，立即将该 Key 用于后续的 SDK 可用性判定与客户端初始化，无需重新启动应用。

#### Scenario: 修改 Key 后即时使用
- **WHEN** 用户在 Settings 页保存了新 Key，再次触发依赖 SDK 的位置或城市流程
- **THEN** 系统使用新 Key 初始化 SDK 客户端
