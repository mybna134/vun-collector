# Vun Collector 的 GeeToken 字段分析

分析日期：2026-11-10。目标是本仓库 `com.collector.vun` 实际加载的 SDK，版本 `GGD 2.6.1`，不是旧 Probe 应用的运行结果。

样本固定：

| 文件 | SHA-256 |
| --- | --- |
| `app/src/main/jniLibs/arm64-v8a/libgtcore.so` | `9ac5ce30b7ac1de251528505d86d01007651716c2324409b5e0ceab8a38612e4` |
| `app/src/main/assets/geetest/classes4.dex` | `c7cda8df7882436c3827e542ecc7ed84ee55054aab7de2fb2c83d3f1ce3264fa` |

本报告覆盖日志中的字段，包括空列表和空字符串。**仍未完全解释的编码/分支明确标为“待定”，不能据此宣称所有字段均已定案。** 上一版外部分析的缩写展开及“全部实锤”统计不可直接沿用。

## 证据怎么复核

- 真机：用户使用 KFM/rustFrida `spawn com.collector.vun`，在应用中点击生成，提供 `[VUN_TOKEN]`、`[VUN_PLAIN]`、`[VUN_EXPORT]`。脚本见 [vun_capture.js](../../tool/geetest-analysis/vun_capture.js)。它观察宿主边界并返回原结果，不替换 SDK 输出。
- 静态：IDA 9.3 idalib + Hex-Rays，打开与上述 SO 对应的数据库副本；[native](evidence/native/) 保存伪代码和带 RVA 的反汇编。[ranges](evidence/ranges/) 按地址范围导出，避免旧数据库的大函数/非连续 chunk 边界误导。`runtime:` 注释来自 unidbg 构造函数解密后的字符串，不是磁盘原文。
- 动态：unidbg 0.9.10-SNAPSHOT + Unicorn2，执行原始 SO 的构造函数、`JNI_OnLoad` 和 `getData`。Android API 由 [GeeCoreUnidbg.java](../../tool/geetest-analysis/GeeCoreUnidbg.java) 建模，**动态结果是原始 native 代码在模型输入下的输出，不是真机环境或服务端接受性证明**。
- 单变量实验：ADB 设置、debuggable flag、亮度、MMS UA、attestation 文本；另外跑完整配置和电话权限模型。8 轮均得到可解密 Token，断言通过。见 [experiments.json](evidence/experiments.json) 和 `unidbg-*.log`。
- [field-writes.json](evidence/field-writes.json) 给出 JSON 字段写入 helper、调用地址和返回地址。ARM64 `return_rva - 4` 为 `BL` 地址。同名键必须结合调用点和父对象区分。
- [runtime-symbols.json](evidence/runtime-symbols.json) 把旧 IDA 符号映射到运行时解密字符串。[sha256.json](evidence/sha256.json) 记录证据文件摘要。Java 来自相同 SHA-256 DEX 的既有 JADX 输出，native 语义以反汇编和运行结果交叉核对。

复现离线实验（依赖本机已安装的 JDK 17、unidbg Maven artifacts、PyCryptodome）：

```bash
python3 tool/geetest-analysis/run_experiments.py /tmp/vun-geetest-experiments
```

## 当前应用的实际调用链

`ProbeViewModel.generate()` 尝试预定位，然后在单线程 SDK dispatcher 上调用 `GeeSdk.generate()`；SDK 用隔离的 `InMemoryDexClassLoader` 加载 `classes4.dex`。配置为固定 AppID、`devInfo=true`、`alInfo=true`、`level=1`，调用 `Core.getData(Context, GeeGuardConfiguration)`。

native 注册入口为 `0x53c10`（带配置）和 `0x53c84`（无配置），共同进入 `0x51a4c`；`0x50ac4` 封装输出。[注册代码](evidence/native/53c10.asm)、[主调度](evidence/native/51a4c.c)、[Java 声明](evidence/java/Core.java)。本次真机调用的是带配置入口。

生成后 `GeeDecrypt` 解密，`ProbeJson.sanitizeGeePlain()` 解析并过滤，再保存到进程内 session 供导出。预定位位置没有作为坐标参数传给 `Core.getData()`。

## 本轮纠正的错误解释

