# Design

## Context

见 proposal.md。`MainActivity` 权限回调不区分允许/拒绝就触发生成；`ProbeViewModel` 直接调用 `GeeSdk`；主动 GPS 请求只在 `RecordingService`。`ProbeJson` 按字段名递归过滤，影响 Gid 和定位时间。`ProbeSession.beginGeneration` 已清除前次结果并进入 GENERATING，可复用此生命周期。

关联 Vun change 为 `preserve-geetoken-location-and-probe-fields`，负责接收端模型与运行时覆盖；本 change 仅修改采集端。历史 `simplify-vun-collector` 的位置权限可降级与递归过滤条款在重叠部分由本次取代，其余生成/导出合同继续适用。

## Goals / Non-Goals

**Goals:** 将真实位置准备和 SDK 坐标验证纳入同一生成事务；失败可解释且可重试；导出保留嵌套观测字段。

**Non-Goals:** 不修改 SDK DEX/gtcore，不构造或填补 SDK 定位对象，不改变运动记录、DeviceInfo、页面导航或其他可选权限策略，不新增地图/网络定位 SDK。

## Decisions

1. **两层前置检查。** Activity 请求 FINE/COARSE 并处理用户结果；ViewModel/定位协作者在调用点再次检查 FINE 和系统定位状态，覆盖直接调用与权限竞态。未授予 FINE 不调用 SDK，电话权限拒绝仍沿用降级。
2. **独立可取消定位协作者。** 基于现有 Android LocationManager 获取本轮开始后的有效回调，使用与运动记录一致的 GPS provider，等待最多 30 秒。校验时间、有限经纬度和范围；通过协程取消/超时的 finally 移除监听。缓存旧位置不满足成功条件。不启动运动服务，避免创建无关记录；不增加外部依赖。
3. **成功条件在 SDK 明文。** 获取首个有效位置后，通过现有 sdkDispatcher 调用原 SDK。解密后检查 st 与内层坐标，成功才写入 ProbeSession；宿主定位成功不等同 SDK 位置成功。SDK 原生调用不可取消，生命周期结束后的迟到结果不得重新发布。
4. **显式路径过滤。** 根运行时字段沿用既有删除集合，dev.app/ven 仍删除；其他嵌套路径完整保留，包括 gid 三字段、loc.loc.ts、sh 与非空数组/对象。使用 JSONObject/JSONArray 递归处理结构，不将数值或空字符串转换成其他类型。
5. **沿用现有状态。** 定位、SDK、解密和验证均属于 GENERATING；任一步失败走 failGeneration，使旧结果不可导出。等待中重建页面由 ViewModel 保持同一任务，onCleared 与失败路径释放定位资源。无需新增按钮。

## Risks / Trade-offs

- [室内冷启动 30 秒仍无 GPS] → 明确超时并允许用户到定位可用位置重试；不以空位置成功降级。
- [有宿主位置但 SDK 仍读不到] → 验证 SDK 输出后明确失败；使用真机验证 provider/缓存行为，不注入坐标绕过失败。
- [取消或异常残留监听] → 用可注入位置源覆盖超时、权限撤销、取消、重复回调与正常结束的清理测试。
- [Android 授权弹窗组合差异] → 真机验证拒绝、模糊、精确、再次申请与系统关闭定位。
- [过滤范围变化] → 合成 JSON 逐路径验证根字段移除与嵌套字段保留，覆盖字符串、空值和数组，不提交真实位置。

## Migration Plan

没有数据库迁移。发布后重新授予精确定位并重新生成文件；历史已过滤字段无法恢复。先验证 Vun 配套字段支持，再部署采集端。若回退，仅回退应用，已有运动数据库与导出文件不清理；旧采集端无法承诺有效坐标和嵌套字段完整性。
