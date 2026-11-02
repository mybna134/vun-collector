# Proposal

## Why

当前 Android 应用的 `applicationId` 仍沿用旧模块名称 `com.sportsmonitor.logger`，与产品定位 `Vun Collector` 不一致，需变更为契合项目的正式包名 `com.collector.vun`。此外，逆地理和城市/其他信息采集依赖高德 Web 服务 Key，初次安装或未配置前用户需要手动输入，增加操作成本；预置默认 API Key `3223389267b46eb28d4559ece915670b` 可以在初次使用时开箱即用，同时允许用户手动覆盖保存。

## What Changes

- **BREAKING**: 应用的 `applicationId` 由 `com.sportsmonitor.logger` 变更为 `com.collector.vun`。设备上安装该版本时将作为独立包名，旧版本包名若存在需卸载或独立共存。
- 同步更新 CI 发布工作流（`.github/workflows/release.yml`）与发布文档中对 APK 包名校验的预期值（`com.collector.vun`）。
- 在 `ProbeViewModel` 中增加默认高德 Web 服务 Key 常量 `3223389267b46eb28d4559ece915670b`。
- 当本地 SharedPreferences 未持久化 Key 或当前存储值为空时，默认加载并显示该 API Key，使用户在未自定义 Key 时即可直接执行地理/城市采集；用户手动修改并保存后继续遵从用户自定义值。
- 删除“其他信息”页面（`GeoPage`）中的说明文字与城市展示，页面只保留高德 Key 输入框与操作按钮（获取、导出）。

## Capabilities

### New Capabilities

主规格目录目前为空；以下以 ADDED 形式定义可验收合同：

- `collector-package-identity`: 应用构建及发布的 `applicationId` 确立为 `com.collector.vun`，CI 校验与产物契约一致。
- `default-amap-key`: 提供内置默认高德 Web 服务 Key（`3223389267b46eb28d4559ece915670b`），未存储自定义值时生效，支持用户自定义覆盖。

### Modified Capabilities

无已发布主规格。

## Impact

- 涉及 `app/build.gradle.kts`（`applicationId`）、`.github/workflows/release.yml`、`docs/github-release.md`。
- 涉及 `ProbeViewModel.kt`（默认 Key 常量及初始化回退逻辑）和相关单元测试。
- 涉及 `ProbePages.kt`（`GeoPage` 移除冗余说明文本）。
- 保持已有的代码包结构、Room 数据库、JNI 签名、SharedPreferences 文件名 `geo_city` 及其 Key 键名 `amap_web_key` 不变，确保最小化侵入且兼容现有用户逻辑。
