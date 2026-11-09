# Spec Delta

## Purpose

统一位置和城市信息的采集来源，保持高德 Android 定位 SDK 返回的 GCJ-02 坐标原值，并使不属于定位 SDK 能力范围的原始数据继续独立采集。

## ADDED Requirements

### Requirement: 高德 SDK 是唯一位置来源
GeeToken 生成前定位等待、城市信息采集及运动位置记录 SHALL 只接收高德 Android 定位 SDK 在本次操作中返回的实时、有效位置。系统 SHALL 拒绝无效、缓存、过期或无法确认坐标系为 GCJ-02 的结果；SDK 未配置、失败或超时时 SHALL 显示原因，且不得自动改用 Android 定位 API 或复制旧位置生成新采样。

#### Scenario: SDK 返回有效 GCJ-02 位置
- **WHEN** 高德 SDK 在本次采集中返回新鲜、有效且标示为 GCJ-02 的位置
- **THEN** 系统使用该位置原值并记录来源为高德 SDK

#### Scenario: SDK 无法给出有效位置
- **WHEN** SDK 缺少 Key、授权被拒、发生错误、超时或返回无效位置
- **THEN** 相关流程报告具体原因，不自动读取 Android 位置，不生成成功的位置采样或城市导出

#### Scenario: SDK 返回其他或未知坐标系
- **WHEN** SDK 返回的坐标类型不是可确认的 GCJ-02
- **THEN** 系统不转换、不误标为 GCJ-02，并报告该结果暂不可用以待用户决定

### Requirement: 城市信息只由高德 Android SDK 提供
系统 SHALL 使用高德 Android 定位 SDK 的逆地理能力获取城市、省和区，并将其与同一次有效 SDK 位置一起导出。城市导出 SHALL 移除仅属于旧 Web 请求参数的 `radiusMeters`。系统 SHALL 不再请求高德 Web API，也不得使用 Android `Geocoder` 或其他来源补齐 SDK 缺失的行政区字段。必需的城市名缺失时 SHALL 报告缺失并停止成功导出；可选字段缺失时 SHALL 保持缺失状态，不伪造值。

#### Scenario: SDK 返回完整城市结果
- **WHEN** SDK 为本次有效位置返回城市、省和区
- **THEN** 城市导出使用 SDK 字段与原始坐标，并将坐标系标记为 GCJ-02

#### Scenario: SDK 未返回必需城市名
- **WHEN** SDK 定位成功但逆地理未返回有效城市名
- **THEN** 系统报告缺少城市名，不调用 Web API 或 Android 地理编码补值，也不产生成功的城市导出

#### Scenario: SDK 未返回可选字段
- **WHEN** SDK 返回城市名但省或区缺失
- **THEN** 系统保留已取得的 SDK 字段和缺失字段状态，不从其他来源推断或补值

### Requirement: 原始数据独立采集与坐标兼容
高德 SDK 不提供的运动传感器事件、NMEA/GGA、DeviceInfo 和 SIM 字段 SHALL 继续按现有规则由 Android API 独立采集，不作为位置或城市信息的回退。每个新运动位置点 SHALL 标明来源与 GCJ-02 坐标系；迁移前的 Android GPS 记录 SHALL 保留 WGS84 含义。新位置点的海拔值 SHALL 直接保存 SDK 返回值，不标注高度基准；匹配的 NMEA/GGA 原始衍生字段 SHALL 单独保存，不得覆盖 SDK 海拔值，不匹配时不得附加到该位置。

#### Scenario: 运动传感器或设备字段
- **WHEN** 用户采集 SDK 不提供的运动传感器、设备或 SIM 字段
- **THEN** 系统按已有 Android API 规则采集这些独立字段

#### Scenario: 运动位置与历史记录
- **WHEN** 用户导出新旧运动记录
- **THEN** 新 SDK 位置带有 GCJ-02 来源标记，旧 Android GPS 位置仍标为 WGS84

#### Scenario: NMEA 高度不匹配
- **WHEN** Android NMEA/GGA 高度与 SDK 位置不能确认属于同一固定点
- **THEN** 系统不将该高度写入此位置点

#### Scenario: SDK 与 NMEA 同时提供高度
- **WHEN** SDK 返回海拔值，且同一固定点存在 NMEA/GGA 高度
- **THEN** 位置点的主海拔字段保持 SDK 原值，NMEA/GGA 衍生字段单独保存，界面不标高度基准

### Requirement: GeeToken 输出与 SDK 缺值处理
GeeToken 的加密结果 SHALL 继续由 GeeToken SDK 生成并按现有规则验证；宿主 SHALL 不用高德位置填充其内部定位字段。运动记录 SHALL 仅保存实际 SDK 回调。实施中发现高德 SDK 不能提供预期字段时，SHALL 暂停该字段的自动替代方案并向用户请示。

#### Scenario: GeeToken 预定位成功
- **WHEN** 用户发起 GeeToken 生成且高德 SDK 返回有效 GCJ-02 位置
- **THEN** 系统再调用 GeeToken SDK，并按原有规则验证其内部位置

#### Scenario: 连续记录中断
- **WHEN** 运动记录期间 SDK 停止返回有效位置
- **THEN** 系统显示等待或错误状态，且不生成替代位置点

### Requirement: Android Key 与隐私门槛
系统 SHALL 将 Android SDK Key 与旧 Web 服务 Key 区分；未配置 Android SDK Key 时 SHALL 明确提示 SDK 未启用，且不得暗中调用旧 Web API 或 Android 定位补值。系统 SHALL 在实例化高德 SDK 客户端前完成其要求的隐私告知与授权流程。构建和交付说明 SHALL 给出实际 `applicationId` 及相应签名证书 SHA1 的获取方式。

#### Scenario: 尚未提供 Android Key
- **WHEN** 应用未配置 Android SDK Key
- **THEN** 应用仍可构建，依赖 SDK 的位置与城市流程提示不可用，独立的 Android 原始数据采集不受影响

#### Scenario: 用户拒绝高德隐私授权
- **WHEN** 用户未同意高德 SDK 隐私条款
- **THEN** 系统不创建或启动高德定位客户端，依赖 SDK 的流程不产生成功结果
