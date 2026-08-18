# learning-skills

问题图学习包：**调研构图 → 外探 → 整理入库 → 证据门 → 复习**。

## 安装

```bash
./scripts/install-skills.sh ~/.agents/skills --force
```

## 主循环

```text
route → research(大领域强制) → graph
  → brief → 用户外探 → ingest → evidence
  → scaffold? → review?
```

## Skills

| Skill | 职责 |
|-------|------|
| learn | 编排与大门控 |
| learn-route | 目标层/先验 |
| learn-research | 公开锚→候选问题 |
| learn-graph | 问题图 |
| learn-brief | 外探任务单 |
| learn-ingest | 对话→draft wiki |
| learn-evidence | 验收与晋升正式页 |
| learn-scaffold | 卡住最小讲 |
| learn-review | 复习队列 |
| learn-classroom | vault IO |
| learn-checkpoint | 状态 |
| learn-factcheck | 硬核核查 |

## 学生三入口

1. `notes/graph.md`
2. `notes/wiki/index.md`
3. `notes/wiki/log.md`

## 文档（必读）

- [docs/problem-planning-sop.md](docs/problem-planning-sop.md) — 问题规划
- [docs/wiki-ia.md](docs/wiki-ia.md) — 知识库怎么浏览/链
- [docs/ingest-ops.md](docs/ingest-ops.md) — 对话怎么拆页
- [docs/vault-layout.md](docs/vault-layout.md)
- [workflows/learn-loop.md](workflows/learn-loop.md)

## License

MIT
