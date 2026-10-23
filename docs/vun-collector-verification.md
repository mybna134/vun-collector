# Vun Collector 实施与验收状态

变更：`simplify-vun-collector`。记录日期：2026-10-24。

## 已实现

- Manifest 使用 Vun Collector 名称、Info 矢量前景、普通/圆形 adaptive icon；共享 AppBar 显示同名标题。
- GeeToken 仅带配置生成，自动解密、校验 JSON 并沿用原导出字段过滤。
- DeviceInfo 保留当前 hm 的 15 个稳定字符串字段及既有 DeviceId 存储。
- 两个探针页面仅有标题、生成、导出。操作结果通过 Snackbar 反馈；没有复制、存档、正文或探针历史文件列表。
- 新生成立即使旧结果失效；结果仅在 ViewModel 内存中保留，配置重建和 Tab 切换保留，新的 ViewModel 不读取旧文件。
- 导出从内存快照直接写 UTF-8 JSON，系统选择器到输出流关闭全程占用唯一 pending；同页生成互斥、跨页重复导出受阻，取消/失败可重试。
- 运动历史列表、详情位于独立 ModalBottomSheet，保留详情返回列表、关闭返回采集、分页、编辑、删除和独立运动导出链。
- README 及自动化测试已更新，旧存档不读取、不删除，应用 ID/运动数据库/运动 v2/SHA-256 格式未改。

## 本轮已执行的验证

由于 Gradle 无法在本环境启动，以下为独立编译/测试，不能替代完整 Gradle、lint 或 Android 设备验收。

使用已缓存的 Kotlin 2.3.21 编译器、匹配 Compose 编译器插件及项目已有 Android 依赖，在 `/tmp/vun-collector-check` 输出检查产物：

- `ProbeSessionTest` 4 项通过：旧结果失效与页面隔离、工具/版本快照绑定与互斥、取消和写入/关闭失败重试、并发导出只能成功占用一次。
- `GeeDecryptTest` 2 项通过：源信封解密、引号/中文保留及长度/块对齐/填充错误。
- 使用 Android SDK 36 Build Tools 的 aapt2 编译并链接全部新增字符串、Info 图标与 Manifest 成功，再编译生成的 R 类。
- 修改的生产 Kotlin（MainActivity、DetailPage、全部 probe Kotlin）使用实际缓存依赖和 Compose 插件编译通过；未修改模块类型解析依赖此前构建的类。
- 更新后的 ProbeIntegrationTest 编译通过，尚未在设备执行。新增/调整覆盖自动解密、15 字段 hm、嵌套 JSON 过滤、无自动存档、导出取消/失败、Activity 重建、运动 Sheet 分页/返回/编辑/删除和运动持续采样。

临时验证命令：`python3 /tmp/check_vun_kotlin.py`。此脚本仅适用于本机现有依赖缓存和此前构建目录，不作为项目标准构建入口。

## 阻塞与尚未验收项

标准构建尝试：

```sh
JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew --offline --no-daemon \
  :app:testDebugUnitTest :app:lintDebug :app:assembleDebug
```

默认 Gradle 用户目录只读，wrapper 无法写 `.zip.lck`。随后将 Gradle 9.5.1 版本缓存复制到可写 `/tmp/vun-collector-gradle`，使用已安装的匹配 Gradle 可执行文件与只读依赖缓存重试（另含 `:app:assembleDebugAndroidTest`），仍在构建启动阶段失败：

```text
Could not create service of type FileLockContentionHandler
Could not determine a usable wildcard IP for this machine
```

ADB 的 `adb devices` 亦失败：当前环境没有 `/dev/bus/usb`，且禁止 netlink/socket listener，因此无法连接真机或模拟器。没有执行任何卸载、清空数据或升级安装操作。

以下仍需在具备 Gradle 网络/本地 socket 能力和 Android 设备访问的环境验收，不计为通过：

- 完整 Gradle 单测、lint、Debug APK 和 androidTest APK 构建。
- `./gradlew :app:connectedDebugAndroidTest`；真实 arm64 SDK 带配置生成、权限拒绝及自动解密。
- 启动器普通/圆形图标、AppBar 和三页布局的实际显示。
- 系统文件选择器取消、跨 Tab/Activity 重建、不同文件提供者的成功及失败写入。
- Sheet 空/长列表、分页、返回键/外部点击/下滑关闭、编辑对话框、活动记录限制及服务持续采样。
- 真正终止并重启进程后导出禁用，DeviceId 和主动导出文件保持。
- 相同签名/applicationId 升级后旧运动数据、DeviceId、旧探针文件保留，旧探针文件不会重新成为可导出结果。

`app/build/outputs/apk/` 下现存 APK 来自之前构建，本轮未生成新 APK，不能将它们作为本变更产物。
