# Design

## Context

见 proposal.md。第四页已经在 `ProbeSession.ProbeTool.GEO`（前缀 `geo_city_`）、`ProbeViewModel.fetchCity()` 和 `GeoCity` 里完成定位等待与高德逆地理。导出 JSON 只有城市和坐标。`READ_PHONE_STATE` 已声明；GeeToken 生成会请求它，第四页目前只请求定位。

GeeGuard register 组 client_report 时，`e.java` 调用默认 `TelephonyManager.getSimOperator()`，用精确 MCC+MNC 得到 `h6`，再取 `getType()` 写入 `u_sign.carrier`（`bm.P`）。`h6.UNKNOWN` 时整段 `u_sign` 不发送。这与 libgtcore 写入 GeeToken 的 `op` / `car` 无关。仓库内没有 JADX 源码树，映射表以这次核对过的反编译为准。

## Goals / Non-Goals

**Goals:**

- 页签、标题和导出前缀改为其他信息 / `other_info_`。
- 城市字段与现在的逆地理结果保持同一形状，并在命中时追加同时含 `carrier` 和 `opcode` 的 `u_sign`。
- 映射表与 Java 侧 switch 一致，可在无设备的单元测试里覆盖全表。

**Non-Goals:**

- 不读 GeeToken `op`/`car`，不调用 `getSimOperatorName()`，不按订阅 ID 选卡。
- 不导出 `client_type`，不实现 CM/CU/CT 网关选择。
- 不改高德 Key 的 SharedPreferences 名 `geo_city`。
- 不改 GeeToken、DeviceInfo 或运动记录。

## Decisions

### 1. 纯函数映射，调用点只负责取码

新增只接受运营商码字符串的映射：命中返回 `CM`、`CU` 或 `CT`，否则返回空。`null`、空串和未列出的码（含 `46015`、`46008`、`46020`）都返回空。比较为整串相等，不做前缀或数字规范化。

`TelephonyManager` 只出现在采集协程里：无服务、`SecurityException` 或返回空都当成未命中。这样表的测试不依赖 Android 电话服务。

备选是直接在 ViewModel 里写 switch。拒绝原因：失败路径和 JSON 组装会把表拆散，广电和虚拟运营商容易漏测。

### 2. 在现有城市 JSON 上追加 `u_sign`

城市导出仍由现有组装函数生成。仅当映射非空时追加 `"u_sign":{"carrier":"<CM|CU|CT>","opcode":"<getSimOperator 原文>"}`。`opcode` 只出现在这个对象里，值就是本次参与映射的运营商码。没有 `carrier` 时不追加 `u_sign`，也不另写顶层 `opcode`。`city` 解析继续只读 `city`，忽略 `u_sign`。

备选是把 `opcode` 放在 `u_sign` 外面，让广电等未映射码也能导出。已拒绝：没有 `carrier` 时整段 `u_sign` 不出现。另存一份只有 carrier 的文件也拒绝，因为这一页只有一次获取、一次导出。

### 3. 电话权限降级，定位权限仍是硬条件

第四页请求定位时同时请求 `READ_PHONE_STATE`。没有精确定位则不开始获取。电话权限被拒绝仍开始获取；城市成功且 carrier 为空时，提示写明未写入 carrier。命中时提示带上 `CM`/`CU`/`CT`。

备选是把电话权限做成和定位一样的前置失败。拒绝原因：GeeGuard 自己在 UNKNOWN 时跳过 `u_sign` 而不是中止上报，城市结果也不依赖 SIM。

### 4. 只改导出前缀，会话工具仍服务第四页

`ProbeTool` 里第四页的文件名前缀改为 `other_info_`。生成、失败、导出互斥继续走现有 `ProbeSession`，不新开一套状态。枚举常量可以保持 `GEO`，避免无行为差异的大范围重命名；调用处仍指向这一页。

### 5. 默认 TelephonyManager，不枚举多卡

与反编译一致，使用 `getSystemService(TELEPHONY_SERVICE)` 的 `getSimOperator()`，不查 `SubscriptionManager`。双卡时结果是系统默认返回的那张卡。

## Risks / Trade-offs

- [双卡只读到默认 SIM] → 与 GeeGuard 这条 Java 路径一致；不在本变更里按卡槽合并。
- [Android 版本对 `getSimOperator()` 返回空] → 视为未命中并省略 `u_sign`，城市导出仍可用。
- [进行中的 GeeToken 定位变更也改 `ProbeViewModel` / `MainActivity`] → 本变更只动第四页获取与导出组装，不改 GeeToken 生成路径；实现时按当时工作区合并。
- [建议文件名从 `geo_city_` 变为 `other_info_`] → 结果只在内存里，没有旧档迁移。已保存的高德 Key 偏好不改名。

## Migration Plan

1. 实现映射、JSON 追加、页签文案和导出前缀。
2. 单元测试覆盖三家运营商全码、未命中省略、城市失败不产出 JSON。
3. 回退时恢复页签文案和 `geo_city_` 前缀，并停止追加 `u_sign`。无持久化数据需要迁移。

## Open Questions

无。`u_sign` 只在有 `carrier` 时出现，并同时带上 `opcode`；没有 `carrier` 时整段省略。
