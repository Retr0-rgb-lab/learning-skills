---
name: tutor-route
description: Use when starting a tutoring turn, choosing beginner vs resume vs review mode, user says 继续学/复习/零基础/考前/查漏补缺, or scene is unclear.
---

# tutor-route — 场景路由

## Overview

把用户意图映射为场景 A/B/C 与下一 phase，写入 checkpoint。不教学。

## Route table

| 信号 | scene | next phase |
|------|-------|------------|
| 零基础/第一次/什么是X/完全不会 | A | PROBE |
| 继续/接着/有笔记/学到第X/中断很久 | B | 轻量 PROBE 或恢复 TEACH |
| 复习/考前/刷题/查漏/模拟考 | C | REVIEW_LOOP（先诊断抽样） |
| 不会做这题（背景不明） | B 轻诊断 30s | 再落 A/B/C |
| 「讲一下X」 | 默认 B：先 1 探测再讲 | PROBE 1 题 |
| 有 checkpoint +「继续」 | 沿用 scene | **禁止全量重 probe** |

## Unclear → 只问 3 选 1 组（一次）

1. 本周可观察目标？  
2. 0–5 自评分 + 卡点？  
3. 从零 / 接着 / 复习？有 deadline 吗？  

映射：≤1 且无进度→A；2–4 或有进度→B；考试/巩固→C。

## Output

写入 `session-checkpoint.yaml`：

```yaml
scene: A|B|C
phase: PROBE|TEACH_LOOP|REVIEW_LOOP|...
topic_id: ...
last_tutor_action: ROUTE
awaiting_user: free_reply|answer_probe
```

对用户一句：`主题=…，场景=…，下一步=…（约 n 分钟）`

## Rules

- 只输出一个下一 phase  
- 澄清最多 **一问**（或三问一组一次性）  
- 不展开讲解  
