# Spec Delta

## Purpose

为 DeviceInfo 提供生成后直接导出最新报告的单一流程，取消自动保存和文件列表，同时保留当前真实请求的设备字段语义及跨重启稳定标识，保证输出兼容。

## ADDED Requirements

### Requirement: Generate current device report in memory
系统 SHALL 通过 `生成` 在主线程外采集真实设备信息，将有效 JSON 作为最新内存结果。报告 SHALL 保留当前 `hm` 根成员及以下 15 个字符串字段：`physicPixel`、`logicPixel`、`isRoot`、`osType`、`IMEI`、`blMac`、`cpuModel`、`deviceName`、`appInstallTime`、`androidId`、`DeviceId`、`appUpdateTime`、`wifiMac`、`CustomDeviceId`、`osVersion`；字段含义、空值规则和 root 有限超时 SHALL 延续当前实现。DeviceId SHALL 复用既有持久化标识，不因取消报告持久化而每次变化。

#### Scenario: Generate report
- **WHEN** 用户点击 `生成` 且采集成功
- **THEN** 形成当前字段合同的有效 JSON 并启用导出，不自动写入报告文件

#### Scenario: Reuse identity
- **WHEN** 用户重启进程后重新生成 DeviceInfo
- **THEN** 无上一轮可导出报告，重新生成后 DeviceId 仍与原标识一致

### Requirement: Latest device JSON export
系统 SHALL 使用系统文件选择器以 `application/json` 导出最新报告为 UTF-8 `device_info_<时间戳>.json`，内容 SHALL 与最新采集 JSON 相同。输出流关闭成功后 SHALL 报告完成；取消或失败 SHALL 保留内存报告供重试，写入失败 SHALL 尽力清理目标，无法清理时提示可能残留不完整文件。

#### Scenario: Export only latest report
- **WHEN** 用户先生成 A 再生成 B 并导出
- **THEN** 文件仅包含 B 的报告，无法选择 A 或旧版已保存报告

#### Scenario: Collect failure after success
- **WHEN** 已有报告后开始新一轮生成且采集失败
- **THEN** 提示失败且导出禁用，不再导出旧报告
