# learning-skills

> **你负责学；系统负责：地图、整理、验收。**  
> 不是又一门 AI 家教课，也不是只会美化笔记的第二大脑。

---

## 核心思想

固定课表 + 一步一讲一测，会把人训练成**照本宣科**：进度是「下一课」，不是「我会了」。  
真正拉开差异的是 **agency**——用自己的节奏、自己的通道（任意 AI、书、coding agent、实验）去啃问题。

所以本包把默认角色拆开：

| 角色 | 干什么 | 不干什么 |
|------|--------|----------|
| **你** | 选题、外探、写「我的话」、交表现 | 被锁死在唯一讲解路径里 |
| **系统** | 抛问题图、发任务单、编译对话入库、抓迷思、证据门、复习调度 | 默认连讲整章、用笔记漂亮代替学会 |
| **讲解** | 卡住或你明确要求时，给**最小支架** | 当主线产品 |

一句话命题：

> **拓宽认知边界 = 推进可验证的独立成功边界**  
> ——不是讲更多，也不是笔记更全。

---

## 反对什么 / 坚持什么

**反对**

- 线性 L0→Ln「上完一课再下一课」当唯一导航  
- 系统垄断讲解，把学习关在对话框里  
- 贴完长对话就标「已掌握」  
- 精美 wiki = 学会了（流畅错觉）

**坚持**

1. **问题图，不是课表** — 节点是真问题（有 gap、有关系），顺序你定  
2. **默认外探** — 学习主战场在系统外；系统给 brief，不抢戏  
3. **对话是原料** — 你把 DeepSeek / Cursor / 书摘贴回来，系统负责模块化、链关系、进知识库  
4. **证据门** — ✅ 只认能测、能做、或你逐条确认过的东西  
5. **大领域先调研再构图** — 公开课/教材当问题种子，不抄成强迫课表  

---

## 主循环（人话）

```text
定目标（Orient / Operate / Master）
    ↓
大领域：公开资料调研 → 候选问题
    ↓
画出问题图（graph.md）
    ↓
你挑一个问题 → 系统给外探任务单
    ↓
【你离开系统去学】任意 AI / 书 / 代码
    ↓
贴回对话或笔记 → 系统整理成 draft wiki
    ↓
对症小测 / 实践 / 人审 → 过了才点亮、晋升正式库
    ↓
卡住才讲一点；隔段时间再提取复习
```

```text
route → research? → graph → brief → explore → ingest → evidence
                                              ↘ scaffold / review
```

---

## 学生日常看哪（三入口）

| 入口 | 路径 | 回答的问题 |
|------|------|------------|
| 1 | `notes/graph.md` | 学到哪了？下一步啃哪个问题？ |
| 2 | `notes/wiki/index.md` | 已经沉淀、可检索的知识有哪些？（仅正式页） |
| 3 | `notes/wiki/log.md` | 最近整理/晋升/复习发生了什么？ |

过程写在 `notes/nodes/`；原文在 `notes/raw/`（不可改）；草稿在 `notes/wiki/.drafts/`（**不当已会**）。

---

## 目标层（先定层，再定图的硬度）

| 层 | 含义 | 系统态度 |
|----|------|----------|
| **Orient** | 领域地图，能导航讨论 | 问题图偏导航，证据可轻 |
| **Operate** | 典型任务能做对 | 默认；**实践节点要够** |
| **Master** | 能迁移、抗干扰、能教人 | 证据更硬，间隔提取更勤 |

考试 / 项目 / A 档 → **GOAL_LOCK**：验收写清楚，evidence 加严。

---

## Skills（给 Agent 用）

| Skill | 一句话 |
|-------|--------|
| `learn` | 编排：读 checkpoint，按信号调度，禁课表复辟 |
| `learn-route` | 目标层、先验、大/小领域分流 |
| `learn-research` | 公开锚 → 候选问题（构图前门控） |
| `learn-graph` | 问题图落盘（问题句 + 成功标准 + 状态） |
| `learn-brief` | 单节点外探任务单 |
| `learn-ingest` | 对话 → 分段分类 → draft wiki + 挂回节点 |
| `learn-evidence` | 验收；过了才晋升正式 wiki |
| `learn-scaffold` | 卡住时最小讲解（非默认） |
| `learn-review` | 从 debt / 到期节点做提取复习 |
| `learn-classroom` | vault 读写纪律（NO_CLOBBER） |
| `learn-checkpoint` | 会话状态 |
| `learn-factcheck` | 公式/定义硬核核查 |

安装到本机 skills 目录：

```bash
./scripts/install-skills.sh ~/.agents/skills --force
```

DSH 持久插件见 monorepo 包 `dsh-learning-skills`（注册 `learn*`、注入 prompt、提供 `learning_skills_*` 工具）。

---

## 文档地图

| 文档 | 何时读 |
|------|--------|
| [docs/principles.md](docs/principles.md) | 思想与 IRON |
| [docs/problem-planning-sop.md](docs/problem-planning-sop.md) | 怎么从「想学 X」落到问题图 |
| [docs/wiki-ia.md](docs/wiki-ia.md) | 知识库怎么浏览、怎么链 |
| [docs/ingest-ops.md](docs/ingest-ops.md) | 对话怎么拆页、分类、挂 Qn |
| [docs/scenarios.md](docs/scenarios.md) | 十种学习场景怎么调度 |
| [docs/vault-layout.md](docs/vault-layout.md) | 目录与权限 |
| [workflows/learn-loop.md](workflows/learn-loop.md) | 回合检查清单 |
| [templates/learn-topic/](templates/learn-topic/) | 新学科库种子 |
| [AGENTS.md](AGENTS.md) | Agent 最短约束 |

---

## 设计边界（刻意不做）

- 不做「更好的 Khanmigo」——不靠陪聊进度条  
- 不做无门控的笔记美化——那是 PKM，不是学会  
- 不把系统外探索收回唯一对话框——**agency 是一等公民**  
- 讲解永远是可调用层，不是产品默认首页  

---

## License

MIT
