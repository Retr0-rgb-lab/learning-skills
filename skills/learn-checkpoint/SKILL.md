---
name: learn-checkpoint
description: Use when loading or saving _agent/session-checkpoint.yaml, resume learning session, or sync awaiting active_nodes goal_layer.
---

# learn-checkpoint

## 读

回合初读；无则 route。

## 写（回合末）

```yaml
topic: …
goal_layer: orient|operate|master
goal_lock: …|null
research_done: true|false
graph_file: notes/graph.md
active_nodes: []  # ≤3
student_file: path|null
awaiting: pick_node|return_raw|answer|review|idle|research
last_evidence: pass|partial|fail|null
fail_streak: 0
review_queue: _agent/review-queue.yaml
updated: YYYY-MM-DD
```

## 规则

- awaiting 与 student_file 一致
- 大领域构图前 research_done=true
- evidence fail → fail_streak+1；pass → 0
- 慢变量（priors/迷思）写 learner-model，不写进 checkpoint 长文
