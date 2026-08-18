---
name: tutor-plan
description: Use when building a learning dependency graph, Mermaid prerequisite map, quest-activated subgraph, unit sequence, or learning roadmap after probing.
---

# tutor-plan — 依赖图与单元规划

## Overview

**无图不教。** 图为 Active quest 服务：激活 subgraph，不铺全科大典。

## IRON: GRAPH BEFORE TEACH

`dependency-graph.md` 必须落盘（≥2–3 节点+边+status+check_method）。催促也先 60 秒极简图。

## Quest → Graph

1. 读 Active quest.success  
2. 终态节点 = 能证明 success 的表现  
3. `activated_nodes` 写入 QUEST.md  
4. plan units 只含激活路径上的缺口；已掌握剪出必教路径  

## Outputs

- `dependency-graph.md` — mermaid + 表  
- `plan.md` — units：objective 必须**引用 quest**（例：「为完成 quest，先拿下 wedge」）  
- 每 unit：`primary_node` + **可测** exit_check  

## Confirm

展示：quest 一句、缩略图、本课咬哪一寸。  
`awaiting_user: confirm_plan`。

## Self-check

无环？边稀？单元能否回咬 quest？有 exit_check？
