# learning-skills

AI-Native **一对一导师** skills 与工作流。

灵感：[How I Use AI to Learn Things](https://www.youtube.com/watch?v=kzcI5F4tGiU)（Eero Alvar）。

**命题**：拓宽可验证的认知边界。  
**结构**：Quest（方向盘）+ Graph（底盘）+ 单步门控 + Obsidian 过程日志。

## 快速开始

```bash
./scripts/install-skills.sh ~/.agents/skills
```

1. 在 Obsidian vault（或项目）复制 `templates/learn-topic/` → `learn/topics/<id>/`  
2. 填写 `QUEST.md` Active（一句真问题 + 成功标准）  
3. 加载 skill `tutor` 开会话  
4. 过程写入 `sessions/`；你的私有总结只放 `notes/user/`  

SOP：[`workflows/ai-tutor.md`](workflows/ai-tutor.md) · Obsidian：[`docs/obsidian.md`](docs/obsidian.md)

## 铁律

1. **SINGLE STEP** — 一回合一件事  
2. **GRAPH BEFORE TEACH** — 无图不教  
3. **EVIDENCE GATE** — 「懂了」不解锁  
4. **QUEST DRIVES** — 节点服务主问题；结束要能写 quest 推进  
5. **OBSIDIAN LOG** — 每回合 Tutor/Me/Result；结束 Distill 五条  
6. **USER ZONE** — 不覆盖 `notes/user/**`  

## Skills

| Skill | 职责 |
|-------|------|
| [`tutor`](skills/tutor/SKILL.md) | 编排状态机 |
| [`tutor-route`](skills/tutor-route/SKILL.md) | A/B/C + 绑 quest |
| [`tutor-probe`](skills/tutor-probe/SKILL.md) | 从 quest 反推探测 |
| [`tutor-plan`](skills/tutor-plan/SKILL.md) | 依赖图与激活子图 |
| [`tutor-teach-step`](skills/tutor-teach-step/SKILL.md) | 单步讲+任务 |
| [`tutor-micro-quiz`](skills/tutor-micro-quiz/SKILL.md) | 提取与评分 |
| [`tutor-remediate`](skills/tutor-remediate/SKILL.md) | 脚手架 L0–L5 |
| [`tutor-review`](skills/tutor-review/SKILL.md) | 复习队列 |
| [`tutor-obsidian-log`](skills/tutor-obsidian-log/SKILL.md) | 回合日志+蒸馏 |
| [`tutor-checkpoint`](skills/tutor-checkpoint/SKILL.md) | 检查点 |
| [`tutor-unit-wrap`](skills/tutor-unit-wrap/SKILL.md) | 单元收束 |
| [`tutor-factcheck`](skills/tutor-factcheck/SKILL.md) | 事实核查 |

## 三场景（人话）

| 场景 | 一句话 |
|------|--------|
| **A 入门** | 先站稳最小一块，短讲多做 |
| **B 续学** | 找到断点修路，不从头重铺 |
| **C 复习** | 考试官模式，题驱动，少开新课 |

## 学习过程默认模型

**问题中心，全场景通用**（入门只是问题更小）：

```text
真问题 quest
  → 激活最小依赖子图
  → 尝试 → 缺口 → 单步补 → 再尝试 quest
  → 每步写入 Obsidian
```

不是按教材目录念；目录/图谱只防止漏前置。

## 仓库结构

```text
skills/ workflows/ schemas/ templates/ docs/ examples/ scripts/
```

## License

MIT
