# Workflow: Research → Route → Plan → Teach/Test

## 学生可见

```text
notes/
  learn/     # 总览、规划、Lx 精讲、图解、实践说明
  quiz/      # 阶段/综合测验
_agent/      # checkpoint / research（学生可不看）
```

## 双轴

- **scene** A/B/C  
- **phase/unit** + 当前文件在 learn 或 quiz  

## 主流程

```
research → route → probe? → plan（写入 learn/）
→ loop:
     精讲单元 → notes/learn/Lx-*.md
     阶段测验 → notes/quiz/Quiz-*.md
     ok → read 文件 → grade → append 反馈
     pass → 更新 learn/INDEX 目录状态
```

## 课中追问

FAQ 追加到 **当前 learn 课文件**（或图解），不写到 quiz 除非在测。

## 实践

代码可在 `practice/`；说明与实验记录在 `notes/learn/L6a-*.md`。

## 每回合检查

NO CLOBBER · 读对 learn/quiz 路径 · 反馈模板 · checkpoint.student_file 正确  
