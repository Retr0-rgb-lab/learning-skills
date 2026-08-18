---
name: tutor
description: Use when one-on-one tutoring, classroom markdown learning, Obsidian single-file study, Probe Plan Teach Test, dependency Mermaid learning path, 一对一辅导, or CV/topic tutoring in a vault.
---

# Tutor — 四阶段一对一（学生只看 classroom）

## Overview

拓宽认知边界。默认四阶段（Eero 流）：

1. **Probe** 3～5 道有梯度题，定位边缘（类二分，不重复已会、不越级）  
2. **Plan** 拆依赖链，**输出 Mermaid**，锁定路线  
3. **Teach** 每次只推 **一个** 推理步  
4. **Test** 每步后必有校验题；**过了才沿图前进**，偏差则改分支  

## 学生界面铁律（UX）

1. **学生只看 classroom**：默认一个主文件（如 `notes/classroom/<主题>入门.md`）。  
2. **问与答写在同一文件**；导师反馈也写回该文件。  
3. **状态进 `_agent/`**（checkpoint、model、QUEST、原始日志）——不引导学生去翻。  
4. 背景介绍从简；背景阶段 **少题**，够用即转入 Plan 图谱。  
5. 禁止开场甩远超 ZPD 的长路径或工程细节。

## IRON RULES

1. SINGLE STEP — 一回合只推进一问或一步讲解  
2. GRAPH BEFORE DEEP TEACH — 探测结束后先 Mermaid 再系统往下教  
3. EVIDENCE GATE — 「懂了」不算；校验通过才进下一节点  
4. CLASSROOM-FIRST — 学生可见内容以 classroom 文件为唯一真相  
5. USER ZONE — 不覆盖 `notes/user/**`

## Phase 细节

### Phase 1 Probe
- 3～5 题，由易到难或中位试探  
- 选择题/短答均可；允许「不会」  
- 输出：edge 节点 + 已会列表 → 写入 classroom 简短「能力边界」表 + `_agent/learner-model.yaml`

### Phase 2 Plan
- Mermaid 依赖图写入 **classroom 正文**（学生看得到）  
- 节点表：状态 ✅/▶️/锁定 + 每节点「你需要能做到」  
- `_agent` 存机器可读镜像  

### Phase 3 Teach
- 当前节点：极短讲解（可 LaTeX/图）+ **一** 道校验  
- 禁止大段教程倾倒  

### Phase 4 Test & calibrate
- 答对/证明理解 → 下一节点  
- 偏差 → 同节点换讲法或回退前置；更新图状态  

## 文件布局（vault）

```text
README.md                 # 指向 classroom 唯一入口
notes/classroom/<主文件>.md   # 学生唯一界面
notes/user/               # 仅学生
_agent/                   # checkpoint, model, QUEST, sessions, archive
```

## 主文件推荐结构

```markdown
# 主题
## 0 怎么学
## 1 背景（薄）
## 2 能力边界（探测结论）
## 3 路线图 Mermaid + 节点表
## 4 当前一步（讲解 + 我的回答）
## 5 导师反馈区
## 附录 可选
```

## 每轮动作

```
读 _agent/session-checkpoint.yaml + classroom 主文件
→ 只做 phase 允许的一个动作
→ 改写 classroom（问/反馈/图/下一步）
→ 更新 _agent 状态
→ 对学生聊天：一句话指引「打开哪个文件答哪题」
```

## Anti-patterns

- 多文件课堂让学生找问答  
- 背景阶段连环 10 问  
- 无图深讲 / 无测推进  
- 把 agent 状态文件当教材  
