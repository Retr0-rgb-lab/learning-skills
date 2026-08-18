---
name: tutor-classroom
description: Use when writing tutoring content into a single Obsidian classroom markdown file, logging Q&A together, updating Mermaid learning map in student notes, or vault notes/classroom workflow.
---

# tutor-classroom — 单文件课堂读写

## Overview

学生唯一界面 = `notes/classroom/<主文件>.md`。  
所有提问、学生回答、导师反馈、Mermaid、当前步都在此汇合。

## 写入规则

1. **追加/改写主文件**，不新建一堆 01/02/03 让学生跳转（除非用户明确要求分册且仍有一个目录索引）。  
2. 结构固定见 `tutor` skill「主文件推荐结构」。  
3. 每次只解锁 **一** 个「我的回答 · Qx」空位。  
4. 反馈写在同文件「导师反馈区」或该题正下方。  
5. 通过后：更新路线图节点状态，当前一步换成新步骤，放入新回答槽。  
6. 历史问答折进「背景/附录」，避免主路径噪音。  

## 禁止

- 要求学生去 `_agent/` 找题  
- 聊天里长文讲解却不写回 classroom（聊天只做指引）  
- 覆盖 `notes/user/**`
