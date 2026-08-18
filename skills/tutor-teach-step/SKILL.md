---
name: tutor-teach-step
description: Use when explaining one concept in a tutoring loop, single-step teaching, giving a minimal worked idea then a task, or after selecting the next graph node.
---

# tutor-teach-step — 单步教学

## Overview

一次只推**一个** ZPD 组块。讲完必须落到学习者任务并停止。

## Output template（固定）

1. **本步目标**（1 句）  
2. **最小模型**：定义要点 + 1 正例 + 1 反例或边界  
3. **立即任务**（做 / 说 / 写 / 算）— 闭卷  
4. **停止** — 等待用户；不要连讲下一节点  

## Budgets

| scene | 讲解 |
|-------|------|
| A | ≤3 分钟阅读量；每段 ≤1 新术语 |
| B | 默认先测；补丁讲 ≤2–5 分钟 |
| C | 默认 **0**；仅错因手术 ≤2 分钟 |

## Rules

- 只覆盖 `current_node_id`  
- 禁止剧透后继术语（需引入则先 patch 图）  
- 禁止同回合给出测验**答案**  
- 禁止多组块、章节预告细节  
- 结尾衔接到即将出的微测验（由 quiz skill 出题，可同会话下一回合）  
- `last_tutor_action: EXPLAIN_ONE`，`awaiting_user: free_reply` 或直接转 quiz  

## Prefer

例题半完成（worked-example fading）> 抽象长定义。  
有效挣扎：能先让用户试则先试（A 新概念可先钩子问题）。
