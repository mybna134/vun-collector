# Tasks

## 1. MCC 映射与导出 JSON

- [x] 1.1 增加只接受运营商码字符串的映射：`46000`/`46002`/`46004`/`46007` → `CM`，`46001`/`46006`/`46009` → `CU`，`46003`/`46005`/`46011` → `CT`，其余包括 `null`、空串、`46015`、`46008`、`46020` 和更长或带空格的串返回空。用 JVM 单元测试覆盖全表，并确认结果里没有 `Unknown`。
- [x] 1.2 城市导出仅在映射非空时追加 `u_sign`，形如 `{"carrier":"CM","opcode":"46000"}`，`opcode` 等于参与映射的运营商码；未命中时 JSON 不含 `u_sign`，也不含顶层 `opcode`、`client_type`、`op`、`car` 或 `Unknown`。扩展现有城市 JSON 测试，确认 `city` 等原字段仍在，且从导出中读取城市名不受 `u_sign` 影响。

## 2. 第四页采集与导出

- [x] 2.1 在第四页获取流程里，城市成功后读取默认 `TelephonyManager.getSimOperator()`；无服务、`SecurityException` 和空码按未命中处理，不调用 `getSimOperatorName()`，不读取 GeeToken 的 `op`/`car`。命中时成功提示包含 `CM`/`CU`/`CT`，未命中时提示说明未写入 carrier；城市或定位失败仍使本次结果不可导出。用可注入的运营商码完成上述分支测试。
- [x] 2.2 页签和页面标题改为「其他信息」，第四页导出前缀改为 `other_info_`，获取时一并请求 `READ_PHONE_STATE`，仅在缺少精确定位时阻止获取。高德 Key 仍写入名为 `geo_city` 的偏好。用单元测试确认建议文件名为 `other_info_<时间戳>.json`，并运行 `./gradlew :app:testDebugUnitTest` 确认本组与第 1 组测试通过。
