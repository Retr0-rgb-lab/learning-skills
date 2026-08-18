# 知识库信息架构（学生浏览）

## 日常 3 入口（写进 README / graph 顶）

1. **`notes/graph.md`** — 学到哪了、下一步、债务  
2. **`notes/wiki/index.md`** — 已沉淀知识总目录（只列正式页）  
3. **`notes/wiki/log.md`** — 时间线（ingest/晋升/复习）

辅：`notes/nodes/Qn-*.md`（单题过程）；`practice/`（代码）。

## 目录树

```text
notes/wiki/
  index.md              # MOC：按主题/类型分组 + 链到 Qn
  log.md
  map.md                # 可选：概念关系简图（非课表）
  .drafts/              # 未过 evidence，默认不进 index
    concepts/
    comparisons/
    misconceptions/
    sources/
    skills/             # 程序性「怎么做」
  concepts/             # 正式
  comparisons/
  misconceptions/
  sources/
  skills/
```

## 页类型

| type | 目录 | 一页一个 |
|------|------|----------|
| concept | concepts/ | 可命名概念 |
| skill | skills/ | 可重复执行的手续 |
| comparison | comparisons/ | A vs B |
| misconception | misconceptions/ | 错法有名字 |
| source | sources/ | 一次 raw/一讲义摘要 |

## 命名

- 文件：`短中文或英文basename.md`（Obsidian 靠 basename）
- 标题：`# 概念名`
- 别名：frontmatter `aliases: []`

## Frontmatter（最少）

```yaml
---
type: concept|skill|comparison|misconception|source
status: draft|verified
claim_status: unverified|verified|dual-claim
domain: [cv]
related_nodes: [Q5]
aliases: []
sources: ["raw/Q5-….md#§2"]
updated: YYYY-MM-DD
---
```

## 链接铁律

| 从 | 到 | 规则 |
|----|----|------|
| wiki 页 | Qn | `related_nodes` + 正文 `[[Q5-…]]` 或链到 `nodes/Q5-….md` |
| Qn 节点 | wiki | 「整理摘要」里列出本轮概念 `[[…]]` |
| concept | concept | 仅高置信；每页出链 ≤5 |
| 任意 | 缺页 | 先 stub（一句话+related）再链 |
| index | 正式页 | **不**索引 `.drafts/` |

## 浏览路径

- 复习：graph 状态 → wiki 正式页 → 节点反馈  
- 追过程：nodes/Qn  
- 追来源：sources/ 或 raw/  
- 草稿自审：`.drafts/` only
