# Spec Delta

## Purpose

在独立 DeviceInfo 页面复现源 Probe 的设备字段和报告契约，包括稳定设备标识、登录设备字段及 headerSign 明文参数，并支持本地保存与复制用于检查采集结果。

## ADDED Requirements

### Requirement: Complete source report contract
系统 SHALL 输出 raw_device、hm、login_payload、meta 四个根成员，保留源字段名称、类型及值规则。hm SHALL 包含源码实际的 22 个字符串字段：Accept-Encoding、CustomDeviceId、DeviceId、IMEI、androidId、appInstallTime、appUpdateTime、appVersion、blMac、cpuModel、deviceName、isRoot、logicPixel、nonce、osType、osVersion、physicPixel、timeStamp、token、tokenSign、uid、wifiMac，按键排序。login_payload SHALL 包含 device_model 和 os_version；meta SHALL 包含数字 timeStamp 和字符串 nonce。

#### Scenario: Collect report
- **WHEN** 用户点击采集 DeviceInfo
- **THEN** 显示有效 JSON，包含全部四部分及源 raw_device 的 Build、Android ID、屏幕、应用信息、root、osType 和签名盐字段

### Requirement: Preserve identity and field semantics
系统 SHALL 在新应用内首次采集时根据时间戳及源 MD5_KEY 生成 DeviceId 并持久化，后续采集和重启 SHALL 复用该标识；设备名称、逻辑/物理分辨率、首选 ABI、root 检测结果 SHALL 遵循源规则。appVersion、安装/更新时间和 Android ID SHALL 来自当前宿主；hm 的 IMEI、androidId、blMac、wifiMac、CustomDeviceId SHALL 保持空字符串，未登录 uid=-1、token/tokenSign 为空。

#### Scenario: Stable identity across restart
- **WHEN** 用户连续采集并在应用重启后再次采集
- **THEN** DeviceId 保持一致，时间戳及 nonce 更新，应用信息反映当前应用

### Requirement: Authenticated header signing parity
迁移后的设备采集辅助能力 SHALL 保留已登录 uid/token 参数组装，tokenSign SHALL 为 UTF-8 字符串 `timeStamp=<ts>&token=<token>&uid=<uid>&wh2016_swcampus` 的小写十六进制 MD5；默认 UI 采集 SHALL 使用源应用的未登录行为。

#### Scenario: Build authenticated headers
- **WHEN** 调用辅助能力传入 uid 和 token
- **THEN** 报告参数保留所传值，tokenSign 与给定 timeStamp 对应的源算法结果一致

### Requirement: Save copy and export report
系统 SHALL 在采集成功后自动写入应用私有目录 device_info_<ts>.json，并显示保存路径；提供复制完整报告和使用系统文件选择器导出已保存报告。采集失败 SHALL 显示错误，写入失败 SHALL 保留已采集报告供查看/复制且明确说明未保存。

#### Scenario: Successful collection and copy
- **WHEN** 用户采集成功后点击复制并导出
- **THEN** 剪贴板、私有报告文件与导出文件包含同一份完整有效 JSON

#### Scenario: Storage failure
- **WHEN** 采集成功但自动保存失败
- **THEN** 页面仍展示报告并允许复制，状态明确指出保存失败

### Requirement: Bounded root probes
系统 SHALL 保留源 root 检测项，同时为外部命令执行和输出读取设置有限超时并释放进程，超时 SHALL 按该项未命中处理，不能使采集永久卡住。

#### Scenario: Root command hangs
- **WHEN** 某个 root 探测命令没有结束
- **THEN** 该项在超时后退出，剩余报告仍可完成且页面恢复可操作
