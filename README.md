# learning-skills

AI-Native 一对一导师 skills。

**大科目**：Research → Edge → Plan → Teach/Test（learn/quiz-first）。  
**坐标**：scene A/B/C × phase × unit(Lx) 正交（`tutor-stage-gate`）。

## 安装

```bash
./scripts/install-skills.sh ~/.agents/skills
# schemas/docs 仍以本仓库为准；skill 内路径指向本 repo 时请保留 checkout
```

## Skills 全图

| Skill | 职责 |
|-------|------|
| `tutor` | 编排入口；强制调度子 skill |
| `tutor-stage-gate` | 阶段/单元推进判定 |
| `tutor-route` | A/B/C + quest |
| `tutor-curriculum-research` | 公开课调研 |
| `tutor-probe` | 3–5 题或自认边界 |
| `tutor-plan` | Mermaid 路线 |
| `tutor-classroom` | Obsidian IO；NO CLOBBER |
| `tutor-teach-step` | 单步讲 |
| `tutor-micro-quiz` | 评分反馈门控 |
| `tutor-remediate` | 错因脚手架 |
| `tutor-faq-append` | 追问落盘 |
| `tutor-checkpoint` | checkpoint 读写 |
| `tutor-obsidian-log` | 状态分离 + Distill |
| `tutor-review` | 场景 C |
| `tutor-factcheck` | 断言核查 |
| `tutor-unit-wrap` | 课/单元收束 |

## 学生体验

- INDEX：`notes/learn/<主题>入门.md`
- 测验：`notes/quiz/Quiz-*.md`  
- 当前课：`Lx-*.md`（目录 ▶️）  
- 答在文件 → ok → 读文件批改 → 反馈模板追加  

## 文档

- [workflows/ai-tutor.md](workflows/ai-tutor.md)  
- [docs/audit-stage-and-feedback.md](docs/audit-stage-and-feedback.md)  
- [docs/lessons-from-cv-session.md](docs/lessons-from-cv-session.md)  
- [docs/scenarios.md](docs/scenarios.md)  

## License

MIT
