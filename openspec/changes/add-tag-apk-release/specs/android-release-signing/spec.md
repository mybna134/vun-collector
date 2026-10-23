# Spec Delta

## Purpose

支持 CI 环境变量与现有本地签名属性共用一套 release 构建，保证正式自动发行必须有效签名，同时允许没有签名配置的本地开发继续构建并保护所有签名秘密。

## ADDED Requirements

### Requirement: Signing source precedence and local fallback
release 签名 SHALL 优先使用完整环境变量配置，否则使用完整本地 keystore.properties；完全没有签名配置的本地 release SHALL 可生成未签名 APK，debug 构建 SHALL 不受缺失 release 凭据影响。任一来源的显式部分配置或无效配置 SHALL 在 release 打包时明确失败，不得混合两种来源的密码。自动发布 SHALL 拒绝缺少 Secrets 或未签名 APK。

#### Scenario: CI signing wins
- **WHEN** 同时提供完整环境变量及本地配置
- **THEN** 使用环境变量指定的密钥，本地配置不覆盖也不阻断该来源

#### Scenario: Local signing and missing configuration
- **WHEN** 本地环境没有签名变量
- **THEN** 有完整本地属性时按原密钥签名，无本地属性时允许 unsigned release，显式不完整属性时报错

### Requirement: Ephemeral CI keystore and credential isolation
工作流 SHALL 只使用 KEYSTORE_BASE64、KEYSTORE_PASSWORD、KEY_ALIAS、KEY_PASSWORD 四个 Secrets，通过环境输入解码到 RUNNER_TEMP，限制临时文件权限，并在成功或失败后清理。凭据 SHALL 不写入仓库目录、日志、构建参数或上传附件；缓存及上传范围 SHALL 排除 keystore。仓库 SHALL 忽略所有 *.jks、*.keystore 及现有签名属性文件。

#### Scenario: Restore and cleanup
- **WHEN** CI 还原密钥并完成或中断构建
- **THEN** 密钥仅位于 runner 临时目录，清理步骤无论前序成败均执行，Release 附件仅为明确指定的 APK
