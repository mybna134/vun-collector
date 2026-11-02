# Spec Delta

## Purpose

Provides a built-in default Amap Web Service Key for location reverse-geocoding, so users can perform lookups immediately without manual configuration while retaining custom override capability.

## ADDED Requirements

### Requirement: Default Amap Web Key on unconfigured launch
系统 SHALL 内置默认高德 Web 服务 Key 常量 `3223389267b46eb28d4559ece915670b`。当本地存储未保存 Key 或已保存的值为空白字符串时，系统 SHALL 自动使用该默认 Key 作为当前生效 Key 并展示在界面输入框中。

#### Scenario: Initial launch with empty storage
- **WHEN** 应用首次启动且本地偏好中未保存任何高德 Key
- **THEN** 输入框显示默认 Key `3223389267b46eb28d4559ece915670b`，执行逆地理城市查询时自动使用该默认 Key

#### Scenario: Existing blank string in storage
- **WHEN** 本地偏好中存储的值为空或仅含空白字符
- **THEN** 系统自动回退使用默认 Key `3223389267b46eb28d4559ece915670b`

### Requirement: User override of Amap Web Key
系统 SHALL 允许用户在界面中修改高德 Web 服务 Key。当用户输入新的有效 Key 时，系统 SHALL 将该 Key 持久化保存至本地存储，并在后续查询中优先使用用户保存的 Key。

#### Scenario: User enters custom key
- **WHEN** 用户在输入框中填入自定义的 API Key 并触发更新
- **THEN** 本地偏好持久化该 Key，后续逆地理查询使用该自定义 Key

### Requirement: Simplified GeoPage UI
系统 SHALL 在“其他信息”（`GeoPage`）页面中移除关于逆地理与写入逻辑的文字说明以及城市结果显示，仅保留高德 Web 服务 Key 输入框与操作按钮。

#### Scenario: Display GeoPage with only input field and buttons
- **WHEN** 用户进入“其他信息”页面
- **THEN** 页面只展示高德 Web 服务 Key 输入框和操作按钮（获取、导出），不显示文字说明及城市结果
