# Workflow: 问题图学习主循环

```text
route → research?(大领域) → graph
loop by awaiting:
  pick_node/idle → brief → return_raw
  return_raw + paste → ingest → answer
  answer + ok → evidence → (promote|debt)
  fail≥2/卡 → scaffold → return_raw|answer
  复习 → review-queue
  浏览 → 三入口 + 进度快照
```

## 每步写哪些文件

| 步 | 写 |
|----|-----|
| route | checkpoint, learner-model, goal.md? |
| research | _agent/research/sources.md, candidate-questions.md |
| graph | notes/graph.md, nodes 骨架, wiki/index 钩子 |
| brief | nodes/Qn, graph 状态 exploring, checkpoint |
| ingest | raw, .drafts, 节点整理摘要, graph drafted, log |
| evidence | 节点反馈, graph 状态, wiki 正式+index+log |
| review | review-queue, 节点/REVIEW 文件, graph |
| scaffold | 节点答疑, fail_streak 处理 |

## 回合末检查

- [ ] 决策树唯一动作？
- [ ] graph 状态列已同步？
- [ ] drafts 未进 index？
- [ ] active_nodes≤3？
- [ ] 大领域 research_done？