| 字段 | 结论 | 关键代码或实验 |
| --- | --- | --- |
| `dev.hea` | 电池健康状态；本轮 2 | `getIntExtra("health")` → `BL 0xd1330` 写 `hea`；完整模型日志 |
| `dev.btv` | 电池电压原值，mV；本轮 4413 | `getIntExtra("voltage")` → `BL 0xd138c`；不是温度 |
| `dev.bs` | 电池充放电状态；2 是充电，3 是放电 | `getIntExtra("status")` → `BL 0xd1278` |
| `dev.bt` | `SystemClock.elapsedRealtime()`，开机后经过的毫秒 | JNI 调用 → `BL 0xd15f4` |
| `dev.s` | `DisplayMetrics.scaledDensity` | 完整模型注入 2.75，输出 2.75；`BL 0xd1644` |
| `dev.ism` | native `/proc/<pid>/cmdline` 与 `Context.getPackageName()` 的一致性位 | [1fa30](evidence/native/1fa30.c)、[95f0](evidence/native/95f0.c)；不是 SIM 标志 |
| `test.iod` | ADB 设置是否大于 0 | [23090](evidence/native/23090.c)，字符串 `adb_enabled`；0→1 差分 |
| `test.idv` | `ApplicationInfo.flags & 2` 是否非零，即 debuggable | [23140](evidence/native/23140.c)，flags 0→2 时字段 0→1 |
| `test.iam` | 旧 API 的 mock-location 设置检测 | [22f38](evidence/native/22f38.c)：API≤22 才检查 `mock_location`；其他版本返回 0 |
| `test.idc` | `Debug.isDebuggerConnected()` | [22d60](evidence/native/22d60.c)，不是 mock-location 设置 |
| `test.iss` | 当前库的该入口直接返回 0 | [22f30](evidence/native/22f30.c)，不能解释成“扫描未命中” |
| `test.sb` | `Settings.System.screen_brightness` 的原始整数 | 注入 73→输出 73；不是 SDK 版本或百分比换算 |
| `test.mua` | `TelephonyManager.getMmsUserAgent()` | [282b8](evidence/native/282b8.c)，不同 sentinel 字符串逐字回显 |
| `test.onv` | VPN NetworkInfo 的连接状态 | `getNetworkInfo(17).isConnected()`；17 对应 VPN，不是普通联网状态 |
| `test.gas` | 已启用无障碍服务的包名列表 | [26cec](evidence/native/26cec.c)：`getEnabledAccessibilityServiceList` → `serviceInfo.packageName` |
| `test.nnp` | `prctl(PR_GET_NO_NEW_PRIVS=39,0,0,0,0)` 返回值及版本/错误分支 | [2a8d4](evidence/native/2a8d4.c)、[反汇编](evidence/native/2a8d4.asm)；不是网络或传感器计数 |
| `test.sh` | 自身 SO 的可读可执行映射 SHA-256 的后 32 个十六进制字符 | [af828](evidence/native/af828.asm)、[afbcc](evidence/native/afbcc.c)；重算摘要后半段与输出相等 |
| `test.ka.rct` | 证书链校验后的根公钥识别结果；可为 -1/0/1/2 | [Utils.c](evidence/java/Utils.java)、[m](evidence/java/m.java)、[根证书判定](evidence/java/certificate-root-excerpt.txt)；不能简单叫“attestation 是否成功” |
| `test.ka.st` | native 对 attestation 调用/解析路径的状态字符串；正常四段输入时为 `"0"` | [22488](evidence/native/22488.c)；不是 Google 根标志 |
| `test.sat.*` | 文件 `stat` 时间戳及 inode，`m/a` 为 mtime/atime | [1e08c](evidence/native/1e08c.asm)、[9cf0](evidence/native/9cf0.c)、[9f74](evidence/native/9f74.c)；不是 TEE 认证时间 |
| `test.build.rbdu/rbd/rbh` | 系统构建时间与构建主机 | `ro.build.date.utc/date/host`；不是最近开机时间和 boot hash |
| `test.ir` | 多分支环境检测返回码；当前真机为 3 | [210f4](evidence/native/210f4.c)；不是仅有 0/1 的布尔值 |

`sh` 的输入由 `/proc/self/maps` 中匹配 `libgtcore.so` 的映射确定。本次 unidbg 匹配范围从模块 RVA 0 开始，长度 983040。SHA-256 为 `866755af4769a90a992c85ce7680c011120a0021d7dc66a2d50b275d72b8a495`，输出为 `120a0021d7dc66a2d50b275d72b8a495`。这是内存区域摘要，不是整个磁盘 ELF 文件的 SHA-256；注入环境下的值不能直接当成干净真机基线。

