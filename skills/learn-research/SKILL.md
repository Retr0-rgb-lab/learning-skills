---
name: learn-research
description: Use when surveying a large subject before problem graph, open course map for curriculum seeds, 公开课调研, or seeding question nodes from reputable sources.
---

# learn-research

**大领域构图前强制。** 同回合 **禁止** 写 `notes/graph.md`。  
SOP：docs/problem-planning-sop.md

## 输入

goal_layer、scope、priors、goal_lock

## 步骤

1. 1 主锚 + ≥1 对照（公开课/教材 TOC/综述），可追溯链接或书名版次
2. 摘 module/章标题级信息（不抄全文）
3. 改写为**候选问题**（疑问句 + 成功标准线索）
4. coverage 矩阵：cover / defer / out
5. 按 goal + priors 出 shortlist（首图采纳）

## 强制产出

```text
_agent/research/sources.md
_agent/research/candidate-questions.md
```

可选合并副本：`_agent/research/YYYYMMDD-<slug>-brief.md`

### sources.md

```markdown
# Sources · {topic}
## 主锚
- name / url / 为何主锚
## 对照
- name / url / 差异
## 不用的来源
```

### candidate-questions.md

```markdown
# Candidates · {topic}
goal_layer: operate
## Coverage matrix
| module/章 | cover|defer|out | 备注 |
## Candidates
| id | 问题（疑问句） | 成功标准草稿 | type | depends_on | maps_to_goal | 来源锚 | 采用? |
| C1 | | | practice|concept|… | | 验收#? | | yes/no |
## Shortlist（首图）
## Defer / out_of_scope
## Non-goals：不是课表；不代替用户探索
```

## 问题质量条

- 好：有 gap；可外探；可测/可做；≈一次 brief
- 坏：章节名；纯「什么是 X」且无对比/应用；一次塞整本书

## 通过门（未过不得 graph）

- [ ] 主锚+对照可追溯
- [ ] 候选数 Orient≥8 / Operate≥12 / Master≥16；疑问句≥80%
- [ ] 每条有 type + depends_on 线索
- [ ] coverage 有 defer（禁止整门课全 thrash 进首图）
- [ ] Operate shortlist：practice≥20% 或≥3
- [ ] checkpoint：`research_done=true`，`research_path` 已填，`awaiting` 可转 graph

## 然后

交 learn-graph；本 skill 不写终局讲义、不写 graph.md
