# Spec Delta

## Purpose

为运动数据、GeeToken 和 DeviceInfo 提供统一且独立的采集导航，使用户在同一应用内切换工具并保留当前采集结果，同时保证正在运行的运动记录继续采样。

## ADDED Requirements

### Requirement: Three collection tabs
系统 SHALL 显示「运动采集」「GeeToken采集」「DeviceInfo采集」三个 Tab，默认进入运动采集；现有运动采集、历史记录、详情、编辑、删除及 v2 JSON/SHA-256 导出 SHALL 继续可用。

#### Scenario: Open new collection pages
- **WHEN** 用户点击任一新增 Tab
- **THEN** 显示对应采集页面，并可返回运动采集及其历史/详情页面

### Requirement: State and recording continuity
系统 SHALL 在 Tab 切换与 Activity 配置重建时保留当前 Token、明文、DeviceInfo 报告和操作状态；切换 SHALL 不停止正在运行的运动记录服务。已保存文件 SHALL 在应用重启后保留。

#### Scenario: Switch while recording and generating
- **WHEN** 运动记录进行中且用户生成 Token 后切换到 DeviceInfo 再返回
- **THEN** 运动采样继续，Token 和已生成的明文仍可查看和操作

#### Scenario: Recreate activity
- **WHEN** 用户旋转设备导致 Activity 重建
- **THEN** 恢复所选 Tab 和已有采集结果，不重复触发采集或保存

### Requirement: Independent asynchronous operations
系统 SHALL 在主线程之外执行采集、解密及文件操作，同一工具的冲突操作 SHALL 串行或禁用；两个新增页面 SHALL 有独立状态，异常 SHALL 在页面显示且不导致应用崩溃。

#### Scenario: Collect both tools
- **WHEN** GeeToken 生成期间用户切换到 DeviceInfo 并开始采集
- **THEN** 界面仍能操作，两页面分别展示自身结果和错误
