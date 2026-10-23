# Spec Delta

## Purpose

简化运动历史 BottomSheet 顶部操作区域，移除显式关闭按钮并保留系统返回及手势关闭能力，让用户仍可浏览、打开详情并返回采集界面。

## ADDED Requirements

### Requirement: History list without close button
运动历史列表顶部 SHALL 仅显示“历史记录”标题，不显示“关闭”按钮。系统 SHALL 保留返回键、下滑和点击外部关闭 BottomSheet，并保留详情的“返回列表”操作。

#### Scenario: Open history list
- **WHEN** 用户打开运动历史 BottomSheet
- **THEN** 标题区域显示“历史记录”，不存在“关闭”按钮，记录列表仍可操作

#### Scenario: Dismiss without button
- **WHEN** 用户在历史列表按返回键、下滑 Sheet 或点击外部
- **THEN** Sheet 关闭并返回采集界面，正在运行的记录继续

#### Scenario: Back from detail
- **WHEN** 用户从历史详情点击“返回列表”
- **THEN** 回到同一 Sheet 中的历史列表，顶部仍不显示“关闭”按钮
