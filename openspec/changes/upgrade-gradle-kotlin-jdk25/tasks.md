# Tasks

## 1. 升级构建工具链

- [x] 1.1 将 `gradle/wrapper/gradle-wrapper.properties` 的 `distributionUrl` 改为 `gradle-9.5.1-bin.zip`；以 `./gradlew --version` 显示 Gradle 9.5.1 验证。
- [x] 1.2 在根 `build.gradle.kts` 中将 `org.jetbrains.kotlin.android`、`org.jetbrains.kotlin.plugin.compose` 升级为 2.3.21，`com.google.devtools.ksp` 升级为 2.3.12，AGP 保持 8.13.2；以 `grep` 确认四个插件版本验证。
- [x] 1.3 在 `app/build.gradle.kts` 中删除 `android { kotlinOptions { ... } }`，新增顶层 `kotlin { compilerOptions { jvmTarget.set(JvmTarget.JVM_17) } }`；以构建脚本编译无弃用错误验证。
- [x] 1.4 将 `README.md` 构建说明中的 "JDK 17" 更新为 "JDK 17–25"；以阅读 README 确认说明与实际支持范围一致验证。

## 2. 移除临时绕过并验证

- [x] 2.1 删除 `~/.gradle/gradle.properties`（仅含临时的 `org.gradle.java.home` 一行），并执行 `./gradlew --stop`；以该文件不存在、`./gradlew --version` 显示 Launcher JVM 为 25.0.2 验证。
- [x] 2.2 在 JDK 25 上执行 `./gradlew assembleDebug testDebugUnitTest lint`；以 BUILD SUCCESSFUL 且生成 `app/build/outputs/apk/debug/app-debug.apk` 验证。
- [x] 2.3 用 `JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew assembleDebug` 抽查 JDK 21 兼容性；以 BUILD SUCCESSFUL 验证。
