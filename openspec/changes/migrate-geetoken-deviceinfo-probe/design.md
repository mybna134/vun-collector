# Design

## Context

当前应用采用 Kotlin、Compose Material3、ViewModel/StateFlow、Room 和前台 RecordingService，minSdk=29、targetSdk=35；GNSS 已有 CMake JNI，release 不混淆。MainActivity 用 record/list/detail 字符串导航，未设置 Tab。动机见 proposal.md。

源工具是 Java Activity 与 XML UI，功能逻辑位于 MainActivity、DeviceCollector、GeeDecrypt。build.sh 将 analysis/recovered_dex/classes4.dex（9,540,164 字节）直接作为第二 DEX 打包，同时加入 arm64-v8a/libgtcore.so。源码中 Core 的静态初始化调用 System.loadLibrary("gtcore")，两个 getData 入口均为 native。GeeGuardConfiguration.Builder 的准确类名和配置 setter 已确认。

主 specs 尚为空；现有完成变更仍保留运动数据和海拔、v2 导出、签名约定，迁移保持这些契约。

## Goals / Non-Goals

**Goals:** 保持源采集算法和文件兼容，以独立页面与状态管理集成；项目内保存全部运行依赖，实现脱离 reverse 工作目录后的自包含构建。

**Non-Goals:** 不更换包名/签名，不重新实现 GeeTest native 算法，不添加源 UI 没有的账号登录/网络提交功能，不自动读取另一包的私有数据，不伪造旧宿主版本、签名、标识或采集值。

## Decisions

### 1. Navigation and lifecycle

顶层使用可滚动 Material3 TabRow，运动 Tab 保留原 record/list/detail 子导航。选中 Tab 和子导航用 rememberSaveable；独立 ProbeViewModel 作用域覆盖整个 Activity，通过 StateFlow 分别暴露 GeeToken/DeviceInfo 状态，不因 Composable 移出而取消任务。运动服务和数据库沿用原实现。

选择 Compose 页面重建源 UI，而非嵌入旧 Activity/XML，便于共享导航、剪贴板和导出流程。采集仅在按钮操作后发生，重组和页面重建不触发副作用。

### 2. Original SDK isolation and packaging

将原始 DEX 复制到项目 assets/geetest/classes4.dex，原生库复制到 src/main/jniLibs/arm64-v8a/libgtcore.so，记录来源及 SHA-256。保留完整 DEX，减少裁剪遗漏 JNI 反射类的风险；不将 jadx 反编译输出重新编译为替代 SDK。

SDK 适配器懒加载单例 InMemoryDexClassLoader，读取内置 DEX 的 ByteBuffer，配置 applicationInfo.nativeLibraryDir 作为 native 查找路径。使用显式原类名反射构建配置；ClassLoader 保持到进程结束，避免原生库重复加载到不同 loader。Android SDK 本地 android.jar 已确认具有 ByteBuffer[]、librarySearchPath、parent 三参数构造函数；实现时核对 minSdk 29 的可用性。

父加载器优先使用平台/boot loader，隔离原 DEX 内非 GeeTest 的额外类与宿主 AndroidX；SDK 需要的附加类由同一原 DEX 提供。必须以 arm64 真机验证 JNI 注册、Context 调用及两种模式；若出现加载依赖错误，定位具体缺失类并修复适配，不可用虚假结果代替验证。

不选择将原 DEX 直接追加到 AGP 已签名 APK，因为会绕过标准打包/签名、易与 Compose 的多 DEX 编号和类冲突。设置 native library legacy packaging 以保证 gtcore 实际解压可寻址，兼容现有 GNSS so；不全局限制 ABI，以免损失其他功能在模拟器上的可用性。生成入口检查进程架构和库可用性。

### 3. Logic parity with bounded work

复用 DeviceCollector 字段规则，必要时仅调整包位置和资源释放；保留 headerMapAuthed/tokenSign/md5Old 等源辅助能力，默认页面仍采集未登录报告。DeviceId 使用同名偏好文件/key，但在当前应用沙箱内新建，不能继承旧包值。

