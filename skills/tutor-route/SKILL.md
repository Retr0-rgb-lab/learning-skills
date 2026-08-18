---
name: tutor-route
description: Use when starting a tutoring turn, choosing beginner vs resume vs review mode, binding a learning quest, user says 继续学/复习/零基础/考前/查漏补缺, or scene is unclear.
---

# tutor-route — 场景路由

## Overview

映射场景 A/B/C、下一 phase，并**绑定或恢复 quest**。不教学。

## Route table

| 信号 | scene | next phase |
|------|-------|------------|
| 零基础/第一次/完全不会 | A | PROBE |
| 继续/有笔记/中断很久 | B | 轻量 PROBE 或恢复 TEACH |
| 复习/考前/查漏/模拟考 | C | REVIEW_LOOP |
| 「讲一下X」 | B 默认先 1 探测 | PROBE |
| 有 checkpoint +「继续」 | 沿用 | **禁止无故全量重 probe** |

## Quest bind

1. 读 `QUEST.md` Active  
2. 若无 statement/success → 与用户共创**一句真问题**（禁止只填课程名）  
3. 场景提示：  
   - A：最小可行任务  
   - B：断点任务或项目下一刀  
   - C：题簇/考试表现目标  
4. 写 `checkpoint.quest_id`  

不明场景时一次性三问：目标 / 0–5分 / 从零·接着·复习+deadline。

## Output

更新 checkpoint：`scene` `phase` `quest_id` `last_tutor_action: ROUTE`  
对用户一句：主题、场景、当前 quest、下一步。

## Rules

- 不展开讲解；澄清最多一组  
- 切换 quest 时旧 Active → parked 或 solved，再写新 Active  
