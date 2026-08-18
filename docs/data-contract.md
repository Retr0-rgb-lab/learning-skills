# 数据合约

主题根：`learn/topics/<topic-id>/`

| 文件 | 职责 |
|------|------|
| meta.yaml | 目标、深度、时间盒 |
| learner-model.yaml | 节点掌握 + 证据 |
| dependency-graph.md | mermaid + 状态表 |
| plan.md | unit 序与 exit_check |
| session-checkpoint.yaml | phase / awaiting |
| errors.md | 错题与标签 |
| review-queue.md | 间隔队列 |
| notes/ | 人类可读导出 |
| sources/ | 核查摘要 |

字段细节：`schemas/`。空树：`templates/learn-topic/`。

**掌握**：unknown → fragile → ok → mastered（mastered 需间隔成功）。
