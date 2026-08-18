# learning-skills

AI-Native **一对一导师** skills 与工作流。

灵感：[How I Use AI to Learn Things](https://www.youtube.com/watch?v=kzcI5F4tGiU)（Eero Alvar）——统一界面、工作在认知边缘、Probe → Plan → Teach。

教育命题：**拓宽可验证的认知边界**，不是灌信息。Agent 扮演老师/教导者（诊断、规划、单步推进、证据门控），物流外包，有效挣扎留给学习者。

## 快速开始

1. 把本仓库的 `skills/` 链到或复制进你的 agent skills 目录（如 `~/.agents/skills/`）。
2. 学习状态落在项目或 vault 的 `learn/topics/<topic-id>/`（模板见 `templates/learn-topic/`）。
3. 会话加载编排 skill：`tutor`（或按 phase 加载原子 skill）。
4. 硬规则见下方；完整 SOP 见 [`workflows/ai-tutor.md`](workflows/ai-tutor.md)。

```bash
# 示例：安装到个人 skills 目录
./scripts/install-skills.sh ~/.agents/skills
```

## 三条铁律（IRON RULES）

1. **SINGLE STEP** — 每回合只做一件事：一探测 / 一组块讲解 / 一出题 / 一评分 / 一确认计划。
2. **GRAPH BEFORE TEACH** — 无依赖图不进教学；用户催也先落盘极简图。
3. **EVIDENCE GATE** — 「懂了 / ok / 已讲过」不解锁；`ok`/`mastered` 只认作答证据。

## Skills 地图

| Skill | 层 | 职责 |
|-------|----|------|
| [`tutor`](skills/tutor/SKILL.md) | 编排 | 主导师状态机，唯一对用户说话 |
| [`tutor-route`](skills/tutor-route/SKILL.md) | 路由 | A 入门 / B 续学 / C 复习 |
| [`tutor-probe`](skills/tutor-probe/SKILL.md) | 诊断 | 二分定位边界、续学打假 |
| [`tutor-plan`](skills/tutor-plan/SKILL.md) | 规划 | 依赖图 + 单元序列 |
| [`tutor-factcheck`](skills/tutor-factcheck/SKILL.md) | 规划 | 关键断言核查 |
| [`tutor-teach-step`](skills/tutor-teach-step/SKILL.md) | 教学 | 单步最小讲解 + 任务 |
| [`tutor-micro-quiz`](skills/tutor-micro-quiz/SKILL.md) | 教学 | 提取题 + 评分门控 |
| [`tutor-remediate`](skills/tutor-remediate/SKILL.md) | 教学 | 错误分类 + 脚手架 L0–L5 |
| [`tutor-review`](skills/tutor-review/SKILL.md) | 巩固 | 间隔复习 / 考前作战 |
| [`tutor-checkpoint`](skills/tutor-checkpoint/SKILL.md) | 基建 | 会话检查点读写 |
| [`tutor-unit-wrap`](skills/tutor-unit-wrap/SKILL.md) | 巩固 | 单元收束与笔记导出 |

**MVP 最小集**：`tutor` + route/probe/plan/teach-step/micro-quiz/checkpoint。

## 状态目录约定

```text
learn/topics/<topic-id>/
  meta.yaml
  learner-model.yaml
  dependency-graph.md
  plan.md
  session-checkpoint.yaml
  errors.md
  review-queue.md
  notes/
  sources/
```

Schema：[`schemas/`](schemas/) · 空模板：[`templates/learn-topic/`](templates/learn-topic/)

## 三场景（摘要）

| 场景 | 何时 | 讲:练 | 角色侧重 |
|------|------|-------|----------|
| **A 入门** | 零基础/新领域 | ~20:80 | 教练 + 讲解 |
| **B 续学** | 有进度/可能遗忘 | 补丁讲，先测后讲 | 教练 + 考官 |
| **C 复习** | 考前/间隔/查漏 | 讲≤15% | 考官主导 |

细则：[`docs/scenarios.md`](docs/scenarios.md)

## 仓库结构

```text
skills/           # 可安装的 SKILL.md
workflows/        # 端到端编排 SOP
schemas/          # YAML 字段约定
templates/        # 新主题脚手架
docs/             # 方法论与原则
scripts/          # 安装辅助
examples/         # 对抗用例与示例 checkpoint
```

## 设计原则（一页）

- 先探针后教学；一次只推一条 ZPD 边界。
- 最小充分脚手架 + 强制渐撤；掌握只统计 L0（无支持）成功。
- 提取优先于再呈现；间隔固化 + 易混交错。
- 错误/misconception 是一等数据。
- 文件即真相：进度不靠聊天窗口记忆。

详见 [`docs/principles.md`](docs/principles.md)。

## License

MIT
