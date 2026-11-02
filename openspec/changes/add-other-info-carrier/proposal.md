# Proposal

## Why

第四个采集页仍标成「地理信息」，导出也只有高德逆地理城市。GeeGuard 的 `u_sign.carrier` 是另一条 Java 链路：用 `TelephonyManager.getSimOperator()` 的 MCC+MNC 精确映射成 `CM` / `CU` / `CT`。native GeeToken 里的 `op`（MCC 原文）和 `car`（`getSimOperatorName()` 显示名）不能代替它。采集结果需要能导出成 `other_info` JSON，供后续对照，而不是去兼容那两个 native 字段。

## What Changes

- **BREAKING**：页签和页面标题由「地理信息」改为「其他信息」。建议导出文件名前缀由 `geo_city_` 改为 `other_info_`，即 `other_info_<生成时间戳>.json`。
- 同一次采集仍做现有高德逆地理（半径 200 米，城市名继续给 Identity 的 address 使用），并额外读取默认 `TelephonyManager.getSimOperator()`。
- 仅当运营商码精确命中移动 `46000/46002/46004/46007`、联通 `46001/46006/46009`、电信 `46003/46005/46011` 时，写入对象 `u_sign`。其中 `carrier` 分别为 `CM`、`CU`、`CT`，`opcode` 为本次 `getSimOperator()` 原文，例如 `{"carrier":"CM","opcode":"46000"}`。
- 没有 `carrier` 时（广电 `46015`、空串、`null`、无电话服务、未授予电话状态权限）整段 `u_sign` 不出现，`opcode` 也不单独出现。不写 `Unknown`，不读 GeeToken 的 `op`/`car`，不调用 `getSimOperatorName()`。
- 城市获取失败仍使本次采集失败。运营商未映射或电话权限缺失不单独失败；提示中说明未写入 carrier。

## Capabilities

### New Capabilities

- `other-info-collection`: 第四个页签的名称、高德城市结果，以及命中时写入的 `u_sign.carrier` 与 `u_sign.opcode`。

### Modified Capabilities

无已发布主规格；`openspec list --specs --json` 返回空。不改写进行中的 `collection-tabs` 或 GeeToken 定位变更。

## Impact

- 本项目：`MainActivity.kt`、`ProbePages.kt`、`ProbeSession.kt`、`ProbeViewModel.kt`、城市导出 JSON 组装、运营商映射及其单元测试。`READ_PHONE_STATE` 已在 Manifest 中声明，采集时一并请求。
- 不改 GeeToken 解密、`DeviceCollector`、libgtcore 的 `op`/`car`，不实现一键登录网关选择，不新增依赖。
- 高德 Key 的本地偏好名保持不变，避免已保存的 Key 丢失。
