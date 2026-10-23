# Proposal

## Why

当前 GeeToken、DeviceInfo 页面将生成、复制、解密、存档和历史文件混在一起，无法直接完成「生成最新数据 → 导出」的简洁流程。统一应用品牌和页面操作，并将运动历史独立展示，可减少操作步骤及探针报告的无意持久化。

## What Changes

- 应用显示名称改为 `Vun Collector`，增加同名 AppBar，启动图标采用标准圆形 `i` 信息图标（Info Icon）。
- GeeToken 页面仅保留 `GeeToken` 标题、`生成` 和 `导出` 按钮；仅调用既有带配置全采集模式，生成后自动解密，导出解密 JSON。
- DeviceInfo 页面仅保留 `DeviceInfo` 标题、`生成` 和 `导出` 按钮；保留当前采集报告的字段契约。
- 两个页面未生成、生成中（含解密）和导出中禁用导出；只有当前页面最新一次生成成功的结果可导出。取消或失败可重试，成功后可再次导出当前最新结果。
- **BREAKING**：移除探针无配置生成、手动解密、复制、存档、结果正文及历史文件列表；生成内容仅在 ViewModel 内存保存，不再自动写入或加载报告存档，不恢复进程终止前的数据。
- 仅运动采集的历史列表及其详情改为独立 BottomSheet，继续支持既有查看、编辑、删除和 JSON 导出。

## Capabilities

### New Capabilities

主规格目录目前为空；以下沿用已完成但尚未归档变更的能力路径，以 ADDED 形式建立当前可验收合同，而不对不存在的主规格使用 MODIFIED。

- `collector-identity`: 应用名、Info 启动图标及统一 AppBar。
- `collection-tabs`: 三个 Tab、精简探针页面、状态反馈和内存生命周期。
- `geetoken-collection`: 带配置生成、自动解密和最新 JSON 导出。
- `device-info-collection`: 生成当前报告、内存保存和最新 JSON 导出。
- `recording-management`: 运动历史 BottomSheet、详情导航及既有管理能力的保留。

### Modified Capabilities

无已发布主规格。本变更在重叠范围取代 `migrate-geetoken-deviceinfo-probe` 中双模式、手动解密、复制、持久存档及 `android-sensor-gps-logger` 中全页历史导航的约定；历史变更文档保持原样。归档时须避免旧变更覆盖本次合同。

## Impact

- 涉及 `MainActivity.kt`、`DetailPage.kt`、`probe/ProbePages.kt`、`ProbeViewModel.kt`、`ProbeFiles.kt`、`GeeSdk.kt` 及 Manifest/新增字符串与图标资源。
- 更新探针单元/设备集成测试与 README，覆盖导出状态、内存生命周期和 BottomSheet 导航。
- DeviceInfo 当前实现只返回筛选后的 `hm`（15 个稳定字段），不同于旧提案的四部分报告；本次保留当前实现，不扩充字段。GeeToken 导出沿用当前存档 JSON 对运行时字段的过滤语义。
- 应用 ID、DeviceId 的既有稳定标识存储、运动数据库、记录服务及运动 v2 JSON/SHA-256 合同保持兼容；不删除旧版本已生成的探针文件，不引入新依赖。
