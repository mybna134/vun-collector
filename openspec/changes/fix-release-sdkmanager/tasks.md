# Tasks

## 1. 修复 Android SDK 工具定位

- [x] 1.1 在 release 工作流中从 `ANDROID_HOME` / `ANDROID_SDK_ROOT` 的 command-line tools 目录定位可执行的 `sdkmanager`，并在缺失时输出 `::error::` 后退出。
- [x] 1.2 使用定位到的绝对路径安装 `platforms;android-36`、`build-tools;36.0.0`、`ndk;29.0.14206865` 和 `cmake;3.22.1`；保留 `chmod +x ./gradlew`。

## 2. 验证

- [x] 2.1 用 YAML/脚本静态检查确认工作流不再直接调用未解析的 `sdkmanager`，且原有依赖版本仍完整。
- [x] 2.2 推送修复后通过 `gh run watch` 验证依赖安装步骤成功，并确认后续失败（若有）来自真实构建或签名配置，而非 SDK 工具找不到。

验证记录：临时 tag `v0.1.1-ci-sdkmanager` 对应运行 `40058122656` 中，`Install Android build dependencies` 成功；后续失败原因为签名密钥无法恢复（`Cannot recover key`）。
