# Tasks

## 1. SDK 接入与配置

- [x] 1.1 添加高德 Android 定位 SDK 的固定版本依赖、仓库与 manifest 配置，验证 `assembleDebug` 可解析并打包 SDK。
- [x] 1.2 增加独立 Android Key 构建配置和缺失 Key 状态，验证无 Key 时仍可构建、依赖位置的流程不可用且不创建 SDK 客户端。
- [x] 1.3 增加高德隐私告知、同意记录与 SDK 初始化顺序，验证拒绝时不会启动 SDK、同意后才调用隐私接口与客户端。

## 2. 统一 SDK 位置源

- [x] 2.1 建立含来源/坐标系的 SDK 位置模型和 GCJ-02 有效性校验，测试时间戳、缓存结果、超时和非 GCJ-02 拒绝；验证没有 Android 位置自动回退。
- [ ] 2.2 将 `LocationAwaiter` 接入统一位置源，验证 GeeToken 预定位成功/失败流程仍按现有位置有效性规则运行。
- [ ] 2.3 将 `RecordingService` 接入连续 SDK 位置源，同时保留 Android NMEA 和传感器独立采集，验证真实回调去重、SDK 中断时无替代点、主海拔写 SDK 原值且不标基准、NMEA 衍生字段只按同一固定点匹配。

## 3. 城市与持久化

- [x] 3.1 将城市采集改为只使用 SDK 定位及逆地理，移除 Web API 请求、Web Key 输入和旧 `radiusMeters` 字段，更新页面的 SDK/Key 状态；测试城市缺失时不补值及 SIM `u_sign` 行为。
- [x] 3.2 为运动位置点增加来源和坐标系列并迁移旧 GPS 行，更新 JSON 导出，验证新点保持 GCJ-02 原值、旧点保持 WGS84。
- [x] 3.3 更新采集说明、隐私说明与 Key 配置文档，核对新城市流程不使用 Web Key、Web API 或 Android `Geocoder`。

## 4. 集成验收与签名信息

- [x] 4.1 运行单元测试、设备测试与构建，验证无 Key 时位置/城市流程不可用、独立 Android 原始数据仍能采集及导出格式正确。
- [x] 4.2 从实际 debug 和可用的 release 签名证书提取 SHA1，并连同 APK `applicationId` `com.collector.vun` 提供给用户申请 Android Key；核对 `signingReport` 或证书输出。
- [ ] 4.3 用户提供 Android Key 后配置并在真机验证 SDK 定位、逆地理、权限拒绝、非 GCJ-02 拒绝和后台记录；若发现 SDK 无法提供预期字段，先向用户请示再决定处理方式，并保留验证结果。
