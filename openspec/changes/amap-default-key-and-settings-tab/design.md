# Design

## Context

`BuildConfig.AMAP_ANDROID_KEY` 当前由 `app/build.gradle.kts` 的 `amapAndroidKey` gradle 属性/环境变量决定，缺省为空字符串；未配置时 `AmapLocationSource.unavailableReason` 返回“高德 Android SDK Key 未配置”，所有依赖 SDK 的位置与城市流程不可用。项目已在 `AmapConsent` 中使用 `SharedPreferences` 持久化隐私同意状态，可复用该模式持久化运行时 Key。

## Goals / Non-Goals

**Goals:**
- 构建时预置默认 Key `f594fc9e11f9d07ce81e59e0ea985de7`，无需外部配置即可编译并启用 SDK。
- 新增 Settings 标签页，允许用户在运行时查看、修改并保存 Android Key，保存后立即生效。
- 运行时保存的 Key 优先于构建时 Key，用于 SDK 可用性判定与客户端初始化。

**Non-Goals:**
- 不替换或修改 GeeToken SDK 的内部定位字段；
- 不将高德 Web Key 与 Android Key 混用；
- 不引入网络请求来校验 Key 有效性。

## Decisions

1. **默认 Key 的注入方式。** 在 `app/build.gradle.kts` 将 `amapAndroidKey` 的 `orElse("")` 回退值改为 `f594fc9e11f9d07ce81e59e0ea985de7`，并保留 `providers.environmentVariable("AMAP_ANDROID_KEY")` 与 gradle 属性的优先级，使显式配置可覆盖默认值。备选为只在代码中硬编码默认值，但那样构建产物与 `AndroidManifest.xml` 的 `${amapAndroidKey}` meta-data 将不一致。

2. **运行时 Key 的存储。** 复用 `SharedPreferences`（与 `AmapConsent` 同一模式），新建 `SettingsStore` 读写 `amap_android_key`，Key 可在 Settings 页输入保存，缺省时回退到 `BuildConfig.AMAP_ANDROID_KEY`。

3. **SDK 可用性判定优先级。** `AmapLocationSource.unavailableReason` 的 Key 空检查改为：运行时保存的 Key 若非空则使用它，否则使用构建时 Key；两者均为空时才提示未配置。`newClient` 中的 `setApiKey` 同步使用该可用 Key。

4. **Settings 页集成。** 新增 `settings` 包下的 `SettingsViewModel` 与 `SettingsPage`，在 `MainActivity.kt` 的 `PrimaryScrollableTabRow` 与 `when (selectedTab)` 分支中追加 **Settings** 标签。

## Risks / Trade-offs

- [默认 Key 可能未绑定实际签名证书] → 高德 SDK Key 通常与包名/签名绑定，默认 Key 在真机上可能仍报鉴权失败；此时 Settings 页允许用户填入正确 Key 并立即生效，无需重新编译。
- [运行时 Key 持久化后未清除机制] → 用户若填入错误 Key 无法恢复默认；Settings 页可提供“恢复默认”操作，或由用户重新输入构建时 Key 覆盖。

## Migration Plan

构建时默认 Key 对现有用户无破坏性；新增 Settings 页仅增加标签，不改变现有四个 Tab 的行为。无需数据迁移。

## Open Questions

无。
