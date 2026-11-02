# Spec Delta

## Purpose

Define the Android application ID as `com.collector.vun`, ensuring runtime installation, device package registration, and release build artifacts adhere to this identifier.

## ADDED Requirements

### Requirement: Application package identity
系统 SHALL 将 Android 应用的 `applicationId` 配置为 `com.collector.vun`。构建输出的 APK 及 CI 发布工作流中的包名校验 SHALL 均以 `com.collector.vun` 作为唯一应用包名标识。

#### Scenario: Build APK output package name
- **WHEN** 执行 `./gradlew assembleDebug` 或 `./gradlew assembleRelease`
- **THEN** 构建生成的 APK 包名（applicationId）为 `com.collector.vun`

#### Scenario: CI package verification
- **WHEN** CI 执行发布包名与版本校验脚本
- **THEN** 校验工具确认 APK 的 `package.name` 等于 `com.collector.vun`
