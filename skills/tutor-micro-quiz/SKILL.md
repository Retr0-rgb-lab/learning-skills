---
name: tutor-micro-quiz
description: Use when checking mastery after teaching, micro-quiz, retrieval practice, user says 懂了/会了/继续, grading a tutoring attempt, or exit-check for a node.
---

# tutor-micro-quiz — 微测验与评分

## Overview

提取练习是学习事件。掌握只认证据。本 skill 含出题 + 评分协议。

## When to quiz

- EXPLAIN_ONE 之后  
- 用户只回「懂了/ok/嗯/继续」→ **强制** 30 秒提取题  
- 节点 exit_check；B 入口唤醒；C 题组  

## Item design

优先：短答 / 步骤 / Feynman 口述 / 变式 / 判断+改错  
慎用：刚讲过的原句再认  

对用户只呈现题干（与选项）；**rubric 与答案不对用户预泄**。

内部结构：

```text
id, stem, type, rubric[], misconceptions{}, difficulty, node_id
```

- 对齐**本步组块**，非整章  
- 针对 known misconceptions 设诱答  
- 选择项等长  

## Grading

| result | 条件 | 动作 |
|--------|------|------|
| pass | 命中 rubric 要点，独立 | 节点→ok（或累计证据）；可解锁后继 |
| partial | 部分要点 | 一级提示；同级新题 |
| fail | 关键错误/空白 | 写 errors.md；remediate |

**禁止**：因语气流利、感谢、复述讲解原句而 pass；条件用错即使句子像 → fail/partial。

### Mastery

- `ok`：当堂 L0 独立通过（建议含 1 变式）  
- `mastered`：ok + **间隔后**再提取成功  
- 自评永不直接 mastered  

confidence **只**由 evidence 更新。

## Feedback order

1. 对/不对/部分（短）  
2. 「你当时怎么想的？」（需要时）  
3. 一点拨（不泄下一节点）  
4. 要求 1 句规则复盘（可选）  

## Errors log entry

```markdown
## [ISO] node= | quiz=
- 题干摘要:
- 用户答案:
- 正确要点:
- 误区标签: []
- 补救策略:
```

## Checkpoint

`last_tutor_action: QUIZ|GRADE`，`awaiting_user: answer_quiz` → 提交后 grade → `free_reply`。
