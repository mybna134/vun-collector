# Spec Delta

## Purpose

将运动采集的持久化历史列表独立放入 BottomSheet，用户无需离开当前采集界面即可浏览和管理已有记录，并继续使用详情编辑、删除和原有数据导出功能。

## ADDED Requirements

### Requirement: Independent motion history BottomSheet
系统 SHALL 由运动采集页的 `历史记录` 入口打开独立 BottomSheet，显示名称、开始时间、时长、状态和采样数量；无记录 SHALL 显示空状态。历史列表 SHALL 不再占用独立全页路由，且 SHALL 不包含 GeeToken 或 DeviceInfo 存档。关闭或下滑收起 SHALL 返回原运动采集界面，不停止活动记录。

#### Scenario: Open and dismiss history
- **WHEN** 用户采集中打开历史记录并通过返回键、点击外部或下滑关闭
- **THEN** 列表以 BottomSheet 展示并收起，底层采集状态不变且记录持续

### Requirement: History detail navigation and management
系统 SHALL 在同一 BottomSheet 内打开所选运动记录详情；详情返回 SHALL 回到列表，关闭 Sheet SHALL 回到采集。查看、分页、修改名称及备注、编辑非活动采样点、确认后删除非活动记录及 v2 JSON/SHA-256 导出 SHALL 延续既有合同；活动记录 SHALL 继续限制编辑采样点和删除。删除后 SHALL 返回已刷新的历史列表。

#### Scenario: Detail and back
- **WHEN** 用户在 Sheet 中选择记录并从详情返回
- **THEN** 先显示该记录详情，再回到历史列表，底层仍为运动采集页

#### Scenario: Edit export and delete
- **WHEN** 用户修改非活动记录并导出，再确认删除该记录
- **THEN** 导出包含修改且符合既有 v2/SHA-256 规则，删除后记录及采样点移除并刷新 Sheet 列表
