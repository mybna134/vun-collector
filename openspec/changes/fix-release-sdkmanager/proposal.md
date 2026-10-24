# Proposal

## Why

GitHub Actions 运行 `Build and publish signed APK` 时，在 `Install Android build dependencies` 步骤执行 `sdkmanager` 失败并退出 127：GitHub-hosted runner 已提供 Android SDK，但 `sdkmanager` 所在的 command-line tools 目录没有加入当前 shell 的 `PATH`。因此发布 tag 无法进入 Gradle 构建阶段。

## Intended behavior

发布工作流应从 runner 的 Android SDK 根目录可靠定位 `sdkmanager`，在找不到工具时输出明确错误并停止；找到后安装项目声明的 Android 36、Build Tools 36.0.0、NDK 29.0.14206865 和 CMake 3.22.1，并继续执行现有签名构建与发布流程。

## Specification changes

无应用功能规格变更。本变更只调整 GitHub Actions 的构建环境初始化，因此跳过规格文件更新。

## Impact

- 受影响文件：`.github/workflows/release.yml`。
- CI 行为：SDK 工具安装步骤不再依赖 runner 是否预先将 `sdkmanager` 放入 PATH。
- 应用代码、Gradle 版本、签名流程和发布产物命名不变。
