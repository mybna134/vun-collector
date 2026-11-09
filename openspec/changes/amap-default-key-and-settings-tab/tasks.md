# Tasks

## 1. 构建时预置默认 Key

- [x] 1.1 在 `app/build.gradle.kts` 中将 `amapAndroidKey` 的缺省值改为 `f594fc9e11f9d07ce81e59e0ea985de7`，保留环境变量与 gradle 属性覆盖；运行 `:app:assembleDebug` 验证构建成功且 `BuildConfig.AMAP_ANDROID_KEY` 为默认值

## 2. 运行时 Key 持久化

- [x] 2.1 新增 `settings/SettingsStore.kt`，基于 `SharedPreferences` 实现运行时 AMAP Key 的读取与保存；验证可读写并持久化
- [x] 2.2 新增 `settings/SettingsViewModel.kt`，提供当前可用 Key（优先运行时值，其次 `BuildConfig.AMAP_ANDROID_KEY`）与保存操作；验证优先级逻辑

## 3. Settings 页面与集成

- [x] 3.1 新增 `settings/SettingsPage.kt` Compose 界面，显示当前 Key 状态并提供输入框与保存按钮；验证保存后界面更新
- [x] 3.2 在 `AmapLocationSource.unavailableReason` 与客户端初始化中使用运行时 Key（优先于构建时 Key）；验证两者均为空时仍提示未配置
- [x] 3.3 在 `MainActivity.kt` Tab 列表与分支中增加 **Settings** 标签页；验证切换后显示 Settings 页面

## 4. 集成验证

- [x] 4.1 运行 `:app:assembleDebug`，确认所有模块编译通过
- [x] 4.2 安装调试 APK 到设备，验证 Settings 页可保存 Key 且保存后 SDK 可用性状态随之更新