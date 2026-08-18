---
name: learn
description: Use when problem-graph learning, explore-ingest-evidence loop, 问题图学习, 外探整理, 继续学, 学一个领域, paste conversation into wiki, or vault notes/graph notes/nodes.
---

# learn — 编排入口

## 每回合

```
1. read _agent/session-checkpoint.yaml（无 → ROUTE）
2. 用「决策树」定唯一 action（下表）
3. must-load 子 skill → 写回 classroom + checkpoint
4. 同步 notes/graph.md 节点状态列（谁改状态见各 skill）
```

## 决策树（用户短句 × awaiting → 唯一动作）

| 用户信号 / 状态 | action | must-load |
|-----------------|--------|-----------|
| 无 checkpoint / 「新学 X」 | ROUTE | learn-route |
| awaiting=research 或 大领域 research_done≠true | RESEARCH | learn-research |
| research 刚完成 / 无 graph / 「重画问题图」 | GRAPH | learn-graph |
| 「继续学」+ awaiting=return_raw | WAIT | **不讲课**；可提醒 brief/贴回；允许短 FAQ |
| 「继续学」+ awaiting=answer | EVIDENCE 准备或等答 | 若尚无题→evidence 先写题；有答→EVIDENCE |
| 「继续学」+ awaiting=pick_node/idle | BRIEF | 建议入口节点 + learn-brief |
| 「继续学」+ awaiting=review | REVIEW | learn-review |
| 选 Qn / 「下一刀」 | BRIEF | learn-brief + classroom |
| 贴长对话/笔记/日志 | INGEST | learn-ingest + classroom |
| ok / 交卷 / 要测 | EVIDENCE | learn-evidence |
| 卡住 / fail≥2 / 「讲一下」 | SCAFFOLD | learn-scaffold |
| 复习 / 查漏 | REVIEW | learn-review |
| 「我学了啥/进度/地图」 | BROWSE | classroom：只读刷新 graph 底「进度快照」+ 指三入口；**不新开讲** |
| 「改成考试/A档/只要地图」 | REROUTE | learn-route（RE-ROUTE 节） |
| 短问（非长贴） | FAQ | classroom → 当前节点答疑 |
| 硬事实争议 | FACT | learn-factcheck |

**禁止**：无 checkpoint 直接讲第一章；Lx 课表推进；外探中连讲；贴完即 ✅；drafts 进 index。

## 大门控

- 大领域 ROUTE **同回合**只允许 route+research，禁止 GRAPH
- RESEARCH_BEFORE_GRAPH（docs/problem-planning-sop.md）
- Operate/Master：practice 比例不达标不定稿 graph
- INDEX_ONLY_VERIFIED


## IRON

GRAPH_FIRST · RESEARCH_BEFORE_GRAPH(大域) · AGENCY_DEFAULT · RAW_IMMUTABLE · DRAFT_THEN_PROMOTE · EVIDENCE_NOT_NOTES · NO_CLOBBER · NEXT_TO_SOURCE · OK_MEANS_READ_FILE · LOAD_BRAKE≤3 · GOAL_LOCK · INDEX_ONLY_VERIFIED

## 文档

problem-planning-sop · wiki-ia · ingest-ops · scenarios · vault-layout
