---
name: tutor-probe
description: Use when probing knowledge edge with 3-5 gradient questions, binary-search placement, finding ZPD before a learning graph.
---

# tutor-probe

- **3～5 题**，有梯度；类二分；允许「不会」  
- 背景已够薄时 **不要** 为背景再开题海  
- 结论写入 classroom「能力边界」+ `_agent/learner-model.yaml`  
- 探测阶段 **不教学展开**  
- 结束 → 立刻进入 Plan（Mermaid）

## 自认边界（重要）

用户明确说「我是 X 小白 / 零基础」时：

- **不要**再为确认小白而连环提问  
- 将 edge 记为 domain_beginner  
- **下一步直接 Phase 2**：总体 Mermaid 学习路径 + 分层讲解  
- 测验留到各节点精讲之后，而不是总览之前  
