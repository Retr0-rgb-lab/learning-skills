# Workflow: Research → Route → Plan → Teach/Test（Classroom-First）

## 学生可见

```text
notes/classroom/
  主题入门.md          # 稳定总览+目录
  路径规划-*.md        # 大科目调研后
  Lx-*.md              # 一课一文件
  Lx-图解.md           # 可选
_agent/                # 学生不必看
```

## 双轴

- **scene** A/B/C：节奏与测频（route）  
- **phase/unit**：当前动作与哪一课（stage-gate + checkpoint）  

## 主流程

```
新大学科 → curriculum-research → 路径规划页
→ route(scene)
→ probe? (自认小白可跳过题海)
→ plan Mermaid 写入总览/规划页
→ loop units:
     open/create Lx file
     teach-step
     student answers in file
     user: ok → stage-gate: GRADE
     micro-quiz feedback append
     pass → mark ✅ + next unit
     partial/fail → remediate/FAQ stay
→ quest gate / A 验收
```

## 课中追问

`tutor-faq-append`；phase 保持；不推进 unit。

## 实践单元

awaiting=run_practice → 用户跑代码 → ok → 读实验记录段批改。

## 每回合

1. stage-gate 检测 phase_action  
2. 执行单一动作  
3. WRITE_BACK  
4. 更新 checkpoint（含 last_grade）  
5. 清单：NO CLOBBER / 读文件 / 反馈模板  

## 详审计

`docs/audit-stage-and-feedback.md`  
`docs/lessons-from-cv-session.md`
