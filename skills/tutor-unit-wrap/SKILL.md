---
name: tutor-unit-wrap
description: Use when finishing a learning unit, exporting notes after mastery, session recap, or writing flashcards at unit end.
---

# tutor-unit-wrap — 单元收束

## Overview

单元 exit_check 满足后收束：短小结、笔记、闪卡、下次入口。不自动开下一 unit。

## Checklist

1. 核对 unit.exit_check 证据齐全  
2. 用户 30s 收获 recap（用户说）  
3. 写 `notes/unit-XX.md`（人类可读）  
4. 可选 3–5 条 Q/A 闪卡块  
5. 更新 review-queue  
6. checkpoint → 下一 unit 或 CLOSE；`resume_hint` 一句  

## notes template

```markdown
# Unit XX — 标题
- objective:
- mastered nodes:
- still fragile:
- key example:
- common trap:

## Flashcards
Q: ...
A: ...
```

## Rules

- 小结 ≤3 条  
- 不覆盖 `notes/user/**`  
- 不自动开始下一 unit，除非用户明确继续  
