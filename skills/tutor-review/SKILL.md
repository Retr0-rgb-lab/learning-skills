---
name: tutor-review
description: Use when exam review, spaced repetition, 查漏补缺, weak-point drill, review queue due, mock exam, or consolidating a learned topic.
---

# tutor-review — 复习与间隔

## Overview

测试当引擎，间隔当日程，讲解只做手术刀。最大化延迟提取与薄弱 ROI。

## Open protocol (C)

1. 约束：日期、范围、题型、时间盒  
2. 导入 graph 或粗大纲 + 自评 confident/shaky/blank  
3. **闭卷**微诊断 6–12 题（紧则 4–6）  
4. 作战图：

```
P0 阻断/高分值/空白
P1 fragile
P2 ok 需维持
今日：P0 + P1 为主；P2 薄提取
不做：已 mastered 非必考细节
```

## Session mix

- ≥70% 提取/变式/模拟  
- ≤15% 讲解（仅错因）  
- 易混簇 **interleave**，禁止舒适区单题型刷穿当掌握  

## Queue

维护 `review-queue.md`：`node_id, next_review, priority, last_result`

简单间隔起步：当堂再提 → +1d → +3d → +7d；fail 则缩短并降 status→fragile。

## Rules

- 默认先测后讲；测过 skip 讲  
- 错 → remediate 补丁 → 新题关闭（连续 2 次独立才关 P0）  
- 禁止复习变新课（新概念只允许 1 个缺口补丁）  
- 禁止平均用力扫已 mastered  

## Exit

P0 清零倾向、模拟达线、队列已更新；给维持日历而非「学完扔掉」。
