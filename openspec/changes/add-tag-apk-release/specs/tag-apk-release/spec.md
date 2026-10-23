# Spec Delta

## Purpose

为当前 Android 应用提供以版本 tag 为入口的自动发行流程，确定性映射应用版本，构建经验证的签名 APK，并发布带自动说明及附件的 GitHub Release。

## ADDED Requirements

### Requirement: Tag-only signed APK publication
工作流 SHALL 仅由 `v*` tag push 触发，只声明 `contents: write` 权限，使用保持现有工具版本的构建环境，输出 `Vun-Collector-v<版本号>.apk`。仅签名校验及版本校验成功的 APK SHALL 上传到对应 tag 的 GitHub Release，说明 SHALL 自动生成；含预发布后缀的版本 SHALL 标记 prerelease。普通分支 push SHALL 不触发发布。

#### Scenario: Publish stable version
- **WHEN** 推送 v1.2.3 且 Secrets 与构建有效
- **THEN** 构建已签名 APK，创建 v1.2.3 Release，自动生成说明并附加 Vun-Collector-v1.2.3.apk

#### Scenario: Publish prerelease
- **WHEN** 推送 v1.2.3-beta.1
- **THEN** 创建 prerelease，APK 的 versionName 为 1.2.3-beta.1

#### Scenario: Failed build or signature verification
- **WHEN** 构建、版本或签名验证失败
- **THEN** 日志明确标记失败阶段且不发布附件，临时 keystore 仍被清理

### Requirement: Deterministic version parameters
系统 SHALL 去掉 tag 的首个 v 得到 versionName，并对 major.minor.patch 计算 `major*10000 + minor*100 + patch`，忽略预发布后缀；minor/patch SHALL 在 0–99，计算结果 SHALL 在 1–2100000000。非法 tag SHALL 在构建前失败；Gradle SHALL 优先读取传入的 versionName/versionCode 属性，未传时分别回退 1.0 / 1，非法属性 SHALL 明确报错。

#### Scenario: Version mapping
- **WHEN** 构建 v1.2.3 或 v1.2.3-rc.1
- **THEN** versionCode 为 10203，versionName 分别为 1.2.3 和 1.2.3-rc.1

#### Scenario: Local default and invalid input
- **WHEN** 本地未传版本属性或显式传入非法 versionCode
- **THEN** 前者保持默认 1.0 / 1，后者明确失败而非静默回退

### Requirement: Release setup documentation
文档 SHALL 说明 macOS、Linux、Windows 的 Base64 命令、四个 Secret 的配置入口、tag/push 示例及至少三个排查项，并披露同一基础版本的预发布与正式版 versionCode 相同、不保证后者通过应用商店版本递增校验。

#### Scenario: Maintainer configures release
- **WHEN** 维护者按文档配置现有签名密钥及 Secrets 并推送版本 tag
- **THEN** 无需将密钥提交仓库即可触发流程；本任务自身不创建或推送 tag
