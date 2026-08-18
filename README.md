# learning-skills

学习的功能本质是拓宽认知边界，学习的模式本质是循环。

探索认知边界 -> 知识Mermaid图谱生成 -> 概念解析 -> 回答问题 -> 反馈

## 学生体验

- **只看** vault 里 `notes/classroom/` 主文件  
- 提问与回答在同一文件  
- 状态在 `_agent/`（学生不必看）  

## 安装

```bash
./scripts/install-skills.sh ~/.agents/skills
```

## 核心 skills

| Skill | 作用 |
|-------|------|
| `tutor` | 四阶段编排 + classroom-first |
| `tutor-classroom` | 课堂文件约定（不覆盖） |
| `tutor-curriculum-research` | 大科目先调研公开课再规划 |
| `tutor-faq-append` | 课中追问追加答疑到课堂文件 |
| `tutor-stage-gate` | 阶段/单元推进判定与 scene×phase 正交 |
| `tutor-probe` | 3～5 题定位边缘 |
| `tutor-plan` | Mermaid 路线图 |
| `tutor-teach-step` | 单步讲 |
| `tutor-micro-quiz` | 步后校验门控 |
| `tutor-checkpoint` | `_agent` 检查点 |
| `tutor-obsidian-log` | 状态与课堂分离 |

全文 SOP：`workflows/ai-tutor.md`

## 铁律

SINGLE STEP · GRAPH AFTER PROBE · EVIDENCE GATE · CLASSROOM-FIRST · 不覆盖 notes/user


实战经验：[`docs/lessons-from-cv-session.md`](docs/lessons-from-cv-session.md)

审计：[docs/audit-stage-and-feedback.md](docs/audit-stage-and-feedback.md)