## 完整字段目录

下表以原始明文路径为准。证据简称：`FULL` = [完整配置执行日志](evidence/unidbg-full.log)；`BASE` = [基线 JNI/native trace](evidence/unidbg-base.log)；`WRITE` = [字段写入地址](evidence/field-writes.json)。没有数据的列表只说明本轮列表为空，不证明相关软件、设备状态或风险不存在。字段名不等于官方完整名称。

### 顶层

| 字段 | 语义 | 证据 |
| --- | --- | --- |
| `data` | 采集对象，含 dev/test/gid | `51a4c`、WRITE |
| `appId` | 配置 AppID | `GeeSdk`、`GeeGuardConfiguration.getAppId()`、FULL |
| `libVer` | SDK 版本 `2.6.1` | `51a4c`、FULL |
| `sign` | 配置 content/signature 对应的输出位；本轮为空 | `GeeGuardConfiguration.getContent()`、`51a4c`、`Utils` 之外的 native `0xa7fc`；不能声称所有调用均为空 |
| `lib` | 库族标识 `GGD` | `51a4c`、FULL |
| `ct` | 客户端类型常量字符串 `1` | `51a4c`、WRITE；Android 库 |
| `crt` | native 报告类型常量字符串 `5` | `51a4c`；未据此推导其他取值 |
| `level` | 配置采集等级 | `getLevel()`、FULL |
| `ts` | 生成时刻，epoch 毫秒 | `System.currentTimeMillis()`、FULL |
| `et` | native 采集计时结果，毫秒 | `51a4c.asm` 的计时差及写入；真机本轮 462 |

### `data.dev`

| 字段 | 语义 | 证据 |
| --- | --- | --- |
| `app` | URL 编码的应用 label | `getApplicationLabel`、`URLEncoder.encode`、FULL |
| `ven` | 宿主包名 | `getPackageName`、FULL |
| `ps` | 首个包签名证书字节的 SHA-1 小写 hex | [Utils.getSignature](evidence/java/Utils.java)；FULL |
| `prp` | 包资源 APK 路径 | `getPackageResourcePath()`、FULL |
| `pla` | 厂商品牌属性；具体 getter 见 FULL | Build 属性及 native 写入 |
| `mod` | 型号 | Build.MODEL/属性、FULL |
| `osv` | 系统 release 版本 | Build.VERSION.RELEASE、FULL |
| `rel` | 应用 versionName | PackageInfo、FULL |
| `bui` | 应用 versionCode 的字符串形式 | PackageInfo、FULL |
| `br` | 电量：level/scale 对应百分比 | battery Intent、FULL |
| `bs` | BatteryManager 状态原值 | battery `status`、FULL |
| `plu` | 电源插入类型/标志原值 | battery `plugged`、FULL |
| `hea` | 电池健康状态原值 | battery `health`、FULL |
| `btv` | 电池电压 mV | battery `voltage`、FULL |
| `cou` | Locale 国家码 | `Locale.getCountry()`、FULL |
| `lang` | Locale 语言码 | `Locale.getLanguage()`、FULL |
| `w` | 实际显示像素宽 | `Display.getRealMetrics` / `widthPixels`、FULL |
| `h` | 实际显示像素高 | `heightPixels`、FULL |
| `bt` | 开机后经过的毫秒，包含休眠 | `SystemClock.elapsedRealtime()`、FULL |
| `bri` | 屏幕亮度设置原值 | `screen_brightness`、FULL |
| `s` | scaledDensity | `DisplayMetrics.scaledDensity`、FULL |
| `op` | SIM 运营商数字码 | `TelephonyManager.getSimOperator()`、FULL |
| `car` | SIM 运营商名称 | `getSimOperatorName()`、FULL；不是第四页 carrier 映射 |
| `btc` | PowerProfile 报告的电池容量，mAh | `PowerProfile.getBatteryCapacity()`、FULL |
| `rad` | 当前网络类型名称 | NetworkInfo 类型名称路径、FULL |
| `mem` | `/proc/meminfo` 的 MemTotal 数字文本，kB | native 内存采集调用、FULL |
| `tsz` | 存储总字节数 | statfs 路径，`sub_4AE70`、FULL；不是 GB 字符串 |
| `asz` | 可用存储字节数 | `sub_4AF54`、FULL |
| `os` | 平台字符串 `android` | native 常量、FULL |
| `loc` | SDK 自身定位结果对象 | native `0xdd31c` 路径、FULL |
| `loc.st` | 定位结果状态；本轮为 0，成功样本为 1 | 真机原始明文；FULL 中权限拒绝路径；完整状态枚举待定 |
| `loc.se` | 定位失败/不可用路径中的状态文本；本轮 `"0"` | native `0xdd658` 写入；`"0"` 的具体错误枚举待定，不能读作坐标 |
| `loc.loc` | 成功路径的位置对象；本轮没有 | 既有相同 SDK 成功样本与 Location API 路径；不应人工补造 |
| `loc.loc.moc` | mock location 标记 | Location mock getter 路径；成功路径字段 |
| `loc.loc.alt` | 海拔，m | Location altitude getter 路径 |
| `loc.loc.hAcc` | 水平精度，m | Location accuracy getter 路径 |
| `loc.loc.vAcc` | 垂直精度，m | `getVerticalAccuracyMeters` 路径 |
| `loc.loc.lat` | 纬度字符串 | Location latitude getter 路径 |
| `loc.loc.lon` | 经度字符串 | Location longitude getter 路径 |
| `loc.loc.ts` | 格式化的定位时间 | Location time 路径；不是顶层生成时间 |
| `ism` | native 进程 cmdline 与宿主包名相等位 | `1fa30` → `9848/95f0/43720` |
| `ip` | 按网络接口名称组织的 IPv4/IPv6 地址 | native `getifaddrs` 路径；真机原始对象允许出现重复名称 |
| `sim` | `getSimState()!=SIM_STATE_ABSENT(1)` 的二值结果；异常/不可取值也可能返回 1 | [4abcc](evidence/native/4abcc.c)，不是完整 SIM_STATE 枚举 |
| `bssid` | Wi-Fi BSSID 原值 | WifiInfo、FULL |
| `ssid` | URL 编码的 Wi-Fi SSID | WifiInfo + URLEncoder、FULL |
| `rssi` | Wi-Fi 接收信号强度，dBm | WifiInfo.getRssi、FULL |
| `gpa` | 查询 `com.android.vending` 的包信息得到的可用性位 | [4b03c](evidence/native/4b03c.c)；不是“GMS 全部正常”证明 |
| `hdt` | Harmony 设备类型属性文本 | `ro.build.ohos.devicetype` 路径；本轮空值 |

