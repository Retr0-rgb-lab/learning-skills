---
name: learn-review
description: Use when spaced repetition, 复习, extraction from wiki, debt nodes, mock check, or consolidating evidenced concepts.
---

# learn-review

## 先告诉用户打开

1. `notes/graph.md`
2. `notes/wiki/index.md`
3. 弱点 `notes/nodes/Qn-*.md`
4. `practice/`（技能题）

## 队列文件

`_agent/review-queue.yaml`（无则建）

```yaml
items:
  - node_id: Q2
    due: YYYY-MM-DD
    reason: debt|spaced|confusable
    last_result: null|pass|fail
```

### 入队规则（默认）

- 所有 `debt`
- `evidenced` 且超过 **7 天**未测（看节点反馈日期或 queue）
- graph 上 `confusable_with` 对子
- misconceptions 页相关 Qn

## 做

1. 从 queue 取 due≤today 或 debt 优先（1–5 题）
2. 提取题写入节点 `## 作答` 或 `notes/nodes/REVIEW-YYYYMMDD.md`
3. 用户答完 ok → 评
4. pass 且非首次 → 可 `mastered` + 改 graph；fail → `debt` + 可选 scaffold
5. 更新 queue、节点反馈、`wiki/log.md`、graph 状态列

## 不做

复习=新课；只重读 raw
