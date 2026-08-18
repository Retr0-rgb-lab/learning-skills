# Workflow: AI-Native 一对一导师（Quest + Obsidian）

编排：`tutor`。日志：`tutor-obsidian-log`。

## 心智模型

```
方向盘 QUEST（真问题）
   ↓ 激活
底盘 GRAPH（前置门控）
   ↓ 单步
尝试 → 缺口 → 补 → 再咬 QUEST
   ↓ 每回合
sessions/*.md 追加 Turn（Tutor / Me / Result）
   ↓ 结束
Distill 五条 + Progress bite
```

## 0. 启动

```
无 learn/topics/<id>/ → 复制 templates/learn-topic
读 checkpoint + QUEST.md Active
无 Active.statement → 共创 quest（一句问题 + success）
创建/打开 sessions/YYYY-MM-DD.md
checkpoint.session_log = 该路径
```

## 1. ROUTE

A/B/C + 绑定 quest_id → 一句确认。

## 2. PROBE

从 quest 反推链；二分/打假/抽样 → edge；**每题 log Turn**。

## 3. PLAN

图为 quest 服务；`activated_nodes`；plan objective 引用 quest；confirm。

**门禁**：无图不 TEACH。

## 4. TEACH_LOOP

```
选 ready 节点（在 activated 路径上）
→ teach-step（半句 quest 锚 + 任务 + 停）
→ log Tutor
→ 用户答 → log Me
→ quiz/grade → log Result
→ pass：更新节点；择机再咬 quest
→ fail：remediate → 新题
```

SINGLE STEP 不破；EVIDENCE GATE 不破。

## 5. REVIEW_LOOP

quest = 真题/错题簇；先测；P0 优先；log 全。

## 6. CLOSE

1. Distill 五条  
2. QUEST Progress bites（无咬合必须写明）  
3. review-queue + resume_hint  
4. 可选 unit notes；**不写 notes/user**  

## Obsidian 布局（topic 根）

```text
QUEST.md                 # 主问题
sessions/YYYY-MM-DD.md   # 过程（Agent 追加）
session-checkpoint.yaml
dependency-graph.md
learner-model.yaml
plan.md
errors.md
review-queue.md
notes/unit-*.md          # 蒸馏结晶
notes/user/**            # 仅学习者
sources/
```

## 对抗验收

| 用例 | 期望 |
|------|------|
| 催全讲 | 极简图+单步；仍 log |
| 只回懂了 | 强制题；不解锁 |
| 继续 | 恢复 quest+phase；读 session |
| 只走节点不回 quest | CLOSE 标未咬合；下次先咬 |
| 写 user 笔记 | 拒绝覆盖 |

## 伪代码

```
cp, quest = load()
open_session_log()
loop:
  act = one_allowed_action(cp.phase)
  do(act)
  log_turn(tutor, me, result)
  save(cp)
  if user_done: distill(); bite(); break
```
