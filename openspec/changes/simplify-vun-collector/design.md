# Design

## Context

动机见 proposal.md。项目为 Kotlin / Compose Material3 Android 应用。`MainActivity.LoggerRoot` 已有 Scaffold、三个 Tab、运动全页 list/detail 路由，以及两个按 MIME 区分的探针 CreateDocument launcher，但没有 AppBar。Manifest 直接写旧应用名且没有图标资源。

`ProbeViewModel` 当前把 UI 状态、复制、手动解密、私有文件存档和按路径导出耦合在一起；DeviceInfo 自动落盘，debug 日志输出完整报告。`ProbeFiles` 提供累积 Token 历史和 JSON 存档，并在 GeeToken JSON 存档时过滤运行时字段。`DeviceCollector.collectReport` 实际只生成 15 个稳定字段的 `hm`，DeviceId 独立存于 SharedPreferences。这些观察优先于旧变更中未同步的报告描述。

主规格目录为空，但此前已完成变更尚在 changes 中；本次复用能力路径并使用 ADDED，保留旧变更作历史，不在本次规划中归档或同步它们。

## Goals / Non-Goals

**Goals:**
- 将生成结果与文件存档解耦，使用明确状态约束「最新成功结果」和导出事务。
- 在现有 Compose / ViewModel 架构内实现精简页面与 Sheet，复用现有采集及解密算法。
- 通过针对性的状态和真实输出验证保证报告兼容性与运动服务连续性。

**Non-Goals:**
- 不更换 applicationId、数据库、SDK 二进制、签名身份或运动导出格式。
- 不扩展 DeviceInfo 字段、不重置 DeviceId、不为探针增加新历史机制。
- 不删除旧存档、不保证进程死亡时恢复未导出结果、不自动归档其他 OpenSpec 变更。

## Decisions

### 1. 使用资源提供品牌和 Info 启动图标

新增 `app_name` 字符串、圆形 i 矢量前景及适配启动器的 adaptive icon 资源，在 Manifest 设置 label、icon、roundIcon。共享 Scaffold 使用 Material3 TopAppBar 展示 `Vun Collector`，三个 Tab 保留，探针标签简化为 GeeToken / DeviceInfo。图标颜色与现有 Material 风格协调，采用可读性清晰的标准 Info 形状。

采用 Android 原生矢量资源，避免为标准信息图标引入位图生成、第三方图标依赖或系统私有 drawable。不在各 Tab 重复增加应用级标题。

### 2. 每页仅保留一个内存结果，生成时先清空

状态区分 Idle / Generating（GeeToken 包含 Decrypting）/ Ready / Exporting / Error；可使用枚举或等价不可变状态表示。每页仅一个带生成时间/版本的最新结果，派生 `canGenerate` 和 `canExport`，不另维护可失配的标志。

新生成立即清除该页结果。GeeToken 在现有单 SDK 工作线程调用配置模式，再在 Default dispatcher 解密、验证 JSON、应用既有递归字段过滤，一次性发布 Ready。调整 `GeeSdk` 的应用调用入口使 UI 无法选择无配置模式；原 SDK 自身不变。DeviceInfo 在 IO dispatcher 收集并校验现有 JSON，直接发布 Ready，取消所有自动存档调用。

沿用 ViewModel 保证旋转和 Tab 切换保留；结果不进入 SavedStateHandle、rememberSaveable、Room 或文件。移除完整 Token / 明文 / DeviceInfo 日志，只允许必要的非正文诊断。保留 DeviceId SharedPreferences，因为它是采集算法稳定标识而非生成报告存档。

替代方案：保留历史文件并选择最新文件会继续持久化，无法满足要求；新生成失败时恢复旧结果容易误导用户，因此旧结果在生成开始即失效。

### 3. 直接从内存快照导出

将 ProbeFiles 的 JSON 过滤/导出编码能力与归档文件 API 分离，过滤提取为纯转换供自动解密链使用；删除或解除生产调用的探针存档和历史代码，更新对应测试。直接通过 ContentResolver 的 buffered output stream 写 UTF-8 JSON，不创建中转文件。文件名沿用 gee_plain_ / device_info_ 加生成时间戳。

