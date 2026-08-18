# 数据契约

## 节点状态

```text
unknown → open → exploring → drafted → evidenced → mastered
                              ↘ debt
```

| 状态 | 含义 |
|------|------|
| open | 图上可见，Brief 可极简 |
| exploring | 已发完整 brief，等 raw |
| drafted | 已 ingest，未过 evidence |
| evidenced | 微测/实践/人审通过 |
| mastered | review 提取仍稳 |
| debt | 已知缺口 |

## 边

- `requires` / `confusable_with` / `applies_in`
- 每节点出边约 3–5

## Research 产出（大领域强制）

| 文件 | 内容 |
|------|------|
| `_agent/research/sources.md` | 主锚+对照，链接与用处 |
| `_agent/research/candidate-questions.md` | 候选问题、依赖、采用/弃用 |

## Checkpoint 最小字段

```yaml
topic: string
goal_layer: orient|operate|master
graph_file: notes/graph.md
active_nodes: []  # ≤3
student_file: path|null
awaiting: pick_node|return_raw|answer|review|idle|research
last_evidence: pass|partial|fail|null
research_done: true|false
goal_lock: string|null
updated: date
```

## Evidence drafted→evidenced

至少 2 条（Orient 可 1+人审）：微测 pass / 实践达标 / 用户确认 draft。

## Wiki 页 status

- draft：仅 `.drafts/`
- verified：正式目录且 claims 已过 gate 或标清范围
