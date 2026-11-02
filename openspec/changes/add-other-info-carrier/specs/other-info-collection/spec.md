# Spec Delta

## Purpose

第四个采集页以「其他信息」导出一份内存 JSON：保留高德逆地理城市，并在 SIM 运营商码命中 GeeGuard Java 映射时写入带 `carrier` 和 `opcode` 的 `u_sign`。

## ADDED Requirements

### Requirement: Other-info page identity
系统 SHALL 将第四个采集页签和该页标题显示为「其他信息」。该页 SHALL 继续提供高德 Web 服务 Key 输入、获取与导出。获取成功后 SHALL 在页面上显示解析出的城市名。

#### Scenario: Open the fourth tab
- **WHEN** 用户打开第四个采集页
- **THEN** 页签和页面标题均为「其他信息」，且仍可填写 Key、获取并导出

#### Scenario: City remains visible
- **WHEN** 一次获取成功并得到城市名
- **THEN** 页面显示该城市名，直到下一次获取开始

### Requirement: City lookup stays in the same export
一次成功获取 SHALL 仍用当前 GPS 做半径 200 米的高德逆地理，并在导出 JSON 中保留 `city`、`province`、`district`、`latitude`、`longitude`、`radiusMeters`、`coordsys`。城市结果无效、Key 为空、定位失败或逆地理失败时，本次获取 SHALL 失败且不保留上一份可导出结果。

#### Scenario: Successful city fields
- **WHEN** Key 有效且逆地理返回可解析城市
- **THEN** 可导出 JSON 含上述城市与坐标字段，`coordsys` 为 `gps`，`radiusMeters` 为 200

#### Scenario: City failure drops the previous result
- **WHEN** 已有可导出结果后再次获取，且定位或逆地理失败
- **THEN** 导出不可用，直到后续获取成功

### Requirement: Java MCC carrier mapping
系统 SHALL 只根据默认电话服务的 `getSimOperator()` 返回值做精确字符串匹配，并按下表决定 `u_sign.carrier`：

| `getSimOperator()` | `u_sign.carrier` |
| --- | --- |
| `46000`、`46002`、`46004`、`46007` | `CM` |
| `46001`、`46006`、`46009` | `CU` |
| `46003`、`46005`、`46011` | `CT` |

命中时导出 JSON SHALL 包含对象 `u_sign`，且仅含 `carrier` 与 `opcode` 两个字段：`carrier` 为上表对应值，`opcode` 为产生该映射的 `getSimOperator()` 原文。系统 SHALL NOT 把 `opcode` 写在 `u_sign` 之外，SHALL NOT 写入 `client_type`，SHALL NOT 读取或对照 GeeToken 的 `op`、`car`，SHALL NOT 调用 `getSimOperatorName()`。

#### Scenario: China Mobile SIM
- **WHEN** `getSimOperator()` 为 `46000`、`46002`、`46004` 或 `46007`，且城市获取成功
- **THEN** 导出 JSON 的 `u_sign` 为 `{"carrier":"CM","opcode":"<该运营商码>"}`

#### Scenario: China Unicom SIM
- **WHEN** `getSimOperator()` 为 `46001`、`46006` 或 `46009`，且城市获取成功
- **THEN** 导出 JSON 的 `u_sign` 为 `{"carrier":"CU","opcode":"<该运营商码>"}`

#### Scenario: China Telecom SIM
- **WHEN** `getSimOperator()` 为 `46003`、`46005` 或 `46011`，且城市获取成功
- **THEN** 导出 JSON 的 `u_sign` 为 `{"carrier":"CT","opcode":"<该运营商码>"}`

### Requirement: Unmapped operator omits u_sign
运营商码未命中上表、为空、为 `null`、设备无电话服务，或未授予读取电话状态权限时，系统 SHALL 省略整个 `u_sign` 对象，且 SHALL NOT 另写 `opcode` 或 `Unknown`。这种情况 SHALL NOT 单独导致获取失败。成功提示 SHALL 说明未写入 carrier。已授予电话状态权限且命中映射时，成功提示 SHALL 包含 `CM`、`CU` 或 `CT`。

#### Scenario: Broadcast or virtual operator
- **WHEN** `getSimOperator()` 为 `46015`、`46008` 或其他未列出的值，且城市获取成功
- **THEN** 导出 JSON 没有 `u_sign`，也没有独立的 `opcode`，获取仍成功，提示说明未写入 carrier

#### Scenario: Phone permission denied
- **WHEN** 精确定位已授予但电话状态权限被拒绝，且城市获取成功
- **THEN** 导出 JSON 含城市字段且没有 `u_sign`，获取仍成功

#### Scenario: No SIM does not fail the city
- **WHEN** 电话服务不可用或运营商码为空，且城市获取成功
- **THEN** 导出 JSON 没有 `u_sign`

### Requirement: other_info export name
用户导出第四页最新成功结果时，建议文件名 SHALL 为 `other_info_` 加该次生成时间戳，再加 `.json`。文件 SHALL 为该次内存 JSON 的 UTF-8 内容。系统 SHALL NOT 在用户导出之前把该 JSON 写入应用存储。

#### Scenario: Export suggested name
- **WHEN** 用户在获取成功后点击导出
- **THEN** 文件选择器的建议名匹配 `other_info_<生成时间戳>.json`，写入内容与该次内存 JSON 一致

#### Scenario: No automatic archive
- **WHEN** 用户完成获取但未导出
- **THEN** 应用不新增其他信息报告文件
