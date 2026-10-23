# ADDED Requirements

## Requirement: NMEA 优先的真实海拔采集

系统 SHALL 在记录期间监听 NMEA GGA，优先使用通过校验、有效且时间匹配的 GGA 海拔。统一海拔 SHALL 使用 WGS84 椭球高；GGA 海平面高度加大地水准面差值得到统一值，并保存两个原始值。

### Scenario: 同时具有 GGA 和 GPS 海拔
- WHEN 一次 GPS 采样具有时间匹配且完整有效的 GGA
- THEN 采用 GGA 换算后的海拔，来源为 nmea_gga，并保存来源时间与原始高度字段

### Scenario: GGA 不可用
- WHEN GGA 缺失、过期、无有效定位、校验错误或无法得到椭球高
- THEN 如果 GPS hasAltitude 为真且海拔有限，使用经 JNI 处理的系统 GPS 海拔，来源为 gps_jni；否则统一海拔及其来源时间为 null

### Scenario: GGA 只有海平面高度
- WHEN GGA 有有效海平面高度但没有大地水准面差值
- THEN 保留海平面高度原值，不能假定差值为零，统一海拔走 GPS JNI 备用路径

### Scenario: 生命周期与旧记录
- WHEN 停止后重新开始或读取迁移前记录
- THEN 不沿用上一会话的海拔；旧记录仍可读取，其海拔字段为 null

# MODIFIED Requirements

## Requirement: v2 导出与回放契约

sports_monitor SHALL 导出 schemaVersion 为 2 的完整 UTF-8 JSON，GPS 点 SHALL 包含 proposal.md 定义的五个海拔键。SHA256 SHALL 沿用现有原始字节计算及末尾追加规则。

### Scenario: 最新格式导入
- WHEN LocationSpoofer 导入有效 v2 JSON
- THEN 校验海拔契约并保存实际海拔，存在 SHA256 时验证摘要；不存在时允许导入

### Scenario: 旧格式导入
- WHEN schemaVersion 为 1、缺失或不受支持
- THEN 拒绝导入且保留当前预制记录，提示使用最新版 sports_monitor 重新导出

### Scenario: 海拔回放
- WHEN 预制回放当前位置具有有效录制海拔
- THEN 回放录制海拔并叠加少量有界噪声；缺失海拔不使用手动配置或自动波形补造
