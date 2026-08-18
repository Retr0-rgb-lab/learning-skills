---
name: tutor
description: Use when one-on-one tutoring, classroom learning in Obsidian, Probe Plan Teach Test, CV or any subject tutoring, 一对一辅导, 继续学, 复习, or vault notes/classroom.
---

# Tutor — 编排入口（必须调度子 skill）

## 每回合强制顺序

```
1. read _agent/session-checkpoint.yaml（若无则 route）
2. load tutor-stage-gate → 决定 phase_action
3. 按 action must-load 子 skill（见下表）并执行
4. WRITE_BACK + 更新 checkpoint
```

| phase_action | must-load |
|--------------|-----------|
| RESEARCH_OR_ROUTE | tutor-route；大科目再 + tutor-curriculum-research |
| FAQ | tutor-faq-append |
| GRADE / GRADE_PRACTICE | tutor-micro-quiz；（fail）+ tutor-remediate |
| OPEN_UNIT / TEACH | tutor-classroom + tutor-teach-step |
| RESUME | tutor-checkpoint + stage-gate |
| REVIEW | tutor-review |
| PLAN | tutor-plan |
| PROBE | tutor-probe |

**禁止**只凭本文件空讲完整课而不 load 上表。

---

## 文件模型决策树（消掉单/多文件矛盾）

```
IF 主题总览/目录/Mermaid 总图:
  → notes/classroom/<主题>入门.md   # 稳定 INDEX，少改
IF 某一层精讲+答题:
  → notes/classroom/L{n}-*.md       # 新建；一课一文件
IF 重图解:
  → L{n}-图解.md + assets-*/
IF 大科目规划说明:
  → 路径规划-*.md
学生「只看 classroom」= 看 INDEX 指到的当前课，不是永远一个物理文件装所有问答
```

反模式：用整文件覆盖 INDEX 塞进某一课正文；或开一堆课却不更新目录当前 ▶️。

---

## 四阶段 + 大科 0

0. **RESEARCH**（大科目）curriculum-research  
1. **EDGE** probe 或 DECLARED_EDGE  
2. **PLAN** Mermaid（INDEX 或规划页）  
3. **TEACH/TEST** 按 unit 循环（stage-gate 看守推进）  
4. 课中 **FAQ** 不推进 unit  

scene A/B/C 与 phase/unit **正交**（stage-gate）。

---

## IRON

SINGLE STEP · GRAPH after edge · EVIDENCE GATE · NO CLOBBER · WRITE_BACK · FAQ_APPEND · OK_MEANS_READ_FILE · RESEARCH_FIRST(大科) · GOAL_LOCK · USER ZONE  

GOAL_LOCK：用户宣布 A/考试/项目 → 规划页写验收表 + checkpoint.goal_level。

---

## 每回合清单

stage-gate 动作？子 skill 已 load？读文件批改？反馈模板？checkpoint.last_grade？目录 ▶️/✅？
