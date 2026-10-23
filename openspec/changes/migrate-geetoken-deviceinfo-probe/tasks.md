# Tasks

## 1. Original SDK integration

- [x] 1.1 将原 DEX 和 arm64 gtcore 纳入项目 assets/jniLibs，调整原生库打包；记录来源与 SHA-256，并通过 APK 文件清单验证库和 DEX、现有 GNSS 库均已包含，构建无 reverse 绝对路径依赖。
- [x] 1.2 实现单例隔离 SDK 加载器和两种配置反射入口、进程架构检测；核对三参数 InMemoryDexClassLoader 的 API 29 支持并在 arm64 设备验证实际 JNI 加载及两种 Token 返回。
- [x] 1.3 添加 SDK 必要权限与独立运行时权限流程；通过授予/拒绝电话和位置权限以及不支持 ABI 场景验证可降级、提示准确、不启动运动服务。
- [x] 1.4 在依赖说明文档记录原文件来源/摘要、宿主差异和 arm64/页面大小限制；检查 ELF 对齐并记录适用设备验证结果。

## 2. Token decoding and persistence

- [x] 2.1 迁移 GeeDecrypt 算法并补齐信封、长度、块对齐和填充校验及正确 JSON 格式化；使用源真实 Token/明文样本和畸形信封测试验证解密一致与异常处理，包含 JSON 字符串内括号/逗号案例。
- [x] 2.2 实现 geetokens.txt 追加、原始明文单独保存、历史尾部读取及部分失败结果；通过临时文件验证完整历史保留、重复存档、超过 4000 字符、UTF-8 和明文失败仍能存 Token。
- [x] 2.3 实现历史/明文文件列表及 CreateDocument 导出，校验导出字节与源文件一致并检查取消/写入失败不破坏源文件；在 README 说明文件名、历史展示上限和导出操作。

## 3. DeviceInfo logic

- [x] 3.1 迁移 DeviceCollector 全部字段、稳定 DeviceId、MD5 辅助及已登录 headerMap 能力；通过独立已知 MD5 值、22 字段/四段报告及真实设备采集验证键、类型、空值、排序和当前宿主信息。
- [x] 3.2 为 root 外部命令增加有限超时和进程/流释放；验证命令卡住时按时返回且其他字段仍完成，重复采集和应用重启后 DeviceId 不变。
- [x] 3.3 实现自动保存、报告文件列表、复制与系统文件选择器导出，区分采集与保存结果；验证文件/剪贴板/导出 JSON 一致及保存失败后报告仍可复制，并在 README 说明 DeviceId 作用域及字段来源。

## 4. UI and lifecycle

- [x] 4.1 为现有运动导航新增顶层三个 Tab，并建立独立 ProbeViewModel/StateFlow、串行任务保护；验证 Tab 切换和 Activity 重建保留结果且操作不重复。
- [x] 4.2 实现 GeeToken 页面全部按钮、状态/耗时/长度/magic、可选文本、明文与历史展示；手动走通两种生成→解密→复制→存档→导出流程，验证空 Token、生成失败和新 Token 清除旧明文。
- [x] 4.3 实现 DeviceInfo 页面采集、独立状态、报告展示、复制、自动保存路径及导出；验证采集期间页面可切换、两工具状态互不覆盖、重复点击不会产生冲突任务。
- [x] 4.4 更新 README 的三个 Tab 操作和新版权限说明，保留 GeeLive/DeviceProbe debug 日志；根据实际 UI 和构建命令复核文档。

## 5. Integration acceptance

- [x] 5.1 运行 ./gradlew :app:testDebugUnitTest :app:assembleDebug :app:lintDebug，检查新增报告和解密测试以及现有运动、海拔、JSON/SHA-256 测试通过；构建 release 时使用现有签名配置并验证 APK 签名。
- [x] 5.2 在 arm64 真机验收两种真实 SDK 生成及解密、存档持久性、复制/导出、权限拒绝、Tab/旋转状态；记录设备/API/进程 ABI 和操作结果，设备不可用时明确保留本任务未完成。
- [x] 5.3 在运动采样进行中使用两个新增 Tab，回到历史详情确认持续采样、编辑/删除及 v2/SHA-256 导出仍正常；验证升级保留旧数据库和记录，并在其他 ABI 验证 GeeToken 限制不影响 DeviceInfo/运动功能。
