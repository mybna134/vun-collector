# GeeTest Probe 运行依赖

本项目迁移自 `/home/mybna134/Projects/reverse/geetoken-probe`。原工具直接内嵌恢复的 DEX 与原生库；本项目保留相同字节作为运行依赖，不使用反编译 Java 替代 SDK，也不依赖原目录进行构建。

| 项目内文件 | 来源 | SHA-256 |
| --- | --- | --- |
| `app/src/main/assets/geetest/classes4.dex` | 原 build.sh 引用的 `analysis/recovered_dex/classes4.dex` | `c7cda8df7882436c3827e542ecc7ed84ee55054aab7de2fb2c83d3f1ce3264fa` |
| `app/src/main/jniLibs/arm64-v8a/libgtcore.so` | geetoken-probe/jniLibs/arm64-v8a/libgtcore.so | `9ac5ce30b7ac1de251528505d86d01007651716c2324409b5e0ceab8a38612e4` |

DEX 为 9,540,164 字节，gtcore 为 1,015,320 字节。DEX 懒加载到隔离的 InMemoryDexClassLoader，父加载器为平台加载器，native 查找路径为当前应用的 nativeLibraryDir。三个参数的 InMemoryDexClassLoader 构造函数自 API 29 可用，符合本项目 minSdk。

DEX 保留完整原始内容，可能含 GeeTest 外的额外类；隔离加载防止这些类覆盖当前宿主的 AndroidX/Kotlin 依赖。AGP 按正常流程打包并签名 APK；原生库启用 legacy packaging，安装后解压到 nativeLibraryDir，不修改已签名 APK。

GeeToken 使用原 Core 的两个 getData 入口。配置固定为源 appId `mhs0n2abroy5ayzs5adtslzzsk1cya6h`、devInfo=true、alInfo=true、level=1。SDK 当前只有 arm64 原生库：其他进程架构显示不可生成，DeviceInfo 和运动记录功能仍可使用。

原生库 ELF LOAD 段对齐为 0x1000（4 KB）。已在 Mi 10 / Android 16 的 arm64 进程验证加载和两种生成；16 KB 页设备未经验证，系统兼容模式是否允许加载取决于设备，不能保证支持。不应仅改 APK 压缩/对齐就宣称原生库支持 16 KB 页。

SDK 数据反映当前宿主包名、签名、权限和系统环境。DeviceInfo 的 appVersion、安装/更新时间及 Android ID 来自当前应用，DeviceId 是当前沙箱内一次生成并持久化的 MD5 兜底标识，不是 MSA OAID SDK 返回值。旧 Probe 的历史与 DeviceId 不会自动转移。

DeviceCollector 保留源字段和辅助 API（包括登录后 tokenSign 计算），root 外部命令每项最多等待 2 秒。Token 解密保留源密钥和信封算法，并添加长度和填充边界检查；格式化不会改写 JSON 字符串内的逗号、括号或引号。完整 Token/报告的 GeeLive、DeviceProbe 日志仅在 debug 构建输出。

验证命令：

```sh
./gradlew :app:testDebugUnitTest :app:assembleDebug :app:lintDebug
./gradlew :app:connectedDebugAndroidTest
./gradlew :app:assembleRelease
```

Android 集成测试使用真机/模拟器的实际 ABI；真实 Token 测试在非 arm64 上跳过，设备报告与 UI 测试继续运行。可选权限拒绝测试应在新安装的测试应用中运行，不能在同一 instrumentation 进程内撤销自己的运行时权限，否则 Android 会终止测试进程。