### `data.test`

| 字段 | 语义/可确认的生产路径 | 证据与限制 |
| --- | --- | --- |
| `ir` | su 文件、挂载、Magisk/KernelSU、SELinux 等多路检测的状态码 | [210f4](evidence/native/210f4.c)；本轮 3，完整返回码枚举待定 |
| `edp` | 上述检测附带的短标签列表，例如本轮 `mo` | `42030` 给 `210f4` 传入数组，再挂到 edp；不能展开成“detected paths” |
| `ka` | Android Key Attestation 调用与解析结果 | `Utils.c` → `22488` |
| `ka.bl` | RootOfTrust.deviceLocked 字符串 | [p](evidence/java/p.java)、单变量实验 |
| `ka.vb` | VerifiedBootState：0 Verified、1 Self-signed、2 Unverified、3 Failed | `p`、单变量实验 |
| `ka.rct` | 证书链根公钥识别结果，包含异常值 -1 | `j/m/Utils` 与根校验片段；本轮 -1 不表示 bl/vb 一定无效 |
| `ka.csn` | 证书链 serialNumber 的小写 hex 列表文本 | `j.java`、单变量实验；本轮 `"null"` 是字符串 |
| `ka.st` | native attestation 调用/解析状态 | `22488`；完整失败值表待定 |
| `iam` | API≤22 的 mock_location 设置检查 | `22f38`；高版本固定 0 |
| `iod` | ADB 设置开启位 | `23090`、ADB 差分 |
| `idv` | 宿主应用 debuggable 标志 | `23140`、flags 差分 |
| `ads` | `init.svc.adbd` 系统属性文本 | `42030`、FULL |
| `dtp` | 进程跟踪/TracerPid 探针结果 | `42030` → native `0x9878`；详细阈值以子函数为准 |
| `idc` | Java debugger connected | `22d60` |
| `idc2` | native ART/JDWP 调试通道探针结果的一位 | [48fa4](evidence/native/48fa4.c)；不是 idc 字符串前缀复用 |
| `xpd` | Xposed 相关检测标量 | native 写入 `0x54688`；具体命中分支待定 |
| `sub` | Substrate 相关检测标量 | 写入 `0x546a0`；具体命中分支待定 |
| `slp` | SELinux permissive 相关检测标量 | 写入 `0x546bc`；完整返回码待定 |
| `smp` | native 模块/映射扫描结果列表 | 写入 `0x546d0`；列表标签和逐项条件待定，不沿用“suspicious mount paths”猜测 |
| `sh` | 自身 SO 映射 SHA-256 的后半段 hex | `af828/afbcc`、独立摘要比较通过 |
| `nhdp` | native 符号/Hook 检查生成的列表 | 写入 `0xa6e24`，前段检查包括 `fgets`；逐项标记语义待定 |
| `fi` | 同一 native Hook 检查路径生成的对象 | 写入 `0xa6e38`；本轮为空，不能直接展开为 Frida info |
| `ghdp` | 另一组 native Hook/模块检查列表 | 写入 `0xaebf8`；逐项触发条件待定 |
| `rtp` | 85 项可疑应用包名表的路径可访问性命中，最多收集少量项 | [298b4](evidence/native/298b4.c)，表 `0xf1068`；含 Xposed/Substrate/虚拟定位应用；不是已确认 Root 余留 |
| `rrt` | 两类 native 扫描产生的短标签列表 | [297a4](evidence/native/297a4.c) → `28f5c/29550`；`fr` 等标签枚举待定 |
| `rrs` | 系统服务扫描的命中条目 | [290b8](evidence/native/290b8.c)；命令匹配 minicap/minitouch/stfservice/stfagent 等 |
| `rmp` | 虚拟设备共享挂载点等匹配列表 | [292f0](evidence/native/292f0.c)：读取 `/proc/self/mountpoints`；命令失败不能等同无虚拟化 |
| `pm` | 目标进程 `/proc/<pid>/maps` 行数的文本列表 | [28e9c](evidence/native/28e9c.c)；不是 package mount |
| `sp` | `/proc/<pid>/maps` 与相关文件描述符的检测标签 | [2a34c](evidence/native/2a34c.c) → [29f1c](evidence/native/29f1c.c)；具体标签枚举待定 |
| `ro` | docker 挂载计数与 `/system/addon.d` 等环境标签 | [2a4d8](evidence/native/2a4d8.c)：`m/ms/mi/li`；本轮 li，不能简单称为 Root 命中 |
| `sfp` | 108 项文件路径表的存在性命中 | [29ac4](evidence/native/29ac4.c)，表 `0xf1310`；含 qemu/vbox/nox/虚拟定位等路径 |
| `iss` | 本版本固定为 0 的接口 | `22f30` |
| `py` | HTTP 系统代理 host/port 对象 | native `0x477fc`、BASE；本轮空对象 |
| `onv` | VPN 的 NetworkInfo.isConnected 位 | `47a40`、BASE 参数 17 |
| `gas` | 已启用无障碍服务包名数组 | `26cec`、BASE |
| `lauf` | HOME intent 解析到的应用 firstInstallTime，格式化成本地时间文本 | [2344c](evidence/native/2344c.c)、[24744](evidence/native/24744.c)；不是当前 SDK 安装时间 |
| `lauv` | 上述应用 versionName | `24744` |
| `laun` | 上述应用 label | `24744` |
| `lau` | 上述应用包名 | `2344c/42030`；本轮解析到设置，并非报告手动替换 |
| `pat` | 宿主 filesDir 的绝对路径 | `getFilesDir()`、BASE |
| `sen` | 选取的传感器 vendor/name 文本列表 | native sensor 路径；不是实时运动传感器样本 |
| `sou` | `/proc/asound/card0/id` 的声卡标识，可能走缓存 | `1f464`、BASE |
| `suv` | `su -v` 命令输出，可能走缓存 | `1e2c8`、BASE；空值不能证明没有 su |
| `mua` | MMS User-Agent | `282b8`、差分 |
| `brl` | 平台 Build/系统属性对象 | `1dad8`，下一表逐项列出 |
| `sb` | 屏幕亮度设置原值 | `42030` → `EE00(screen_brightness)`、差分 |
| `build` | 选取的 Android 系统属性对象 | `28bec`，下一表逐项列出 |
| `nnp` | no_new_privs 查询结果及不支持/错误值 | `2a8d4`；-1 不等于“网络失败” |
| `bid` | `/proc/sys/kernel/random/boot_id` 输出 | native 读取路径；本轮 UUID 文本 |
| `sdi` | eMMC `/sys/block/mmcblk0/device/cid` 文本，可能走缓存 | native 硬件路径；本轮空 |
| `sat` | 选取的文件 stat 时间/inode 对象 | `1e08c` → `9cf0/9f74` |
| `sat.b` | `/proc/sys/kernel/random/boot_id` 的 mtime ns、inode、`m` | `1e08c:0x1e0c8–0x1e0dc`；不是直接读取开机时间 API |
| `sat.s` | `/storage/emulated/` 的 atime ns、inode、`a` | `1e08c`、`9f74` |
| `sat.sam` | `/sdcard/Android/` 的 mtime ns、inode、`m` | `1e08c`、`9cf0` |
| `sat.saa` | 同目录的 atime ns、inode、`a` | `1e08c`、`9f74` |
| `fit` | 宿主 firstInstallTime，毫秒除以 1000 后的字符串 | `1ff84`、BASE |
| `lut` | 宿主 lastUpdateTime，同上 | `1ff84`、BASE |

