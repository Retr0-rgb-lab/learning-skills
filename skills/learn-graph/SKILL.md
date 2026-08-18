---
name: learn-graph
description: Use when writing Mermaid problem graph, question nodes with gaps, dependency confusable applies_in edges, 问题图, or notes/graph.md roadmap that is not a lesson list.
---

# learn-graph

## 输入门

- 大领域：必须 `research_done` 且存在 candidate-questions（或 *-brief.md）；节点从 shortlist 改写
- 小命题：可无 research，节点 1–5
- 读取 goal/priors；已会 → challenge/skip_with_evidence
- GOAL_LOCK 验收条每条映射 ≥1 节点

## 前置

大领域：research_done 且 `_agent/research/candidate-questions.md` 存在。

## 节点 / 边 / 密度

同 data-contract 与 problem-planning-sop。  
标题=问题；Operate practice≥30% 或≥3。

## 输出 `notes/graph.md`

顶栏三入口 · Mermaid · 节点表（含 **状态** 与 **wiki** 列）· 验收 · 建议走法 · research 脚注

## 状态列谁改（强制）

| 事件 | 状态 | 负责 skill |
|------|------|------------|
| 建图占位 | open | learn-graph |
| 发 brief | exploring | learn-brief |
| ingest 完 | drafted | learn-ingest |
| evidence pass | evidenced | learn-evidence |
| evidence fail 债 | debt | learn-evidence |
| review 稳过 | mastered | learn-review |

每回合改状态必须 **改 graph 节点表**，不只改节点文件 frontmatter。

## 反模式

课表伪装；无 research 大域终局图；全 concept 无 practice
