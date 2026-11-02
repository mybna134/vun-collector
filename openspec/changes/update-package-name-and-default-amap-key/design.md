# Design

## Context

见 proposal.md。当前项目为 Android Kotlin/Compose 应用，模块为 `app`。
- `app/build.gradle.kts` 中 `defaultConfig.applicationId` 设定为 `com.sportsmonitor.logger`。
- `.github/workflows/release.yml` 在发布时执行 Python 脚本检验构建生成的 APK 包名是否为 `'name': 'com.sportsmonitor.logger'`。
- `ProbeViewModel.kt` 中 `preferences.getString(AMAP_WEB_KEY, "") ?: ""` 在本地尚未配置时读取到空串，未填 Key 时触发 `message("请先填写高德 Web 服务 Key")` 并阻止查询。

## Goals / Non-Goals

**Goals:**

- 将构建 APK 产物的 `applicationId` 统一修改为 `com.collector.vun`。
- 更新 CI 发布流程和文档中的包名校验预期值为 `com.collector.vun`。
- 在 `ProbeViewModel` 中预置默认高德 Web 服务 Key 常量 `3223389267b46eb28d4559ece915670b`，并在未配置或配置为空时自动回退使用该默认 Key。
- 精简“其他信息”（`GeoPage`）页面 UI，删除说明文字与城市结果显示，仅保留 Key 输入框和操作按钮。
- 添加并更新单元测试，覆盖默认 Key 初始化、空值回退以及自定义 Key 覆盖逻辑。

**Non-Goals:**

- 不对 Kotlin/Java 源代码目录结构（`com.sportsmonitor.logger.*`）以及 AGP 的 `namespace` 进行重构。保持 `namespace = "com.sportsmonitor.logger"` 可避免大规模破坏 Room 实体/数据库历史、JNI 原生导出符号（如 `Java_com_sportsmonitor_logger_recording_NativeAltitude_accept`）和现有内部引用。
- 不更改本地偏好文件名（`geo_city`）与存储键（`amap_web_key`）。

## Decisions

### 1. 仅变更 applicationId，保持内部 namespace 稳定

Android 系统的设备安装标识、权限隔离、组件管理和应用市场包名均由 `applicationId` 决定。将 `applicationId` 设为 `com.collector.vun`，即可完全满足系统包名变更要求。

若同时变更 AGP `namespace` 和 Java 包路径，将直接导致：
1. 原生 C++ JNI 符号名 `Java_com_sportsmonitor_logger_recording_NativeAltitude_accept` 必须重构；
2. Room 数据库旧版本迁移和表元数据失效；
3. 数十个文件的大规模类重命名与 import 替换，带来不必要的回归风险。
因此决定仅修改 `applicationId`。

### 2. 空值防御回退（Default Fallback）

在 `ProbeViewModel` 伴生对象中声明 `DEFAULT_AMAP_WEB_KEY = "3223389267b46eb28d4559ece915670b"`。
读取逻辑：
```kotlin
val stored = preferences.getString(AMAP_WEB_KEY, null)
val initialKey = if (stored.isNullOrBlank()) DEFAULT_AMAP_WEB_KEY else stored
```
并在 `updateAmapKey(value)` 中，当用户保存自定义值时，按用户输入保存；若用户主动清空，可允许再次回退或保留空值。

### 3. 同步 CI 校验与文档

更新 `.github/workflows/release.yml` 中：
```python
expected = {'name': 'com.collector.vun', 'versionName': os.environ['VERSION_NAME'], ...}
```
以及更新 `docs/github-release.md` 中的包名说明。

### 4. 精简 GeoPage 页面布局

在 `ProbePages.kt` 的 `GeoPage` 中，移除说明文字 `Text("用当前 GPS 做高德逆地理...")` 以及城市结果展示 `Text("城市：$city")`。页面仅保留高德 Key 输入框 `OutlinedTextField` 以及操作按钮（获取、导出），使界面极致精简。

## Risks / Trade-offs

- [设备端旧版本与新版本作为独立应用共存] → Android 将 `com.collector.vun` 视作全新应用，与原有的 `com.sportsmonitor.logger` 互不覆盖。若需替换，用户可手动卸载旧版本；安装新版本不受旧版本签名冲突影响。
- [内置公共 Key 配额耗尽] → 界面仍完整保留 Key 修改入口，用户随时可换成自己的高德 Web 服务 Key。

## Migration Plan

1. 更新 `app/build.gradle.kts`、`.github/workflows/release.yml`、`docs/github-release.md`。
2. 更新 `ProbeViewModel.kt` 实现默认 Key 及回退逻辑。
3. 更新 `ProbePages.kt` 移除 `GeoPage` 说明文字与城市展示。
4. 补充单元测试，验证无配置时的默认 Key 与自定义覆盖。
5. 运行 `./gradlew testDebugUnitTest` 与 `./gradlew assembleDebug` 验证构建与包名。
