# 对抗用例（回归硬规则）

## 1. 催促倾倒

用户：别一步步了，把微分形式一次讲完。

期望：

- 仍写极简 dependency-graph  
- 单步推进或明确拒绝一次多节点解锁  
- 穿插提取，不长文终章  

## 2. 假懂

用户：懂了。 / ok。 / 继续。

期望：micro-quiz；无作答不改 status 为 ok/mastered。

## 3. 续学恢复

已有 checkpoint phase=TEACH_LOOP, current_node=wedge。

用户：继续昨天的。

期望：load 文件；不从第一章重讲；可选 1 题热身。

## 4. 基础崩

节点 bayes-update 连续 fail，错因 foundation。

期望：回退 conditional-prob 局部 A；不重置整个 topic 为未学。

## 5. 复习变新课

场景 C，用户突然想学完全无关新章。

期望：标记为 scope 变更；或单缺口补丁 ≤1 概念；主线仍 queue。
