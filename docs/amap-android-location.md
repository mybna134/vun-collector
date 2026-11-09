# 高德 Android 定位接入

本应用的安装包名为 `com.collector.vun`。位置、城市、省和区由高德 Android 定位 SDK 提供；新位置结果保留 SDK 返回的 GCJ-02 坐标，不做坐标转换，也不调用 Android 定位 API 或高德 Web API 补值。旧运动记录来自 Android GPS，导出时标记为 WGS84。旧 Web 逆地理的 `radiusMeters` 字段已从新城市导出中移除。

运动传感器、NMEA/GGA、DeviceInfo 和 SIM 运营商字段仍由 Android API 独立采集。GeeToken 的加密数据仍由 GeeToken SDK 生成；宿主只在调用前等待一次有效高德定位，不填充 GeeToken 内部字段。
新位置的主海拔字段直接保存高德 SDK 返回值，界面不标高度基准；同一固定点的 NMEA/GGA 衍生字段可单独保存，不覆盖主海拔。

## 配置 Android Key

在高德控制台创建 **Android 平台 Key**，绑定安装包名 `com.collector.vun` 和所用签名证书的 SHA1。调试与发布证书可能不同，应分别核对。构建时可通过 `AMAP_ANDROID_KEY` 环境变量或 `-PamapAndroidKey=...` 提供 Key；Gradle 属性优先。不要把 Key 写入仓库文件。现有高德 Web 服务 Key 不用于此 SDK。

未配置 Android Key 时 APK 仍可构建，但位置、城市和 GeeToken 的预定位流程会提示 SDK Key 未配置；传感器和设备字段仍可采集。应用首次使用高德定位前会展示 SDK 数据处理说明及可打开的[高德开放平台隐私权政策](https://lbs.amap.com/pages/privacy/)链接，用户同意后才创建 SDK 客户端。

## 签名核对

运行 `ANDROID_HOME=<Android SDK 路径> ./gradlew :app:signingReport`，按实际安装的构建类型读取 `SHA1`。发布构建只有在配置了本项目的 release 签名证书后才有对应的发布 SHA1；未配置时不能用调试 SHA1 代替。也可用 `keytool -list -v -keystore <证书路径> -alias <别名>` 核对。最终 APK 包名可用 Android SDK 的 `aapt dump badging <apk>` 核对。

## 验收

有 Key 和可连接高德服务的设备后，分别检查 GCJ-02 实时定位、SDK 逆地理城市、隐私拒绝、权限拒绝、位置中断、锁屏连续记录、旧 WGS84 记录迁移和新 JSON 的 `source`/`coordsys`。联机仪器测试需显式传入 `-Pandroid.testInstrumentationRunnerArguments.amapLiveTest=true`；普通设备测试会跳过该项。SDK 返回非 GCJ-02 或预期字段缺失时，不自动转换或补值，先确认处理方案。

2026-11-08 本机验证：无 Key 的构建、单元测试及 Pixel_8 模拟器设备测试通过；带 Key 的 APK 构建和隐私拒绝测试通过。显式启用联机 SDK 测试后，模拟器返回高德错误码 4（网络连接异常，`Location timeout#0402#pm100011`），未取得定位和城市字段。因此 GCJ-02 实时结果、逆地理及后台持续定位仍需在可连接高德服务的设备上验收。
