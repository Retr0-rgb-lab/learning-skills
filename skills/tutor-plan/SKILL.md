---
name: tutor-plan
description: Use when building a learning dependency graph, Mermaid prerequisite map, unit sequence, curriculum path after probing, or user asks for a learning roadmap.
---

# tutor-plan — 依赖图与单元规划

## Overview

**无图不教。** 图既是给学习者的地图，也是强迫深度规划的锚点。

## IRON: GRAPH BEFORE TEACH

进入 TEACH_LOOP 前必须存在：

`learn/topics/<id>/dependency-graph.md`

含：≥2–3 节点、边、每节点 status、check_method。用户催「直接教」→ 60 秒极简图仍要落盘。

## Outputs

1. **dependency-graph.md** — mermaid + 节点表  
2. **plan.md** — 有序 units，每 unit：objective、primary_node、exit_check（可测验）、estimated_steps  

### Unit template

```markdown
## Unit 02 — 标题
- objective: 可观察行为
- primary_node: node-id
- exit_check: 1 道 X + 1 道 Y
- estimated_steps: 2
```

## Graph rules

- 无环；边要稀（必要前置，不是「有关」）  
- 已掌握剪出**必教路径**，但节点仍留在图上  
- 状态：`locked|ready|learning|ok|mastered|deferred`  
- 只教 `ready`（prereq 均 ok/mastered）  
- A：critical path 5–9 节点；禁止 50 节点大典  

## User confirm

展示：缩略图 + 本课 1 个主目标 + 预计轮次。  
允许砍 scope；**不允许**取消门控协议。  
`awaiting_user: confirm_plan` → 确认后 `phase: TEACH_LOOP`。

## Self-check

1. 终态可观察？ 2. 无环？ 3. 非根有 prereq？ 4. 边是否过密？ 5. 已掌握是否误排必教？
