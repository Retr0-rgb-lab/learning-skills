---
name: tutor-route
description: Use when starting a tutoring turn, choosing beginner vs resume vs review mode, binding a learning quest, user says 继续学/复习/零基础/考前/查漏补缺, or scene is unclear.
---

# tutor-route — 场景路由

## Overview

映射 **scene A/B/C** + 初始 **phase** + quest。不教学。  
细节推进交给 `tutor-stage-gate`。

## 判定树（按序）

```
1) 考试/复习/查漏/刷题 → scene=C, phase=REVIEW
2) 明确「继续/接着」且 checkpoint 可信
     → scene=B, phase=TEACH, 恢复 student_file
     → 若 pending 有未批题: awaiting=answer_in_classroom
     → 禁止无故全量 PROBE
3) checkpoint 残缺/过旧但仍像续学
     → scene=B, phase=PROBE, probe_target_n=1..2（打假）
4) 零基础/小白/第一次/完全不会
     → scene=A
     → 若 DECLARED_EDGE（自认小白）:
          大科目 research_status=pending 则 phase=RESEARCH
          否则 phase=PLAN（薄背景+总览图）
          **禁止** 3～5 题海 PROBE
     → 若未自认: phase=PROBE, probe_target_n=3..5
5) 「讲一下 X」
     → 已在 TEACH 且 X 近邻 → FAQ（不改 scene）
     → 否则 scene=B, 1 题轻 PROBE 再讲
6) 不明 → 一次性三问：目标 / 0–5 / 从零·接着·复习+deadline
```

## checkpoint 可信 resume_trusted

- student_file 存在  
- unit_id 或 current_node_id 非空  
- quest_id 非空（学习环）  
- 非空壳 phase  

## Output

写 checkpoint：`scene phase quest_id student_file awaiting_user research_status probe_target_n`  
对用户一句：场景 + 下一步打开的文件。

## 禁止

- A 小白默认进答题 PROBE  
- B 有可信 checkpoint 仍全量重 probe  
- 展开整课讲解  
