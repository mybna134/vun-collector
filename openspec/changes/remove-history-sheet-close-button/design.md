# Design

## Context

RecordsPage 在标题 Row 中显示“关闭”按钮，onBack 回调仅供此按钮使用；ModalBottomSheet 已独立处理 dismiss。现有设备测试以“关闭”文本识别列表或触发关闭。

## Goals / Non-Goals

移除按钮及无用回调，保留 Sheet 的其他交互与详情返回。

## Decisions

删除 RecordsPage 中按钮，将顶部 Row 简化为标题 Text，并删除参数及调用点的 onBack。更新现有设备测试：用历史标题/列表内容定位并断言无关闭按钮，用系统返回关闭；不新增镜像测试。

## Risks / Trade-offs

- 旧测试依赖按钮 → 同步更新定位与关闭动作，检查详情返回仍到列表。
- 完整设备验证可能继续受当前环境限制 → 如实记录未执行项。
