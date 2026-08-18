---
name: learn-route
description: Use when starting a subject, choosing Orient Operate Master, cold start learning, 目标层, 零基础开题, or binding learning goal and priors.
---

# learn-route

## 冷启动

1. goal_layer（默认 operate）
2. priors → learner-model（先修/是否学过/时间/交付）
3. scope + out_of_scope
4. GOAL_LOCK → `_agent/goal.md`（3–7 条可观察验收）
5. **规模门**：
   - **大领域**（一门课/系统学/公开课≥6讲/技能簇≥2/预计节点>7）
     → `domain_scale=large`，`awaiting=research`，`research_done=false`
     → **本回合 must-load research；禁止写 graph.md**
   - **小问题**（单概念/单任务）
     → `domain_scale=small`，`research_done=true`，可记 `skip_research_reason`
     → 可 GRAPH；节点建议 1–5

## RE-ROUTE

更新 goal_layer + goal.md；不删节点；升降 evidence 严度；必要时重过滤 shortlist。

## learner-model

追加 priors/misconceptions；慢变量不进 checkpoint 长文。

## 不做

长课表；大领域同回合 graph；无 goal 开讲
