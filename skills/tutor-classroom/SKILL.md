---
name: tutor-classroom
description: Use when writing tutoring into Obsidian classroom files, multi-file lessons, roadmap index, append-only feedback, FAQ append, OK means read file, or notes/classroom workflow.
---

# tutor-classroom

## 铁律

1. **NO CLOBBER**：禁止用整文件 write 抹掉学生作答与旧讲解。  
2. **INDEX+LESSON**：`主题入门.md` 稳定总览；精讲 `L{n}-标题.md` 新建。  
3. **APPEND ONLY**：反馈、答疑、补图说明只追加。  
4. **OK_MEANS_READ_FILE**：用户说 ok/好了 → 读文件作答区批改。  
5. **WRITE_BACK**：聊天讲过的要点必须落盘。  
6. **FAQ_APPEND**：追问走答疑模板（见 `tutor-faq-append`）。  
7. **VISUAL_SIDECAR**：重图解可 `L{n}-图解.md` + `assets-*/`。  
8. 学习过程以 **classroom** 为唯一学生界面（不作答进其它目录）。  

## 总览文件允许的改动

- 目录表里 **一行状态**（▶️/✅）  
- 增加指向新文件的一行链接  
- 文首一句指针（谨慎）  

禁止：把总览改写成某一课正文。

## 新课文件骨架

```markdown
---
title: Lx …
parent: 主题入门.md
---
# 标题
## 目标
## 讲解
## 练习
### 我的回答
## 导师反馈（追加）
```

## 批改

1. read 作答  
2. append 反馈  
3. 更新索引状态行  
4. 更新 `_agent/session-checkpoint.yaml`  
