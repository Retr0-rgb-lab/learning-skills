# 审计：阶段检测 × 反馈质量（2026-08-18）

## 总判

**方向对，执行层偏薄。**  
原则（classroom-first、NO CLOBBER、EVIDENCE GATE、三场景）在文档里存在，但 **阶段如何从证据算出**、**反馈必须长什么样** 没有可执行协议 → 真实会话里容易变成「感觉过了就下一课」或「反馈只有对/不对」。

---

## 根因 1：三套坐标系没接硬线

| 坐标 | 例子 | 存在位置 |
|------|------|----------|
| scene A/B/C | 入门/续学/复习 | tutor-route |
| phase | PROBE/PLAN/TEACH/REVIEW | tutor + checkpoint schema |
| curriculum unit | L0/L1/L6a、CS231n 对齐 | classroom 实践演化 |

**缺口：** route 只解决 A/B/C，不读 `Lx` frontmatter；checkpoint 有 phase 但无 **必填判定记录**；workflow 仍写「默认单主文件」，与 **INDEX+多 Lx** 实战矛盾。

→ Agent 无法稳定回答：「当前该不该进下一阶段？」

---

## 根因 2：掌握判定 skill 空洞

`tutor-micro-quiz` 仅 4 条 bullet：

- 无 pass / partial / fail **操作定义**
- 无 **rubric 必写**
- 无强制 error_tag
- 无「短答命中核心动词即可 / 不可」边界
- 不引用 remediate

`tutor-remediate` 有标签与脚手架，但 **quiz 未强制调用** → 补救链断裂。

---

## 根因 3：反馈无强制结构

实战里好反馈靠模型临场；skill 未要求：

1. 先对齐学生原句  
2. 对的点 / 错的点分离  
3. 校正后的标准表述  
4. 是否推进 + 证据  
5. 落盘模板  

→ 用户体感「反馈不行」高度可期。

---

## 根因 4：阶段检测无「输入特征」

缺少显式规则：

```
IF awaiting=answer AND file has 我的回答 non-empty AND user says ok
  → GRADE
ELIF user asks 为什么
  → FAQ (stay stage)
ELIF grade=pass AND lesson exit_check met
  → advance unit
ELIF grade=partial
  → stay + remediate cue, NOT full advance
```

checkpoint schema 有字段，**无转移表**。

---

## 反馈质量（现状估分）

| 维度 | 分 | 说明 |
|------|----|------|
| 清晰 | 3 | 有时清楚，无强制结构 |
| 具体 | 2 | 缺 rubric 锚定 |
| 可行动 | 2 | 很少给「下一刀精确动作」 |
| 证据 | 2 | 推进不强制引用作答片段 |
| 语气 | 4 | 总体可用 |
| 落盘 | 3 | 有 WRITE_BACK 原则，执行靠自觉 |

---

## P0 改动（本审计直接落地）

1. 重写 `tutor-micro-quiz`：完整评分+反馈协议  
2. 新增 `tutor-stage-gate`：阶段/单元推进判定  
3. 修补 workflow：多文件 Lx + 与 A/B/C 正交  
4. checkpoint schema 增加 last_grade / evidence_quote  

## P1

- route 读 checkpoint.scene 调制测频  
- 题面必带 hidden rubric 字段（写在 _agent 或 HTML comment）  
- 对抗用例自动化清单  

## P2

- 结构化 grade JSON  
- 与 Anki/间隔队列打通  

---

## 补充（UX/一致性子代理）

已确认并部分修复：

- tutor description 单文件矛盾 → 决策树  
- tutor 不调度子 skill → must-load 表  
- README 缺 skill → 全图  
- checkpoint/obsidian-log 过薄 → 补步骤与 Distill  
- schemas 路径 → remediate 内联 tags  

仍 P1：grades.jsonl、题面预埋 rubric 工具化、install 时打包 schemas。

## 阶段机子代理 S1–S7 对齐

| ID | 状态 |
|----|------|
| 转移表 | stage-gate + tutor must-load |
| DECLARED_EDGE vs A→PROBE | route 判定树已修 |
| awaiting 枚举 | schema 统一 answer_in_classroom 等 |
| confirm_plan 错位 | 改为 pick_node / confirm_goal |
| micro-quiz 判据 | 已重写 |
| checkpoint 空心 | skill 已扩 |
| B/C 接入 | route 树 + review；workflow 仍可再分列 |

仍 P1：probe 子循环 probe_index 每回合 1 题写进 probe skill；scene_stack 实战演练。
