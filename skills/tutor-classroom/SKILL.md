---
name: tutor-classroom
description: Use when writing tutoring into Obsidian learn or quiz markdown files, multi-file lessons, roadmap index, append-only feedback, FAQ append, OK means read file, notes/learn notes/quiz workflow.
---

# tutor-classroom — learn / quiz 文件 IO

## 目录约定（学生界面）

```text
notes/
  learn/           # 精讲、总览、规划、图解、实践说明
    <主题>入门.md  # INDEX
    L{n}-*.md
    路径规划-*.md
    assets-*/
  quiz/            # 阶段测、综合测
    Quiz-*.md
_agent/            # 机器状态
```

| 内容 | 目录 |
|------|------|
| 总览 / Mermaid / 课目录 | `notes/learn/` |
| 一层精讲 + 课内小练习 | `notes/learn/L*.md` |
| 阶段/综合测验 | `notes/quiz/Quiz-*.md` |
| 图解 sidecar | `notes/learn/` |

**禁止**再把 quiz 与长精讲混在同一目录不加区分。

## 铁律

1. **NO CLOBBER**  
2. **INDEX+LESSON**：总览在 learn；精讲新建 Lx  
3. **QUIZ SEPARATE**：测验新建于 `notes/quiz/`  
4. **APPEND ONLY** 反馈/答疑  
5. **OK_MEANS_READ_FILE**  
6. **WRITE_BACK**  
7. **FAQ_APPEND** 追问写入当课 learn 或对应图解  

## 链接

- learn 内互链：`./L0-….md`  
- learn → quiz：`../quiz/Quiz-….md`  
- quiz → learn：`../learn/CV入门.md`  

## checkpoint

`student_file` 指向当前作答文件（learn 或 quiz 路径）。  
`index_file` 指向 `notes/learn/<主题>入门.md`。
