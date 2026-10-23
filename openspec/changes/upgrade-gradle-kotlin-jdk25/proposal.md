# Proposal

## Why

本机默认 JDK 为 25（`JAVA_HOME=/usr/lib/jdk-25.0.2`），而项目的 Gradle 8.14.5 与 Kotlin 2.1.10 不支持在 JDK 25 上运行，`./gradlew` 直接失败，报错信息只有 `25.0.2`。目前只能靠 `~/.gradle/gradle.properties` 中的 `org.gradle.java.home` 强制使用 JDK 21 绕过。需要升级构建工具链，使项目能在 JDK 25 上直接构建。

## What Changes

- Gradle wrapper：8.14.5 → 9.5.1（Gradle 9.x 中 AGP 8.x 可用的最高版本；9.6.0 起移除了 AGP 8.x 依赖的内部 API）。
- Kotlin Gradle 插件及 Compose 编译器插件：2.1.10 → 2.3.21。
- KSP：2.1.10-1.0.30 → 2.3.12（KSP2 版本号已与 Kotlin 版本解耦）。
- AGP 保持 8.13.2 不变。
- `app/build.gradle.kts` 中已弃用的 `android { kotlinOptions { jvmTarget = "17" } }` 迁移为 `kotlin { compilerOptions { jvmTarget.set(JvmTarget.JVM_17) } }`；Kotlin 2.3 中旧写法已是编译错误。
- 移除临时绕过配置：删除 `~/.gradle/gradle.properties` 中的 `org.gradle.java.home` 一行（机器本地配置，不在仓库内）。
- README 构建说明中的 JDK 要求更新为 JDK 17–25。
- 应用的字节码目标（Java 17）、依赖库版本、运行时行为均不变。

## Capabilities

### New Capabilities

无。

### Modified Capabilities

无。本变更仅涉及构建工具链，不改变任何应用行为需求，因此设置 `skip_specs: true`。

## Impact

- 受影响文件：`gradle/wrapper/gradle-wrapper.properties`、`build.gradle.kts`、`app/build.gradle.kts`、`README.md`。
- 开发环境：可用 JDK 17、21 或 25 运行 Gradle；首次构建会下载 Gradle 9.5.1 及新版插件。
- 暂不升级到 AGP 9.x / Gradle 9.6+（见 design.md）。