`sat` 在其他环境还可能有 `c`、`ma` 等键，取决于路径 stat 是否成功。本轮存在的四项已逐一列出。不能把它们解释成证书 attestation；inode 也不是“计数器”。

### `data.test.brl` 与 `build`

这两组是属性键到输出键的映射，证据为 [1dad8](evidence/native/1dad8.asm)、[28bec](evidence/ranges/28bec-28e9c.asm) 和运行时字符串表。

| 字段 | 数据来源 |
| --- | --- |
| `brl.man` | `ro.product.manufacturer` |
| `brl.pla` | `Build.BRAND` |
| `brl.mod` | `Build.MODEL` |
| `brl.osv` | `Build.VERSION.RELEASE` |
| `brl.api` | `ro.build.version.sdk` |
| `brl.pro` | `ro.product.name` |
| `brl.abl` | `ro.product.cpu.abilist` |
| `brl.cai` | 此 native ABI 常量 `arm64-v8a` |
| `brl.soc` | `ro.board.platform` |
| `brl.fp` | `ro.build.fingerprint` |
| `brl.cn` | `/sys/devices/system/cpu/present` |
| `build.gss` | `gsm.sim.state`，不是 GMS 状态 |
| `build.gvb` | `gsm.version.baseband` |
| `build.gvri` | `gsm.version.ril-impl` |
| `build.nh` | `net.hostname` |
| `build.rbdu` | `ro.build.date.utc` |
| `build.rbd` | `ro.build.date` |
| `build.rbdi` | `ro.build.display.id` |
| `build.rbh` | `ro.build.host` |
| `build.rbi` | `ro.build.id` |
| `build.rpb` | `ro.product.board` |
| `build.gnt` | `gsm.network.type` |
| `build.rcgc` | `ro.com.google.clientidbase` |
| `build.gon` | `gsm.operator.numeric` |
| `build.rh` | `ro.hardware` |
| `build.rmvr` | `ro.mediatek.version.release` |
| `build.rhbd` | `ro.huawei.build.date` |
| `build.rchvh` | `ro.config.hw_vassistant_honor` |

