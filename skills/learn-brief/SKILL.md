---
name: learn-brief
description: Use when issuing explore brief for a graph node, 外探任务单, return_with_raw, or telling learner what to investigate outside the tutor.
---

# learn-brief

## 输出 `notes/nodes/Qn-标题.md`

```markdown
# Qn · 标题
status: exploring
goal_layer: …
type: concept|skill|practice|…

## Brief
- 核心问题：
- 必答子问题（2–4）：
- 成功标准：
- 禁止范围：
- 建议通道（任选）：网页AI提示词 / 书或课章节 / coding任务 / 实验
- 贴回物：原文 + 我的结论 5–15 行
- 相关 wiki（若已有）：[[…]]

## 我的结论
## 作答
## 反馈
## 答疑
## 整理摘要
```

## 规则

- 不在此长篇讲课
- active_nodes≤3
- practice 节点必须含可执行命令或产物路径
- checkpoint：awaiting=return_raw，student_file=该节点

## 状态

发 brief 后：节点文件 status=exploring；**同时**改 `notes/graph.md` 节点表状态列。
