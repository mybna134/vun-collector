# Spec Delta

## Purpose

将 GeeToken 的配置生成和自动解密串成一次生成操作，让用户只需生成即可导出最新的设备明文 JSON，避免手动解密、存档以及多版本文件造成的数据错配。

## ADDED Requirements

### Requirement: Configured generation with automatic decryption
系统 SHALL 仅提供 `生成` 入口，使用原 SDK 的带配置调用，参数为 appId=`mhs0n2abroy5ayzs5adtslzzsk1cya6h`、devInfo=true、alInfo=true、level=1，并自动解密返回 Token。只有解密并解析为有效 JSON 后 SHALL 标记本轮成功。生成、解密 SHALL 在主线程外执行。可选权限被拒绝后 SHALL 继续尝试真实 SDK 采集并提示降级；错误 SHALL 提示且不崩溃，不提供无配置模式。

#### Scenario: Generate configured JSON
- **WHEN** 用户点击 `生成` 且 SDK 返回有效 Token
- **THEN** 系统使用指定配置生成并自动解密，无须用户额外操作，成功后启用导出

#### Scenario: Decryption failure
- **WHEN** SDK 返回值无法解密或明文不是有效 JSON
- **THEN** 提示失败并禁用导出，不用上一轮明文代替

#### Scenario: Denied optional permissions
- **WHEN** 用户拒绝位置或电话状态权限后生成
- **THEN** 系统尝试带配置生成，提示降级或真实 SDK 错误，不填造缺失字段

### Requirement: Latest decrypted JSON export
系统 SHALL 通过系统文件选择器以 `application/json` 将最新成功结果写为 UTF-8 `gee_plain_<时间戳>.json`；内容 SHALL 为本次自动解密 JSON 并沿用现有导出字段过滤，递归去除 `app`、`ven`、`ts`、`appId`、`sign`、`uid`、`token`、`timeStamp`、`nonce`、`tokenSign`、`headerSign`、`appVersion`，其他字段及值保持原语义。系统 SHALL 不导出原始 Token 或累计历史；输出流成功关闭后才报告成功。失败 SHALL 尽力删除不完整目标并保留内存结果供重试，无法清理时提示可能残留不完整文件。

#### Scenario: Export latest plaintext
- **WHEN** 用户先成功生成 A 再成功生成 B 并导出
- **THEN** 文件为 B 的解密及过滤结果，不含 A、原始 Token 或历史条目

#### Scenario: Failed destination write
- **WHEN** 文件提供者在写入或关闭时失败
- **THEN** 不报告导出成功，尽力清理目标并允许重新导出 B
