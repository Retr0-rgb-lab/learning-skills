# learning-skills

AI-Native 一对一导师：**Probe → Plan(Mermaid) → Teach(one step) → Test(gate)**。

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
| `tutor-classroom` | 单文件读写约定 |
| `tutor-probe` | 3～5 题定位边缘 |
| `tutor-plan` | Mermaid 路线图 |
| `tutor-teach-step` | 单步讲 |
| `tutor-micro-quiz` | 步后校验门控 |
| `tutor-checkpoint` | `_agent` 检查点 |
| `tutor-obsidian-log` | 状态与课堂分离 |

全文 SOP：`workflows/ai-tutor.md`

## 铁律

SINGLE STEP · GRAPH AFTER PROBE · EVIDENCE GATE · CLASSROOM-FIRST · 不覆盖 notes/user
