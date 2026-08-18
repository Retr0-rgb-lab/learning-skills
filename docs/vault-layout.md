# Vault 布局

学生日常入口见 [wiki-ia.md](./wiki-ia.md)。规划见 [problem-planning-sop.md](./problem-planning-sop.md)。整理见 [ingest-ops.md](./ingest-ops.md)。

```text
notes/
  graph.md                 # 入口1：问题图+状态
  nodes/Qn-*.md            # 单题过程
  raw/                     # 不可变原文
  wiki/
    index.md               # 入口2：正式知识 MOC
    log.md                 # 入口3：时间线
    map.md                 # 可选概念图
    .drafts/{concepts,skills,comparisons,misconceptions,sources}/
    {concepts,skills,comparisons,misconceptions,sources}/
  _legacy/                 # 可选归档
_agent/
  session-checkpoint.yaml
  learner-model.yaml
  goal.md
  research/
    sources.md
    candidate-questions.md
practice/                  # 代码与实验
```

## 节点文件骨架

```markdown
# Qn · 标题
status: open|exploring|drafted|evidenced|mastered|debt
goal_layer: orient|operate|master
wiki_links: []   # 晋升后填

## Brief
## 我的结论
## 作答
## 反馈
## 答疑
## 整理摘要
```

## 权限

| 区 | 规则 |
|----|------|
| raw/ | 只新建 |
| nodes/ 我的结论·作答 | 不覆盖，可追加 |
| wiki/.drafts/ | 可重生成 |
| wiki/ 正式 | evidence 后晋升 |
| _agent/ | 机器可写 |
