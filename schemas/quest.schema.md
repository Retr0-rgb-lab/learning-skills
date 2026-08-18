# Quest 合约

## 原则

- **Quest = 方向盘**（真问题/真任务）
- **Graph = 底盘**（前置与门控）
- 每个 TEACH/REVIEW 会话必须绑定一个 `quest_id`
- 节点推进若无法写清「对 quest 的 bite」，视为空转

## Active 字段

| 字段 | 含义 |
|------|------|
| id | q-NNN |
| statement | 一句话问题，禁止纯章节名 |
| success | 可观察解决标准 |
| activated_nodes | 本 quest 激活的 subgraph |
| status | active / parked / solved |

## 场景下的 quest 形态

| 场景 | quest 例子 |
|------|------------|
| A | 最小任务：能手写并解释一个 for 求和 |
| B | 续上：独立做出上次卡死的那道更新题 |
| C | 考题簇：限时正确完成套卷中贝叶斯 2 题 |