### `data.gid`

核心生产函数为 [d3278](evidence/native/d3278.c)。这里的值可能来自先前缓存；本次生成不意味着每个设备标识都重新读取。

| 字段 | 语义/来源 | 证据与限制 |
| --- | --- | --- |
| `m` | `gt_m` 缓存的 WLAN MAC；获取路径解析 `ip link` 的 wlan0/link/ether | [204f4](evidence/native/204f4.c)、`d3278`；本轮空 |
| `m_m` | `ro.product.model` | `d3278` |
| `d` | `gt_gid`/外部存储多个隐藏文件保存的设备标识 | [cded8](evidence/native/cded8.c)；SDK 自己的持久标识路径，不是型号或 Android ID |
| `i` | 选取的 IMEI 文本 | [d4754](evidence/native/d4754.c) → [169a0](evidence/native/169a0.c) 的 getImei/getDeviceId；另有 vivo 系统属性 fallback |
| `a_i` | Settings.Secure android_id | [d490c](evidence/native/d490c.c)、BASE |
| `d_u` | `gt_d_u` 缓存的兜底标识；首次生成可见 UUID 与毫秒时间拼接 | `d3278`、BASE；不是系统 OAID |
| `3.0` | `gt_gid3` 缓存的 `G02-时间-fp-尾部串` 形式 GeeID | `d3278`、`d1888`；尾部串算法尚未完全说明 |
| `sign` | `gt_sign` 缓存的 GeeID 伴随值 | `d3278/d1888`；具体派生公式待定，不能据名称称作数字签名 |
| `fp` | SDK 选源后产生/缓存的 32 字节摘要 hex | [d4250](evidence/native/d4250.c)、`gt_fp2`；与顶层 sign 不同 |
| `fp_k` | `gt_fp_k2` 的指纹输入来源选择码 | `d4250/d3278`；本轮 `3`，完整优先级和所有取值仍待核对 |
| `ver` | GeeID 组件版本 `3.0.0` | `d3278` |
| `ts` | `gt_ts2` 缓存的 GeeID 时间，epoch 秒 | `d3278`、BASE；不是每次 Token 的生成时间 |
| `name` | 组件名 `geeid` | `d3278` |
| `oaid` | `OaidHelper.getOaid(Context)` 返回值 | FULL、[OaidHelper 调用位置](evidence/field-writes.json)；是否有效取决于 helper/系统 |
| `uid` | 从 `gt_ggwid_obj` 关联缓存/生成路径取出的标识 | `d3278`；完整业务含义及生成公式待定，本轮空 |
| `mid` | NDK MediaDrm `deviceUniqueId` 经编码后的标识 | [d5554](evidence/native/d5554.c)：加载 libmediandk、AMediaDrm API、属性名 deviceUniqueId |
| `vmd` | `ro.boot.vbmeta.digest` 系统属性 | `d3278` 最后两次调用；不是任意保留空槽 |

