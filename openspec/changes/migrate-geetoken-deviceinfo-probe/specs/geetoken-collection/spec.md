# Spec Delta

## Purpose

在当前运动记录应用内提供源 GeeToken Probe 的完整真实 SDK 生成、解密、复制及存档能力，使用户能够观察两种配置下的真实采集结果并保存样本用于后续对比。

## ADDED Requirements

### Requirement: Two original SDK generation modes
系统 SHALL 提供无配置和带配置两种生成入口，调用原始 GeeTest SDK 产生真实 Token。带配置模式 SHALL 使用 appId=`mhs0n2abroy5ayzs5adtslzzsk1cya6h`、devInfo=true、alInfo=true、level=1。

#### Scenario: Generate without configuration
- **WHEN** 用户点击无配置生成
- **THEN** 使用原 SDK 无配置入口，显示返回 Token、耗时、长度及 R0VFAA 前缀检查结果

#### Scenario: Generate with configuration
- **WHEN** 用户点击带配置生成
- **THEN** 使用指定参数调用原 SDK 配置入口，展示真实返回内容，并清除此前 Token 对应的旧明文

### Requirement: Permission and architecture handling
系统 SHALL 按 Android 版本声明源 SDK 所需的可用权限，并在采集需要时申请位置及电话状态运行时权限；拒绝权限 SHALL 允许继续采集 SDK 可提供的数据并显示降级情况。只有可加载 arm64 原生库的进程 SHALL 启用 Token 生成，其他架构 SHALL 显示不可用原因且保留运动与 DeviceInfo 功能。

#### Scenario: Denied optional permissions
- **WHEN** 用户拒绝运行时权限后执行生成
- **THEN** 继续调用 SDK 或展示实际 SDK 错误，不能把缺失数据伪造为成功采集

#### Scenario: Unsupported ABI
- **WHEN** 应用在不支持原生库的进程架构运行
- **THEN** Token 生成不可用且明确提示 arm64 限制，其他 Tab 仍能使用

### Requirement: Decode and copy generated token
系统 SHALL 解密当前 Token 的 Base64 GEE 00 05 信封，使用源 AES-256-CBC 密钥与兼容填充语义输出 UTF-8 明文；有效 JSON SHALL 正确格式化且不改变字符串值。系统 SHALL 校验信封长度、密文长度/块对齐和填充边界，错误 SHALL 显示且不崩溃；提供复制原始 Token 和成功明文的入口。

#### Scenario: Decode a valid generated token
- **WHEN** 用户生成 Token 后点击解密及复制
- **THEN** 页面显示与源解密结果一致的明文，剪贴板分别获得完整 Token 或明文

#### Scenario: Empty or malformed token
- **WHEN** 尚未生成 Token 或输入内容无法解密
- **THEN** 提示先生成或显示明确错误，不复制错误消息为明文

### Requirement: Archive and persistent history
系统 SHALL 将每次主动存档的时间和完整 Token 追加到应用私有目录的 geetokens.txt，尝试解密并另存 gee_plain_<ts>.json；明文保存失败 SHALL 不阻止 Token 存档，但状态 SHALL 说明部分成功。历史展示 SHALL 与源应用相同显示最新尾部至多 4000 字符，完整文件 SHALL 保留全部条目。

#### Scenario: Save and reopen
- **WHEN** 用户存档后重启应用并打开 GeeToken采集
- **THEN** 最新历史仍显示，文件内保留时间、完整 Token 和成功解密的原始 JSON

#### Scenario: Partial archive failure
- **WHEN** Token 可存档但解密或明文写入失败
- **THEN** Token 仍进入历史，页面明确标记明文未保存

### Requirement: Export saved artifacts
系统 SHALL 提供通过系统文件选择器导出完整 Token 历史及已保存明文文件的操作；输出流成功关闭后才报告导出成功，取消或写入失败 SHALL 不破坏源存档。

#### Scenario: Export full history
- **WHEN** 用户选择导出历史并指定文件位置
- **THEN** 所选文件包含完整 geetokens.txt 内容，成功后报告完成
