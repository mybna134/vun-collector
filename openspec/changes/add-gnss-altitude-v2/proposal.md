# GNSS 海拔采集与 v2 JSON 回放

## 问题

sports_monitor 当前仅记录 GPS 经纬度和水平精度，导出 schemaVersion 为 1。LocationSpoofer 的预制记录没有采集海拔，无法按真实记录回放高度。

## 拟实现行为

1. 参考 `/home/mybna134/Projects/reverse/analysis/gnss_altitude_tracker.cpp` 的 GGA 高度换算和 JNI 回调方式，在记录服务中监听 NMEA GGA。优先使用有效且与 GPS 定位时间匹配的 GGA；无匹配 GGA、数据不完整或无效时，将系统 GPS `Location.altitude` 经 JNI 处理并保存。备用来源已由用户确认为系统 GPS，此方案无需高德 SDK 或 Key 设置。
2. 校验 GGA 句型、校验和、定位质量、米制单位及完整有限数值。保留 GGA 第 9 字段的海平面高度及第 11 字段的大地水准面差值；两者相加得到与 Android Location.altitude 一致的 WGS84 椭球高。不得把缺失差值当作零。
3. 对 NMEA 与 GPS 回调进行有限时间匹配，并为回调先后顺序保留短暂等待窗口。过期、上一记录或时间不匹配的 GGA 不能覆盖当前 GPS 高度。无有效海拔时保存 null；有效零米和负海拔均可记录。
4. 海拔随 GPS 点落库，增加 Room 数据库迁移，已有记录保留且海拔为 null。开始、停止和销毁服务时正确注册、清理监听及 JNI 会话状态；继续展示采集来源和最新海拔。
5. 导出改为 schemaVersion: 2，GPS 点包含下述海拔字段，缺失值显式为 null。现有完整文件暂存、导出失败清理和 SHA256 规则继续有效。旧数据库记录也可导出 v2，缺失海拔不补造。
6. LocationSpoofer 的 JSON 手动导入及转换工具仅接受 schemaVersion: 2；明确拒绝 v1、缺少版本及未知版本，提示使用新版 sports_monitor 重新导出。SHA256 有则按原始字节校验，没有则跳过。更新版本检查、字段校验、预制二进制及运行时回放链路，使用录制海拔并加入少量有界噪声，海拔缺失时不宣称存在有效海拔，也不从手动配置或生成波形补造。

## v2 GPS 海拔字段

现有 GPS 字段不变，每点必须增加以下键：

| 字段 | 类型 | 含义 |
| --- | --- | --- |
| altitudeMeters | number / null | WGS84 椭球高，米 |
| altitudeSource | string / null | 有效椭球高来源：nmea_gga 或 gps_jni；无有效值为 null |
| altitudeTimestampEpochMs | integer / null | 选用海拔的实际来源时间 |
| altitudeMslMeters | number / null | 同次匹配 GGA 的海平面高度原值，米 |
| geoidSeparationMeters | number / null | 同次匹配 GGA 的大地水准面差值原值，米 |

altitudeMeters、altitudeSource、altitudeTimestampEpochMs 三者同时存在有效值或同时为 null。GGA 缺少差值而 GPS 备用有效时，保留可用 GGA 原始字段，但椭球高来源标记为 gps_jni。所有非 null 数值必须有限。

## 范围与验证

本次采集和回放海拔，不新增累计爬升算法。参考代码的演示解析器需增加输入校验，不能直接照搬其缺失差值补零行为。

验证 GGA 解析、来源优先级、时间匹配、JNI 会话隔离、数据库迁移和导出，及 LocationSpoofer v2 导入、旧版本拒绝、可选摘要、损坏数据、海拔回放及缺失值。运行两项目相关单元测试与 Android 构建；设备条件允许时验证实际 GNSS/NMEA 回调。

## 审批要求

sports_monitor/AGENTS.md 要求在修改生产代码前提交 OpenSpec 提案并等待明确批准。本提案获批后，再将 OpenSpec 文档落入 sports_monitor 并实施两项目相匹配的格式变更。


## 状态

用户已明确批准实施；生产实现、迁移、导出及对应导入回放已完成。验证记录见 tasks.md。