## 本轮真机样本的具体含义与导出差异

1. 宿主证据一致：`ven=com.collector.vun`、`app=Vun+Collector`、`rel=1.0`、`bui=1`；本轮采集耗时 462 ms。
2. SDK 定位对象为 `{"st":0,"se":"0"}`，没有经纬度。宿主预定位成功与 SDK 自身定位成功是两条不同路径；当前 `optionalGeeLocation`/`locationWarning` 允许没有 SDK 位置时继续导出。
3. `idv=1` 与当前 debug 构建相符；`iod=1` 是读取到开启的 ADB 设置；不能把它们解释成“双开设备”或“设备变体”。
4. `ir=3` 且 `edp=["mo"]` 是该探针实际返回的状态和材料。KFM 本身改变进程环境，单份注入样本不能用于断言干净环境下的相同值。
5. `onv=0` 是该 VPN 查询路径的结果，不表示 Wi-Fi 没联网。`rad=WIFI` 与该值可以同时成立。
6. 原始 `ip` 对象中存在重复的 `wlan0/ipv6` 与 `rmnet_data1/ipv6` 键。`ProbeJson` 使用 JSONObject 解析，重复名称覆盖后只剩最后一个地址；这些地址在解析阶段丢失，不是 runtime 字段过滤规则删掉的。
7. runtime 过滤移除了顶层 `appId/sign/ts` 与 `data.dev.app/ven`。嵌套 `gid.sign/gid.ts/gid.uid` 仍在；这与当前 `sanitizeGeePlain()` 路径限定规则一致。
8. `[VUN_EXPORT]` 是生成时形成的可导出 JSON。该 hook **没有观察到系统文件选择器写入完成**，不能把这一行当作实际文件已经导出成功的证明。

## 仍需收敛的部分

字段目录已经覆盖这轮原始明文的全部静态键，并补充成功定位分支。完整字段名和生产位置，不等于所有枚举及算法都已还原。尚未完成的主要项是：`ir/edp` 的全部返回码/标签、`ka.st` 失败枚举、`loc.st/se` 状态枚举、`xpd/sub/slp/smp/nhdp/fi/ghdp/rrt/sp` 的逐项命中条件，以及 GeeID `sign/uid` 与 `G02` 尾部的派生公式和 `fp_k` 完整优先级。这些结论不能用空值、缩写猜测或相邻字符串代替代码证明。

这次没有修改应用生产代码或导出合同，也没有执行服务器重放、风险规避或远端验证。真机点击与采集由用户执行；后续真机操作继续只提供命令。
