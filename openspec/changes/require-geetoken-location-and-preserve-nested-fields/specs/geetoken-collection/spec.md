# Spec Delta

## Purpose

保证用户在 GeeToken 页面生成并导出的数据实际包含 SDK 采集的有效位置，并使嵌套签名、UID、定位时间和测试字符串在导出过程中保留。所有权限、定位与 SDK 失败均明确反馈，不使用旧结果或人工构造的坐标代替本轮成功结果。

## ADDED Requirements

### Requirement: Precise location is required for generation
系统 SHALL 在每轮 GeeToken 生成前取得精确定位授权并检查定位服务可用。权限拒绝、仅授予模糊定位或权限被撤销时 SHALL 阻止 SDK 生成并说明原因，SHALL NOT 按权限降级成功处理。电话状态等其他权限 SHALL 保留既有可降级策略。

#### Scenario: Denied or approximate location permission
- **WHEN** 用户拒绝定位或只允许模糊位置
- **THEN** 本轮不调用 SDK，不允许导出本轮结果，并提示需要精确定位

#### Scenario: Location service disabled
- **WHEN** 已有精确定位权限但系统定位服务关闭
- **THEN** 本轮失败并明确提示开启定位，不进入无限等待

### Requirement: Wait for a valid location before SDK collection
系统 SHALL 在生成流程内独立等待本轮启动后获得的有效位置。经纬度 SHALL 为有限值且处于合法范围；定位等待上限 SHALL 为 30 秒。等待 SHALL 属于本轮生成状态，阻止重复生成和导出。超时、权限撤销、定位异常或流程取消时 SHALL 释放定位监听并结束本轮，不用旧结果回退为成功。

#### Scenario: Location becomes available
- **WHEN** 本轮在 30 秒内获得有效位置
- **THEN** 系统才继续调用原带配置 SDK，并在所有退出路径释放本轮定位监听

#### Scenario: Timeout or revoked permission
- **WHEN** 超过 30 秒没有有效位置，或等待期间权限被撤销
- **THEN** 本轮失败、禁用导出、提示对应原因并允许重试

### Requirement: Generated SDK result must contain coordinates
系统 SHALL 继续使用既有 appId、devInfo=true、alInfo=true、level=1 配置，自动解密并检查结果。仅在 `data.dev.loc.st=1` 且内层 `lat/lon` 可解析为有限合法坐标时 SHALL 标记生成成功。宿主先获得坐标但 SDK 结果仍无坐标时 SHALL 报告失败，SHALL NOT 将宿主坐标注入明文来伪造 SDK 定位结果。

#### Scenario: SDK did not observe the location
- **WHEN** 宿主定位成功，但解密结果是 `st=0` 或缺少内层坐标
- **THEN** 本轮报告 SDK 未取得有效定位，不启用导出，也不输出上一轮结果

#### Scenario: Successful real SDK output
- **WHEN** SDK 返回可解密 JSON，且包含 `st=1` 和有效坐标
- **THEN** 系统允许通过既有文件选择器导出本轮结果

### Requirement: Runtime filtering respects JSON paths
导出过滤 SHALL 仅删除根对象的 `app/ven/ts/appId/sign/uid/token/timeStamp/nonce/tokenSign/headerSign/appVersion` 和 `data.dev.app/ven`，SHALL NOT 因同名字段出现在其他路径而删除观测值。`data.gid.sign/ts/uid`、`data.dev.loc.loc.ts` 和 `data.test.sh` SHALL 保留原值、空字符串与原 JSON 类型；过滤 SHALL NOT 生成这些字段。

#### Scenario: Root and nested same-name fields
- **WHEN** SDK 明文同时包含根 sign/ts/uid、Gid sign/ts/uid 和定位 ts
- **THEN** 仅移除指定根运行时字段，Gid 三字段和定位时间保留

#### Scenario: Empty sh and uid
- **WHEN** SDK 输出 `data.test.sh=""` 或 `data.gid.uid=""`
- **THEN** 导出仍含对应键及空字符串；源数据未提供的键保持缺失

### Requirement: Generation preserves existing lifecycle boundaries
系统 SHALL 保留生成/导出页面与进程内结果生命周期，不因 GeeToken 定位启动运动记录或创建运动数据库记录。未取得本轮成功结果时 SHALL 禁止导出；页面重建不重复启动定位，所有取消与终止路径 SHALL 清理监听，SDK 的既有单线程调用约束 SHALL 保留。

#### Scenario: Generate without recording
- **WHEN** 用户仅在 GeeToken 页面生成并导出
- **THEN** 运动记录数据库和运动服务状态不变，文件仅包含本轮成功的 SDK 数据