保留六个 root 检测入口（其中两个是相同 test-keys 判据）。为 which、busybox、su 的执行/读取设有限超时，超时关闭流并终止进程；统一在后台进行，避免用户拒绝 root 授权时挂起。设备报告实际 hm 为 22 字段，以代码输出为准。

GeeDecrypt 保留原密钥、信封和有效填充兼容，但增加 Base64/长度/无符号密文长度/块对齐/填充边界校验，避免越界分配。使用 org.json 格式化有效 JSON，原格式化器对字符串中的括号/逗号处理不正确；归档仍使用解密原始文本。成功生成新 Token 后清除旧明文，避免复制或保存不匹配结果。

SDK 生成用专用串行后台执行器；其他文件操作使用 IO 调度器。阻止同工具重复任务，操作开始时捕获输入快照，更新状态时携带该任务结果。原生调用未提供取消机制，因此 Tab 切换继续等待，不能宣称协程取消已停止 JNI。

### 4. Files and export

沿用 externalFilesDir 根目录文件名；外部私有目录不可用时回退 filesDir 并展示实际路径。GeeToken 存档与明文写入分别记录结果，DeviceInfo 采集与自动保存分别记录结果，不能把写入错误显示成完整成功。历史读取尾部 4000 字符，避免每次把无限增长的历史全量加载到 UI。

在两个页面列出可导出的相应存档，使用 CreateDocument 导出 geetokens.txt、gee_plain_*.json、device_info_*.json，复制完整源文件；不把新增报告混入运动 Room 数据库或运动 v2 导出，不给新 JSON 注入运动记录 sha256 字段。剪贴板仅通过用户点击写入。源调试日志的完整数据输出限制在 debug，保留 GeeLive/DeviceProbe 标签便于验证。

### 5. Permissions

沿用已有位置权限；补充 INTERNET、READ_PHONE_STATE。生成时请求当前 SDK 实际可用的电话/位置权限，并独立处理授权结果，不复用会启动 RecordingService 的权限回调。旧 READ_EXTERNAL_STORAGE 仅按 API 29–32 兼容声明/请求；私有存档及系统选择器无须存储授权，Android 33+ 不新增媒体权限。DeviceCollector 原规则不依赖电话和位置授权；缺少授权仍可采集设备报告。拒绝时继续 SDK 可采集部分，显示真实状态。

## Risks / Trade-offs

- [仅有 arm64 gtcore] → 在其他进程架构禁用生成，DeviceInfo/运动功能独立；必须以 arm64 设备验收真实生成。
- [原 DEX 体积和额外类] → 完整保留以确保 JNI 依赖，隔离加载，记录校验值；首次加载耗时计入可观测状态。
- [更换宿主导致标识/版本/签名变化] → 明确使用当前宿主，不以旧 Token 字节一致作为验收，比较协议与字段语义。
- [root 命令等待授权或持续运行] → 有限超时和进程清理；超时视为该判据未命中。
- [native crash 或新 Android SDK 兼容问题] → Java 能处理加载/反射错误，不能保证捕获 native 致命信号；真机生成验证为完成条件。
- [16 KB 页设备兼容性未知] → 检查原库 ELF 段对齐与实际设备运行；若原库不支持，明确记录设备限制，不能声称修改打包即可修复 native 对齐。
- [进程被杀] → 已保存文件持久保留，未保存结果仅承诺配置重建/Tab 切换保留，不承诺进程终止恢复。

## Migration Plan

批准后纳入源文件和依赖、实现适配/页面、完成测试并构建 APK。先验证原 SDK 两种入口及 JNI，再验收 UI、存档和运动回归。沿用现有签名覆盖安装保留运动数据；新的私有文件与偏好不影响已有数据库。回退时使用相同签名的前版构建，新增文件可保留但不进入旧数据契约。
