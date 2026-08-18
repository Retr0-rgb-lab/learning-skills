# 经验沉淀：CV 实战辅导 → skills 改进

来源：Computer-Vision Obsidian 一对一会话（小白 → A 档目标）。

---

## 1. 铁律增量（必须写进 skill）

| ID | 经验 | 规则 |
|----|------|------|
| N1 | 覆盖文件不可接受 | **NO CLOBBER**：总览只改目录行；精讲新建 `Lx-*.md`；反馈/答疑 **只追加** |
| N2 | 「我是小白」即探测结论 | **DECLARED_EDGE**：禁止题海确认；薄背景 → 总览 Mermaid |
| N3 | 大科目无调研勿终局规划 | **RESEARCH_FIRST**：公开课 schedule ≥1 主锚 + 对照；写 `_agent/research/` + 学生可见规划页 |
| N4 | 聊天才懂、库里没有 = 失败 | **WRITE_BACK**：讲解要点、追问答复、纠错必须落盘 classroom |
| N5 | 追问是一等学习事件 | **FAQ_APPEND**：用户问题原文 + 导师答复追加到当课或图解文件「答疑」 |
| N6 | 目标等级改变厚度 | **GOAL_LOCK**：如 A 档 → 写清验收表，加严实践/作业精神节点 |
| N7 | 图与文可分家 | **VISUAL_SIDECAR**：`L5-CNN图解.md` + `assets/`，正文不被图淹没 |
| N8 | 索引与当前课分离 | **INDEX+LESSON**：`主题入门.md` 目录；`README` 只指当前课 |
| N9 | 误解要命名 | **MISCONCEPTION_LOG**：如「分段拉直」「先压成一张再扫」写入答疑与 learner-model |
| N10 | ok 协议 | **OK_MEANS_READ_FILE**：用户说 ok → 读 classroom 作答区，不凭聊天记忆批改 |

---

## 2. 流程修订（大科目）

```text
0 RESEARCH  公开课/资料（subagent）
1 EDGE      自认 或 3–5 探测（勿双重折磨）
2 ROADMAP   Mermaid 总览（可少测）
3 LESSONS   一课一文件 Teach
4 CHECK     一课一测；过了才下一文件
5 FAQ       课中追问 → 追加答疑
6 GOAL      若声明 A/应试/项目 → 回写规划加严
7 PRACTICE  A 档必有动手节点
```

---

## 3. 文件协议（Obsidian）

```text
notes/learn/
  主题入门.md           # 稳定总览+目录
  路径规划-*.md         # 调研后规划
  L0-….md …             # 精讲+我的回答+反馈追加
  L5-CNN图解.md         # 可选 sidecar
  assets-*/             # svg/png
_agent/
  research/             # 公开课与复盘
  session-checkpoint.yaml
  learner-model.yaml
  QUEST.md
```

### 追加模板（答疑）

```markdown
## 答疑 · {短标题}（YYYY-MM-DD）

### 用户原意
> …

### 答复
…

### 一句话
> …
```

### 追加模板（练习反馈）

```markdown
### 反馈 · Qx ✅/△（日期）
- 对的：
- 校正：
- A档补钉（可选）：
```

---

## 4. 教学节奏经验

| 阶段 | 做 | 不做 |
|------|----|------|
| 开场 | 总览图+分层人话 | 张量工程、长测验 |
| 概念层 | 短讲+一测 | 10 问背景 |
| 机制层 | 闭环词汇 + 图 | 一次堆完数学 |
| 追问 | 先答清楚再写回 | 只在聊天里说 |
| A 档 | 实践+错误分析+作业精神 | 假装扫盲已是 A |

---

## 5. 建议改动的 skills 清单

1. `tutor` — 并入 N1–N10、大科目 0 阶段  
2. `tutor-classroom` — FAQ_APPEND、OK_MEANS_READ_FILE、sidecar  
3. `tutor-curriculum-research` — 已有，补「规划页与 Lx 对齐表」  
4. **新建** `tutor-faq-append` — 专门处理课中追问写回  
5. `tutor-teach-step` — 允许「纯答疑回合」不强制出新题  
6. `workflows/ai-tutor.md` — 复盘检查清单  

---

## 6. 一页检查清单（每回合结束）

- [ ] 有没有整文件覆盖？  
- [ ] 学生可见内容是否已在 classroom？  
- [ ] 追问是否已 FAQ 追加？  
- [ ] checkpoint 是否指向正确当前文件？  
- [ ] 若用户定了 A/考试目标，规划是否已加严？  
