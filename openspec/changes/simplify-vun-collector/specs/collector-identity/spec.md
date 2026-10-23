# Spec Delta

## Purpose

为所有采集工具提供一致的 Vun Collector 应用标识和顶部导航外壳，使用户能在启动器及各采集页面识别应用，同时继续使用既有安装和本地运动数据。

## ADDED Requirements

### Requirement: Application name and Info icon
系统 SHALL 将启动器应用名显示为 `Vun Collector`，使用圆形 `i` 的 Info Icon 作为普通及圆形启动图标，并保留原应用安装身份及本地运动记录。

#### Scenario: Launch updated application
- **WHEN** 用户升级后查看启动器并打开应用
- **THEN** 显示 Info 图标和 `Vun Collector` 名称，既有运动记录仍可访问

### Requirement: Shared application bar
系统 SHALL 在三个采集 Tab 的统一 AppBar 显示精确标题 `Vun Collector`，内容 SHALL 避开系统栏和 AppBar 遮挡。

#### Scenario: Switch collection tabs
- **WHEN** 用户依次进入运动采集、GeeToken 和 DeviceInfo
- **THEN** 各 Tab 顶部均有同名 AppBar，页面操作可见且可点击
