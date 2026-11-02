# Proposal

## Why

GeeToken 页获得权限后立即调用 SDK，没有主动获取并等待有效定位，甚至拒绝位置权限后仍按成功流程生成，因而可能导出没有坐标的数据。同时，按字段名递归过滤会误删 Gid 的签名、时间戳、UID 以及定位时间，破坏导入 Vun 所需的观测数据。

## What Changes

- **BREAKING**：精确定位权限改为 GeeToken 采集前置条件；拒绝、仅授予模糊定位或权限被撤销时不得继续调用 SDK，不再以位置缺失降级成功。
- GeeToken 生成流程独立请求一次有效定位并等待结果；定位服务关闭、失败或超时时报告失败，不复用上一轮导出结果。默认等待上限拟为 30 秒。
- 使用原配置调用原 SDK，解密后验证 `data.dev.loc.st=1` 且包含有效经纬度；SDK 仍未采到定位时报告失败，不将宿主坐标拼装为 SDK 输出。
- 将递归字段名过滤改为明确 JSON 路径的运行时过滤，保留 `data.gid.sign/ts/uid`、`data.dev.loc.loc.ts` 和 `data.test.sh` 的原值及空字符串。
- 保留现有生成/导出页面、内存生命周期、真实 SDK、运动记录服务与其他权限策略。电话状态权限仍可降级，不提高其要求。

## Capabilities

### New Capabilities

- `geetoken-collection`: 定义 GeeToken 的精确定位前置条件、有效位置等待、SDK 结果验证和嵌套观测字段保留。

### Modified Capabilities

无已发布主规格；`openspec list --specs --json` 返回空。本变更沿用 `simplify-vun-collector` 的能力路径，以 ADDED 明确替代其中位置权限可降级和递归运行时字段过滤的重叠条款；不改写历史变更。

## Impact

- 本项目：`MainActivity.kt`、`ProbeViewModel.kt`、定位获取协作者、`ProbeJson.kt`、相关状态与单元/设备测试、采集说明。
- 不替换内嵌 DEX/gtcore，不新增网络服务，不人工生成经纬度，不通过启动运动记录来间接预热定位。
- 配套 Vun 变更：`/home/mybna134/Projects/Vun/openspec/changes/preserve-geetoken-location-and-probe-fields`，声明并持久化完整定位、Gid 三字段和 `test.sh`；本变更不编辑 Vun 代码。
