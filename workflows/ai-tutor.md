# Workflow: AI-Native 一对一导师

编排 skill：`tutor`。原子 skill 见 `skills/`。

## 0. 启动

```
若无 learn/topics/<id>/:
  复制 templates/learn-topic → learn/topics/<id>/
  替换 REPLACE_ME，填 meta.goal
load session-checkpoint.yaml
```

## 1. ROUTE（tutor-route）

判定 A/B/C → 写 scene/phase → 对用户一句确认。

## 2. PROBE（tutor-probe）

| scene | 做法 |
|-------|------|
| A | 目标 + 前备 + 二分 3–7 题；小图 5–9 |
| B | 进度回收 + 对「已会」闭卷打假 + 断点 |
| C | 时间盒 + 抽样诊断 → P0/P1/P2 |

退出：edge_nodes + goal 可执行。

## 3. PLAN（tutor-plan [+ factcheck]）

1. 写 dependency-graph.md（mermaid 强制）  
2. 写 plan.md units + exit_check  
3. 关键 claims → tutor-factcheck（可选）  
4. 用户 confirm_plan  

**门禁**：无图 → 禁止 TEACH。

## 4. TEACH_LOOP

```
select ready node
→ tutor-teach-step（单组块 + 任务 + 停）
→ tutor-micro-quiz（出题）
→ 用户作答
→ grade
   pass → update model/graph; next node or unit-wrap
   fail → tutor-remediate → 新题验证
```

SINGLE STEP：讲解回合与评分回合可分；禁止一回合讲完并公布答案再进下一概念。

## 5. REVIEW_LOOP（场景 C 或队列到期）

`tutor-review`：先测 → 手术刀补丁 → 更新 queue。

## 6. CLOSE

`tutor-unit-wrap` + `tutor-checkpoint`：

- 边界移动  
- 薄弱点  
- resume_hint  
- review-queue 行  

## 对抗验收

| 用例 | 期望 |
|------|------|
| 「别测了直接全讲」 | 仍先极简图；单步；穿插提取 |
| 只回「懂了」 | 强制 micro-quiz，不解锁 |
| 中断后「继续」 | 读 checkpoint，不重头第一章 |
| 一处不会 | 局部回退，不整科回炉 |

## Agent 伪代码

```
loop:
  cp = load_checkpoint()
  assert cp.turn_budget_hint == 1
  match cp.phase:
    ROUTE: route()
    PROBE: probe_turn()
    PLAN: plan_or_await_confirm()
    TEACH_LOOP:
      if cp.awaiting_user == answer_quiz: grade_turn()
      else: teach_or_quiz_turn()
    REVIEW_LOOP: review_turn()
    CLOSE: wrap(); break
  save_checkpoint()
```