统一使用 JSON CreateDocument launcher。`beginExport` 在拉起选择器前原子验证 Ready、捕获 `{tool, version, suggestedName, json}` 内存快照并进入 Exporting；同页禁止生成，两个探针导出按钮在全局 pending 期间均禁用，另一页仍可生成。避免以已存储路径或可变当前页推断回调归属。pending 直到输出流关闭或异常清理结束才释放，覆盖选择器、重复点击和异步写入窗口。

取消、无法打开选择器、写入及 close 失败统一恢复 Ready，结果保留可重试；目标清理继续复用 DocumentsContract 最佳努力删除及残留提示。捕获 URI 后写入任务在 ViewModel 协程执行，Activity 重建不丢事务，进程死亡不自动恢复或写入。仅在输出流成功关闭后提示导出成功。

替代方案：为 Token 与明文各开文件或打包文件增加额外操作，不符合用户确认的单份解密 JSON 导出。

### 4. 通过短暂提示承载操作反馈

`ProbePages` 精简为标题和一行两个按钮，生成/解密/导出期间保持固定按钮文案并通过 disabled / 小型按钮内忙碌指示表达状态。状态和错误通过共享 SnackbarHost 的事件反馈，避免将旧 status、路径、正文重新放回页面。一次性事件采用有缓冲消费机制，防止重组重复提示；不可用原因进入 GeeToken 页时可提示。保留权限申请及拒绝后的继续生成流程。

常驻状态文字会违背页面仅三个元素的目标；完全静默又无法判断失败，故采用临时 Snackbar。

### 5. 运动历史列表和详情复用一个 ModalBottomSheet

保留运动页历史入口。Sheet 独立维护可保存的可见性及 list/detail 导航，Sheet 内详情复用 DetailPage 的采样查看、编辑、删除和导出回调；详情返回进入列表，列表返回及外部点击/下滑关闭 Sheet。适当约束高度并给现有 LazyColumn 分配剩余空间，以支持大列表、分页和输入对话框。

移除主内容的 list/detail 路由，底层始终保留运动采集页。切换 Tab 时关闭 Sheet，运动服务继续运行。删除回调返回并刷新 Sheet 列表；独立保留运动 CreateDocument launcher 和 exportId，不与探针 pending 混用。

只将列表做 Sheet 而详情仍替换主页面会造成返回路径混杂，故将两者都放在同一 Sheet 中。

## Risks / Trade-offs

- [生成中或进程终止会丢失未导出结果] → 这是最新结果和非持久化合同；明确禁用规则，并在 README 说明生命周期。
- [旧提案、README 和实现的字段描述不同] → 本次以实际 15 字段 hm 和既有 GeeToken 过滤行为为基线，使用固定向量及输出比较锁定；不顺带调整采集算法。
- [两个探针共享系统文件选择器出现串单] → pending 保存工具及版本，在选择器和流关闭全程持锁；验证跨 Tab 和重建回调。
- [Sheet 中长详情或编辑对话框出现布局/返回冲突] → 复用详情但明确高度、滚动和分层返回规则，设备测试覆盖分页及编辑删除。
- [旧文件仍占用空间] → 本次不加载、不修改、不自动删除，避免隐式删除用户已有数据。
- [真实 GeeToken 仅 arm64 可验证] → 本地用纯状态/解密向量验证失败路径，真实 SDK 配置生成需 arm64 设备验证；不可用环境明确记录未验证项。
- [旧 OpenSpec 变更之后归档覆盖新合同] → 归档阶段检查重叠能力，先处理旧基线或调和后再同步本变更，不在实现中自动归档其他变更。

## Migration Plan

1. 审核批准后按 tasks 实现，更新旧探针 UI 自动化与输出测试；不改数据库版本。
2. 运行单测、lint、Debug 构建，并在可用设备验证新交互及真实 SDK；记录设备限制和未验证项。
3. 同 applicationId / 签名覆盖安装验证新 label/icon、旧运动数据和 DeviceId 保留；旧探针文件不展示也不恢复为最新结果。
4. 回退使用前一版相同身份 APK；运动数据结构与旧文件未迁移，可继续访问，当前内存结果不保证保留。
