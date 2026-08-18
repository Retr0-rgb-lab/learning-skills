---
name: tutor-stage-gate
description: Use when deciding tutoring phase transitions, whether to advance lesson, stage detection, scene A B C vs Lx layer, or what happens after grading or user ok.
---

# tutor-stage-gate — 阶段/单元推进判定

## 坐标（正交）

| 轴 | 值 | 谁写 |
|----|-----|------|
| **scene** | A 入门 / B 续学 / C 复习 | route；低频变 |
| **phase** | ROUTE·RESEARCH·PROBE·PLAN·TEACH·GRADE·REMEDIATE·REVIEW·GATE | 每回合 |
| **unit** | Lx 文件 id / node_id | 课级 |
| **awaiting** | answer_in_classroom / free_reply / run_practice / pick_node | 每回合 |

scene **不**替代 phase：C 复习也可以 TEACH 一小块补丁。

---

## 每回合阶段检测（先做这个）

读：`_agent/session-checkpoint.yaml` + 当前 student_file frontmatter + 用户本轮话。

```
u = user_message
f = learn/quiz file

if u is 追问/为什么/什么意思:
  phase_action = FAQ
  # 不改 unit，不推进
elif awaiting==answer_in_classroom and u in {ok,答完,好了}:
  phase_action = GRADE   # 必须 read 文件
elif awaiting==run_practice and u in {ok,跑完}:
  phase_action = GRADE_PRACTICE
elif u is 开始L#/开始第n层:
  phase_action = OPEN_UNIT (new file if needed)
elif u is 继续 and checkpoint exists:
  phase_action = RESUME
elif no checkpoint / new major topic:
  phase_action = RESEARCH_OR_ROUTE
else:
  phase_action = follow checkpoint.phase
```

---

## 推进单元（unit advance）条件

**全部**满足才可把目录标 ✅ 并允许下一 Lx：

1. `last_grade == pass`（本课主练习）  
2. 课内声明的 exit_check 无未完成必做项（实践课：运行记录+错误分析等）  
3. 无未关闭的 `remediate` 要求  
4. A 档课若标了 `a_level_debt`：允许概念 ✅，但 checkpoint 记债务，L6 实践要清  

**partial → 禁止** lesson ✅。

---

## scene 调制（检测后的行为差异）

| scene | GRADE 后 | 探测 |
|-------|----------|------|
| A | 过了给下一小步；反馈多给正确表述 | 总览后少测 |
| B | 过了先标断点愈合；再前进一步 | 续学先打假 |
| C | 过了更新队列；默认不出新大课 | 先测后讲 |

---

## checkpoint 最小字段

```yaml
scene: A|B|C
phase: GRADE|TEACH|...
unit_id: L6a
student_file: notes/learn/...
awaiting_user: answer_in_classroom|free_reply|run_practice
last_grade: pass|partial|fail|skip|null
last_evidence_quote: "..."
a_level_debt: []
pending_action: "append_feedback|open_L6a0|..."
```

---

## 与 route/probe/plan

- **新大学科**：RESEARCH → ROUTE(scene) → (PROBE if needed) → PLAN → TEACH units  
- **DECLARED_EDGE**：跳过题海 PROBE，仍要 ROUTE+PLAN  
- **单元内**：TEACH ↔ GRADE ↔ REMEDIATE 循环，由本 skill 看守推进  

---

## 反模式

- 用户 ok 不读文件就 ✅  
- partial 当 pass  
- 把 scene=A 当成永远停留入门讲故事  
- 聊天推进与目录状态不一致  
