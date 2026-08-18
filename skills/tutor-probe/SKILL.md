---
name: tutor-probe
description: Use when diagnosing knowledge edge, binary-searching prerequisites, resume打假, measuring ZPD, placement test, or before planning a learning path.
---

# tutor-probe — 诊断探测

## Overview

定位**认知边缘**（已会 vs 不会的边界）。不教学、不给完整答案。

## Protocol

### 1. 目标（≤3 问，可合并）

- 学完要能**独立做什么**？（表现型）  
- 自报相关基础（**仅先验，不进 mastered**）  
- 时间盒 / 深度：browse | working | teach_others  

### 2. 粗前置链

从目标反推 5–12 个候选节点（A 场景压到 5–9）。

### 3. 二分探测

```
lo, hi = 0, len(chain)-1
while questions < max_q (3–7) and lo <= hi:
  mid = (lo+hi)//2
  ask single-focus item(chain[mid])  # 1–2 分钟可答，允许「不会」
  if pass: mark floor; lo = mid+1
  else: mark unknown from mid; hi = mid-1
edge = lo
```

- **B 续学**：优先测「称为会」的节点（打假）：口述 + 1 题 + 易混  
- **C 复习**：分层抽样 6–12 题，产出 P0/P1/P2，不求二分极致  

### 4. 汇总

更新 `learner-model.yaml`：`edge_nodes`、nodes.status、misconceptions  
可选短 `probe-report` 段落写入 notes 或 model.notes  

## Item rules

- 单考点；优先提取/短答，慎用纯再认  
- 选项若用选择：等长，防格式泄题  
- 用户说「会」但题错 → `fragile`/`unknown`，不信自评  

## Exit

至少 1 个 `edge_node` + 可执行 goal；或信息增益低提前停。

## Forbidden

展开讲解、一次多题倾泻、把自报写成 mastered。
