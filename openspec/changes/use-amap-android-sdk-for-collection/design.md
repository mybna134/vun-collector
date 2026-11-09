# Design

## Context

见 proposal.md。`LocationAwaiter` 和 `RecordingService` 当前使用 GPS `LocationManager`；`GeoCity` 使用 Web Key 请求逆地理。`RecordingExporter` 和城市 JSON 将经纬度视为 GPS/WGS84。高德官方文档说明定位 SDK 可返回位置及行政区，但国内结果为高德坐标；仅设备模式和 GPS 首次回调可能没有地址。NMEA/GGA 与运动传感器仍需 Android API。

## Goals / Non-Goals

**Goals:** 让三处定位入口只使用 SDK 有效 GCJ-02 结果，保留坐标原值、来源与历史 WGS84 记录，允许 Key 尚未提供时构建，并在配置 Key 后验收真实设备行为。

**Non-Goals:** 不替换 GeeToken SDK 内部采集，不把高德 Web Key 当作 Android Key，不转换坐标，不让 SDK 的设备扫描数据替代 Android 原始传感器事件，也不为位置和城市自动启用 Android 或 Web 回退。

## Decisions

1. **封装 SDK 位置结果。** 建立统一的位置结果模型，包含时间、经纬度、精度、可选海拔、来源和坐标系；一次性等待与连续记录复用 SDK 有效性、实时性和去重校验。SDK 无有效结果时报告失败或等待，不注册 Android 位置监听作为替代。备选为三处各自处理 SDK；这会使超时和结果校验不一致。
2. **保留坐标原值并显式标注。** 使用 SDK 的 `getCoordType()` 确认 GCJ-02，只把该类型的新位置写入城市和运动结果；不做坐标转换。城市 JSON 的 `coordsys` 从固定 `gps` 改为 GCJ-02，运动数据库增加来源/坐标系列，旧行迁移为 Android GPS/WGS84。SDK 在海外可能返回 GPS 坐标，因此非 GCJ-02 或未知类型先报告不可用，再向用户请示。备选为转换坐标或混用不同坐标系，均不符合本次要求。
3. **城市信息只用 SDK 逆地理。** 对 SDK 位置开启地址信息并按版本需要请求异步逆地理；城市名缺失则失败，省/区缺失则保留缺失状态，不通过 Android `Geocoder` 或 Web API 补齐。用户已决定从城市 JSON 移除旧 Web 请求参数 `radiusMeters`。保留 `u_sign` 的 SIM 独立采集规则。移除城市流程的 Web Key 输入与请求代码，页面显示 SDK 状态/Android Key 配置提示。
4. **Android Key 使用构建配置。** 从未跟踪的本地属性或构建环境读取独立的 Android SDK Key，生成 manifest metadata；缺失时使用空占位并跳过 SDK 初始化，依赖位置的流程提示不可用。待用户给 Key 后配置并做真实设备验证。包名从 `applicationId` 读取，SHA1 从实际 debug/release 签名证书读取；两种签名分别报告。备选为复用内置 Web Key；Key 类型和签名绑定规则不同。
5. **隐私、生命周期与海拔。** 在 SDK 客户端创建前先展示高德隐私说明并记录选择，再调用官方隐私接口；拒绝时不启动 SDK，依赖位置的流程失败。客户端在采集启动时创建、结束或取消时停止并销毁。运动传感器、NMEA/GGA、设备和 SIM 字段继续由 Android API 独立采集。用户决定新位置的主海拔字段只写 SDK 原值，不标高度基准；匹配同一固定点的 NMEA/GGA 只保留在独立衍生字段，不覆盖主海拔值。

## Risks / Trade-offs

- [SDK 的实际响应与官方文档或坐标区域边界存在差异] → 以 SDK 返回的坐标类型/区域和设备测试核对，不能确定时不写错坐标系。
- [SDK 逆地理缺少城市、省或区] → 明确提示缺失字段，不自动补值；发现影响预期结果的缺值时向用户请示。
- [高德隐私授权或 Key 缺失] → 位置和城市流程明确不可用，独立的 Android 原始数据采集继续可用。
- [后台持续定位、SDK 与 NMEA 时间不齐] → 设备测试覆盖锁屏与中断，NMEA 高度只匹配可确认的同一固定点。

## Migration Plan

先接入依赖、配置与隐私流程，再统一 SDK 位置模型和三处调用点，最后迁移数据库/导出格式及 UI。验证无 Key 构建与位置不可用状态后读取实际签名 SHA1、包名给用户申请 Android Key；收到 Key 后再做 SDK 真机采集、GCJ-02 原值、逆地理和后台中断验证。旧 Web Key 偏好可保留以兼容历史数据，但新城市流程不再读取它或调用 Web 服务。
