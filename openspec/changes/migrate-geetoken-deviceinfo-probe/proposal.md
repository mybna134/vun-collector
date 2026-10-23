# Proposal

## Why

当前项目仅提供传感器与 GPS 记录；GeeToken 和设备报告需另装 geetoken-probe。将源项目的全部采集功能集成到同一应用，便于在采集运动数据的同时生成、解密和保存设备样本。

## What Changes

- 在现有 Compose UI 中新增「GeeToken采集」「DeviceInfo采集」两个 Tab，现有采集、历史、详情入口归入「运动采集」Tab。
- GeeToken 完整支持无配置和带配置生成（沿用源 appId、devInfo=true、alInfo=true、level=1）、状态/耗时/长度/magic 展示、解密明文、复制 Token/明文、存档及历史展示。
- DeviceInfo 完整支持 raw_device、hm、login_payload、meta 报告、复制和自动保存，保留持久化 DeviceId、root 检测、签名计算及已登录 headerMap 辅助能力。
- 将原始 GeeTest DEX 与 arm64-v8a/libgtcore.so 纳入项目自包含构建，实际调用原 SDK；其他 ABI 上 GeeToken 明确显示不可用，其他功能仍可使用。
- 采集、解密和文件操作异步执行，切换 Tab 保留状态；权限拒绝、解密失败、文件保存失败等显示可理解的状态。
- 保存沿用 geetokens.txt、gee_plain_<ts>.json、device_info_<ts>.json；提供系统文件选择器导出，便于取出新版应用的私有文件。

## Capabilities

### New Capabilities

- `collection-tabs`: 三个采集 Tab 的导航、状态保持及运动记录连续性。
- `geetoken-collection`: 原始 SDK 两种生成模式、解密、复制、存档、历史和架构/权限兼容。
- `device-info-collection`: 源设备字段、持久化标识、签名辅助方法、JSON 报告和保存/复制。

### Modified Capabilities

无。主 specs 目录尚无已同步规范；本变更保持已完成变更所定义的运动记录和 v2 JSON/SHA-256 行为。

## Impact

- 修改 MainActivity 导航，新增独立采集页面、ViewModel、SDK 适配和文件仓库；不修改运动记录数据库结构。
- 更新 Gradle 资源/原生库打包与 Manifest 权限，沿用现有 applicationId 和 release 签名。
- 来源为 geetoken-probe Java 源文件、原始 libgtcore.so 及其 build.sh 引用的 analysis/recovered_dex/classes4.dex；不移植原 APK、手工构建流程或签名私钥。
- 原 DEX 约 9.5 MB 且含额外类，须隔离加载以避免类冲突，APK 体积将增加。GeeToken 的宿主包名、签名及 DeviceInfo 的应用版本/安装时间会反映本项目，不能要求与旧应用字节一致。
- 功能迁移不自动搬运旧应用私有历史/DeviceId：两应用沙箱独立，新应用维护自己的稳定标识和存档。
