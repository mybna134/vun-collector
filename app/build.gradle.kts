import org.jetbrains.kotlin.gradle.dsl.JvmTarget
import org.gradle.api.GradleException
import java.util.Properties

// CI 使用整组环境变量；没有环境配置时才读取本地、未跟踪的属性文件。
val signingEnvironment = mapOf(
    "storeFile" to providers.environmentVariable("RELEASE_STORE_FILE").orNull,
    "storePassword" to providers.environmentVariable("RELEASE_STORE_PASSWORD").orNull,
    "keyAlias" to providers.environmentVariable("RELEASE_KEY_ALIAS").orNull,
    "keyPassword" to providers.environmentVariable("RELEASE_KEY_PASSWORD").orNull,
)
val useSigningEnvironment = signingEnvironment.values.any { it != null }
val releaseSigningPropertiesFile = rootProject.file("keystore.properties")
val releaseSigningProperties = Properties()
var releaseSigningPropertiesError = false
if (!useSigningEnvironment && releaseSigningPropertiesFile.isFile) {
    try {
        releaseSigningPropertiesFile.inputStream().use(releaseSigningProperties::load)
    } catch (_: Exception) {
        releaseSigningPropertiesError = true
    }
}
val hasReleaseSigning = useSigningEnvironment || releaseSigningPropertiesFile.exists()
fun signingValue(name: String): String? =
    (if (useSigningEnvironment) signingEnvironment[name] else releaseSigningProperties.getProperty(name))
        ?.takeIf { it.isNotEmpty() }
val releaseStoreFileValue = signingValue("storeFile")?.trim()?.takeIf(String::isNotEmpty)
val releaseStorePassword = signingValue("storePassword")
val releaseKeyAlias = signingValue("keyAlias")?.trim()?.takeIf(String::isNotEmpty)
val releaseKeyPassword = signingValue("keyPassword")
val releaseStoreFile = releaseStoreFileValue?.let(rootProject::file)
val releaseSigningProblems = buildList {
    if (hasReleaseSigning) {
        if (releaseSigningPropertiesError) add("keystore.properties could not be read")
        if (!useSigningEnvironment && !releaseSigningPropertiesFile.isFile) add("keystore.properties is not a file")
        if (releaseStoreFileValue == null) add("storeFile is missing")
        if (releaseStorePassword == null) add("storePassword is missing")
        if (releaseKeyAlias == null) add("keyAlias is missing")
        if (releaseKeyPassword == null) add("keyPassword is missing")
        if (releaseStoreFileValue != null && releaseStoreFile?.isFile != true) add("keystore file is unavailable")
    }
}

// 不传参数时保持本地默认值；显式非法参数必须报错，避免悄悄发布错误版本。
val requestedVersionName = providers.gradleProperty("versionName").orElse("1.0").get()
require(requestedVersionName.isNotBlank()) { "versionName must not be blank" }
val requestedVersionCode = providers.gradleProperty("versionCode").orElse("1").get().let {
    it.toIntOrNull()?.takeIf { code -> code in 1..2100000000 }
        ?: throw GradleException("versionCode must be an integer between 1 and 2100000000")
}

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.compose")
    id("com.google.devtools.ksp")
}

android {
    namespace = "com.sportsmonitor.logger"
    compileSdk = 36
    ndkVersion = "29.0.14206865"
    externalNativeBuild {
        cmake {
            path = file("src/main/cpp/CMakeLists.txt")
            version = "3.22.1"
        }
    }

    defaultConfig {
        applicationId = "com.sportsmonitor.logger"
        minSdk = 29
        targetSdk = 35
        versionCode = requestedVersionCode
        versionName = requestedVersionName

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            if (hasReleaseSigning && releaseSigningProblems.isEmpty()) {
                signingConfig = signingConfigs.create("release") {
                    storeFile = releaseStoreFile
                    storePassword = releaseStorePassword
                    keyAlias = releaseKeyAlias
                    keyPassword = releaseKeyPassword
                }
            }
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    buildFeatures {
        compose = true
    }
    packaging {
        jniLibs.useLegacyPackaging = true
    }
}

val validateReleaseSigning = tasks.register("validateReleaseSigning") {
    group = "verification"
    description = "Validates explicitly configured release signing; no configuration permits unsigned local builds."
    doLast {
        if (releaseSigningProblems.isNotEmpty()) {
            throw GradleException(
                "Release signing configuration is incomplete or invalid. Supply all four RELEASE_* environment variables " +
                    "or a complete local keystore.properties file. " +
                    "Problems: ${releaseSigningProblems.joinToString()}",
            )
        }
    }
}

tasks.configureEach {
    if (name == "packageRelease") {
        dependsOn(validateReleaseSigning)
    }
}

kotlin {
    compilerOptions {
        jvmTarget.set(JvmTarget.JVM_17)
    }
}

dependencies {
    implementation(platform("androidx.compose:compose-bom:2026.06.01"))
    implementation("androidx.activity:activity-compose:1.13.0")
    implementation("androidx.compose.ui:ui")
    implementation("androidx.compose.foundation:foundation")
    implementation("androidx.compose.material3:material3:1.4.0")
    implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.9.4")
    implementation("androidx.lifecycle:lifecycle-runtime-compose:2.9.4")
    implementation("androidx.core:core-ktx:1.16.0")
    implementation("androidx.room:room-runtime:2.8.4")
    implementation("androidx.room:room-ktx:2.8.4")
    ksp("androidx.room:room-compiler:2.8.4")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.10.2")

    testImplementation("junit:junit:4.13.2")
    androidTestImplementation("androidx.test.ext:junit:1.2.1")
    androidTestImplementation("androidx.test:runner:1.6.2")
    androidTestImplementation("androidx.test:core:1.6.1")
    androidTestImplementation("androidx.room:room-testing:2.8.4")
}
