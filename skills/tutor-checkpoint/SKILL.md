---
name: tutor-checkpoint
description: Use when loading or saving tutoring session state, pause/resume learning, writing session-checkpoint.yaml, or ending a tutor session.
---

# tutor-checkpoint — 检查点

## Overview

相位与等待态的真相源。先 load 再决策；变更即 save。

## Paths

`learn/topics/<topic-id>/session-checkpoint.yaml`  
新主题：从 `templates/learn-topic/` 复制并替换 `REPLACE_ME`。

## Load

1. 读 checkpoint + learner-model + graph（若存在）  
2. 校验 phase/awaiting 枚举合法  
3. 向编排器返回：scene, phase, current_node, awaiting, resume_hint  

## Save triggers

- phase 变更  
- 每回合动作结束后  
- 用户暂停 / 会话结束  

## Pause / Close fields

```yaml
resume_hint: "下次先测 node X，再续 unit Y"
updated_at: ISO-8601
```

关闭时同步建议：

- graph 节点状态  
- review-queue 至少 1 行  
- errors 本课新条目已写  

## Resume

有 checkpoint 且用户「继续」→ 恢复 phase；**不要**无故全量重 probe。  
B 可加 1 题热身打假。
