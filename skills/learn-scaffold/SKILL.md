---
name: learn-scaffold
description: Use when learner is stuck, repeated fail on a node, asks 讲一下, needs minimal worked example, or risk prerequisite before explore.
---

# learn-scaffold

## 触发

- 用户明确「讲一下」
- checkpoint.fail_streak≥2 于当前节点
- 硬前置缺失

## 做

写入当前节点答疑：

```markdown
## 答疑 · 支架 · YYYY-MM-DD
### 要点
### 例子
### 小检查
### 回 brief 哪条子问题
```

结束后 awaiting 必须是 `return_raw` 或 `answer`（禁止开新章）。

## 不做

整章灌讲；多节点连讲
