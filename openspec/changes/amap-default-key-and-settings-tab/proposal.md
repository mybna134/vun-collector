# Proposal

## Why

高德 Android SDK Key 默认为空，未配置时 `AmapLocationSource` 会提示“高德 Android SDK Key 未配置”，所有依赖 SDK 的位置与城市流程均不可用。用户希望构建即可用，无需外部配置即可启用 SDK，并且希望在运行时能查看、修改并保存 Android Key，而不必重新编译。

## What Changes

- `app/build.gradle.kts`：将 `amapAndroidKey` 默认值设为 `f594fc9e11f9d07ce81e59e0ea985de7`，保留环境变量与 gradle 属性可覆盖。
- 新增 Settings 标签页（Settings Page）：显示当前可用 Key、提供输入框与保存按钮，将 Key 持久化到 SharedPreferences。
- SDK 可用性判定优先使用运行时保存的 Key，其次回退到构建时 Key，使 Settings 页修改的 Key立即生效。
- 其余采集页（运动采集、GeeToken、DeviceInfo、其他信息）的布局与行为不变。

## Capabilities

### New Capabilities

- `amap-default-key`: 在构建时预置默认高德 Android SDK Key，使应用无需外部配置即可编译并启用 SDK；构建时的 Key 可被环境变量或 gradle 属性覆盖。
- `settings-tab`: 增加 Settings 标签页，允许用户在运行时查看与保存 AMAP Android Key，运行时保存的 Key 优先于构建时 Key，用于 SDK 可用性判定与客户端初始化。

### Modified Capabilities

无。

## Impact

- `app/build.gradle.kts`：`amapAndroidKey` 默认值变更。
- `app/src/main/AndroidManifest.xml`：`com.amap.api.v2.apikey` meta-data 保持 `${amapAndroidKey}`，随构建时 Key 一起写入。
- 新增 `app/src/main/java/com/sportsmonitor/logger/settings/`：`SettingsViewModel`、`SettingsPage`。
- `MainActivity.kt`：Tab 列表增加 **Settings**，并新增对应分支；SDK 可用性判定纳入运行时 Key。
