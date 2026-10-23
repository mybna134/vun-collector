# Proposal

## Why

仓库目前没有 GitHub Actions，release 签名仅依赖本地 keystore.properties，版本号硬编码。需要将版本 tag、签名 APK 构建和 GitHub Release 发布串联，同时保留无 CI 凭据时的本地构建能力。

## What Changes

- 新增 `.github/workflows/release.yml`，仅 `push.tags: ['v*']` 触发，权限仅 `contents: write`。
- tag 去掉 v 为 versionName；采用 `major*10000 + minor*100 + patch` 为 versionCode，minor/patch 限于 0–99，code 必须为正且不超过 Android 上限。预发布后缀不影响 code；同一基础版本的 beta/rc/正式版 code 相同，此限制写入使用说明。
- 通过 `-PversionName` / `-PversionCode` 注入版本，本地不传时仍为 1.0 / 1。
- CI 从四个 Secrets 还原 RUNNER_TEMP 下的 keystore，Gradle 环境变量优先、本地 keystore.properties 次之；本地无配置允许 unsigned release，部分/无效显式配置明确失败。CI 必须完整配置并验证 APK 签名，不能发布未签名产物。
- 产物命名 `Vun-Collector-v<版本号>.apk`；用 GitHub CLI 创建对应 Release、自动 release notes、上传唯一 APK，含预发布后缀标记 prerelease。
- 补充 `*.jks`、`*.keystore` 忽略规则，编写发布配置、三平台 Base64 命令、Secrets 和 tag 示例及排查文档。
- 用户另已授权用 gh 创建并 push 仓库：当前尚无提交和远端，准备发布时只纳入项目源码/构建所需文件及文档；不得提交真实 keystore、签名属性、构建目录或本地代理配置。未指定可见性时采用 private，仓库名称默认 vun-collector，归属 gh 当前用户；不创建或推送版本 tag。

## Capabilities

### New Capabilities

主规格为空，使用 ADDED 建立合同：
- `tag-apk-release`：tag 版本映射、CI 构建、附件和 Release 发布。
- `android-release-signing`：CI 环境签名、本地配置回退和密钥保护，沿用已有变更能力路径。

### Modified Capabilities

无已发布主规格。本次显式替代旧 `configure-android-release-signing` 中「缺少本地签名配置必须阻止 release」的约定，以本次用户要求的本地 unsigned 回退为准。

## Impact

计划仅增加 workflow、发布说明文档并修改 app/build.gradle.kts 与 .gitignore；不升级 Gradle、AGP、Kotlin 或 Android 依赖。工具链保持 Gradle 9.5.1 / AGP 8.13.2，CI 使用 JDK 17；安装 SDK 36、NDK 29.0.14206865 和 CMake 3.22.1。没有 flavor 或 ABI 拆分配置，构建一个含既有原生库的 release APK。

当前没有 README.md 或 .github 目录，不覆盖已有文件。GitHub CLI 已登录 mybna134 且官方 releases/latest API 查询成功：actions/checkout v7.0.1、actions/setup-java v6.1.0、gradle/actions v6.4.0，计划分别使用 v7 / v6 / v6。actionlint 未安装；可用 YAML 检查替代，并如实记录本地 Gradle/socket 限制及远端执行未验证情况。
