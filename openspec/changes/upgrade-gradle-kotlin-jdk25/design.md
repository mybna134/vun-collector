# Design

## Context

当前工具链：Gradle 8.14.5、AGP 8.13.2、Kotlin 2.1.10、KSP 2.1.10-1.0.30，字节码目标 Java 17。动机见 proposal.md - Why。

截至 2026-09-26 的最新发布版本：Gradle 9.8.0、AGP 9.4.1、Kotlin 2.4.20、KSP 2.3.12。

在项目的临时副本（`/tmp/sm-jdk25`）中，用 JDK 25.0.2 做了以下验证：

| Gradle | AGP | Kotlin | KSP | 结果 |
|---|---|---|---|---|
| 9.8.0 | 8.13.2 | 2.3.21 | 2.3.12 | 失败：AGP 8.x 依赖 `InternalProblems`，该内部 API 已在 Gradle 9.6.0 移除 |
| 9.5.1 | 8.13.2 | 2.3.21 | 2.3.12 | 失败：`kotlinOptions` / `jvmTarget: String` 已弃用，级别为 error |
| 9.5.1 | 8.13.2 | 2.3.21 | 2.3.12 | 迁移到 `compilerOptions` 后，`assembleDebug testDebugUnitTest` 成功 |

`--warning-mode=all` 只剩两条来自 AGP 8.13.2 内部的 Gradle 10 弃用警告（multi-string 依赖写法），均不在本项目的脚本中。

## Goals / Non-Goals

**Goals:**
- 在 JDK 25 上无需任何覆盖配置即可执行 `./gradlew` 的常规任务（`assembleDebug`、`testDebugUnitTest`、`lint`）。
- 继续兼容 JDK 17 / 21 运行 Gradle。
- 改动尽量小，产物（APK 字节码目标、依赖库）不变。

**Non-Goals:**
- 升级到 AGP 9.x，以及随之而来的 Gradle ≥ 9.6。
- 升级 AndroidX / Compose / Room 等库版本，或调整 `compileSdk` / `targetSdk`。
- 修改字节码目标（仍为 Java 17）或引入 Gradle toolchain。

## Decisions

### 1. Gradle 9.5.1 + 保留 AGP 8.13.2，而不是 AGP 9.x + Gradle 9.8.0

- Gradle 9.5.1 已支持在 JDK 25 上运行，是 AGP 8.x 可用的最后一个 Gradle 小版本（9.6.0 起不兼容，Gradle 官方升级指南也给出了"use Gradle 9.5"的建议）。
- AGP 9 属于大版本迁移：内置 Kotlin 支持会取代 `org.jetbrains.kotlin.android` 插件，DSL 也有调整，风险和改动面都明显超出"让 JDK 25 可用"这一目标。
- 备选方案：直接升级到 AGP 9.4.1 + Gradle 9.8.0。长期更好，但应作为单独的变更处理。

### 2. Kotlin 2.3.21，而不是 2.4.x

- 2.3.x 是已验证可行、对 JDK 25 有正式支持的稳定线，而且 2.3.21 是该线的最新补丁版。
- 2.4.x 较新，与 AGP 8.13 的组合未经验证，这次不追。
- Compose 编译器插件版本必须与 Kotlin 保持一致，因此同步为 2.3.21。

### 3. KSP 2.3.12

KSP 2.3.x 起版本号不再绑定 Kotlin 版本，2.3.12 是当前最新版，已在验证中与 Room 2.8.4 配合通过编译。

### 4. `kotlinOptions` 迁移到顶层 `kotlin { compilerOptions { ... } }`

这是 Kotlin 官方推荐的替代写法。`jvmTarget` 仍为 `JVM_17`，与 `compileOptions` 中的 Java 17 保持一致。

### 5. 移除 `~/.gradle/gradle.properties` 中的 `org.gradle.java.home`

该文件是此前为临时绕过问题而创建的，只有这一行。升级后删除整个文件，才能真正验证 JDK 25 可以直接构建，也避免以后误以为项目仍依赖 JDK 21。

## Risks / Trade-offs

- [AGP 8.13.2 在 Gradle 10 下会失效（已有弃用警告）] → 后续需要单独提一个 AGP 9 迁移变更，这里只记录，不处理。
- [Android Studio 使用自带或单独配置的 Gradle JDK，与命令行不一致] → 只影响 IDE 同步。IDE 的 Gradle JDK 设为 17/21/25 均可。
- [首次构建需要下载新的 Gradle 发行版和插件] → 一次性成本，已在验证中确认可正常下载。
- [仪器测试（`connectedAndroidTest`）没有设备，无法在本机验证] → Kotlin 字节码目标没有变化，运行时行为不受影响。有设备时再补测。

## Migration Plan

1. 修改 wrapper、插件版本和 `app/build.gradle.kts`，并更新 README。
2. 删除 `~/.gradle/gradle.properties`，停止旧的守护进程（`./gradlew --stop`）。
3. 在 JDK 25 上执行 `./gradlew assembleDebug testDebugUnitTest lint`，然后用 JDK 21 抽查一次。
4. 回滚：恢复上述四个文件，并重新写入 `org.gradle.java.home=/usr/lib/jvm/java-21-openjdk` 即可。
