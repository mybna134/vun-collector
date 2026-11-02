# Tasks

## 1. 包名更新与 CI 校验

- [x] 1.1 将 `app/build.gradle.kts` 中的 `defaultConfig.applicationId` 更新为 `"com.collector.vun"`，同步更新 `docs/github-release.md` 中的说明，执行 `./gradlew assembleDebug` 并通过构建产物元数据校验 APK 包名为 `com.collector.vun`。
- [x] 1.2 将 `.github/workflows/release.yml` 发布工作流中的预期包名从 `'name': 'com.sportsmonitor.logger'` 更新为 `'name': 'com.collector.vun'`。

## 2. 默认高德 Web 服务 Key 与空值回退

- [x] 2.1 在 `ProbeViewModel` 中定义常量 `DEFAULT_AMAP_WEB_KEY = "3223389267b46eb28d4559ece915670b"`，并在读取 SharedPreferences 为空或空白字符串时自动回退为该默认 Key，保持用户自定义覆盖保存能力。
- [x] 2.2 在 `app/src/test` 目录下增加或扩展单元测试，验证无存储初始值时提供默认 Key、存储空串时回退默认 Key、以及用户保存自定义 Key 时正确生效并持久化；运行 `./gradlew :app:testDebugUnitTest` 确认测试全部通过。

## 3. “其他信息”页面精简

- [x] 3.1 在 `app/src/main/java/com/sportsmonitor/logger/probe/ProbePages.kt` 的 `GeoPage` 中删除说明文字与城市结果展示，只保留高德 Key 输入框与操作按钮（获取、导出）。
