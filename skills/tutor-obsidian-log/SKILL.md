---
name: tutor-obsidian-log
description: Use when syncing tutor agent state to _agent, session distill at lesson end, or separating student classroom UI from machine state.
---

# tutor-obsidian-log

## 分工

| 区域 | 内容 |
|------|------|
| classroom | 学生讲解/作答/反馈/答疑 |
| `_agent/` | checkpoint, learner-model, research, grades 摘要 |

## 何时写 _agent

- 每回合末：checkpoint（经 tutor-checkpoint）  
- 课 ✅ 时：learner-model 节点状态  
- 可选：`_agent/grades.jsonl` 追加一行 grade  

## Distill 五条（unit-wrap / 课结束时写入课堂「本层结束」或 _agent/session 摘要）

1. **边界移动**：从…到…  
2. **本课证据**：pass 的题/实验  
3. **仍薄弱 / a_level_debt**  
4. **误解标签**（若有）  
5. **下一文件/动作**  

无 Distill 也可推进，但 A 档验收前应补齐历史课的债务列表。
