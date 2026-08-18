---
name: tutor-classroom
description: Use when writing tutoring into Obsidian classroom files, multi-file lessons, roadmap index, append-only feedback, or notes/classroom workflow.
---

# tutor-classroom

## 铁律：不覆盖学生历史

1. **总览/路线图**（如 `CV入门.md`）= 稳定索引：可更新目录表状态，**禁止**用整文件重写清掉历史总览。  
2. **每一层/每一课精讲** = **新建文件**（如 `L0-问题与任务.md`、`L1-….md`）。  
3. 学生作答后：导师只在 **当课文件末尾追加** 反馈与下一题；**禁止**删改「我的回答」原文。  
4. 需要大改结构时：新建 `…-v2.md` 或新课文件，旧文件保留。  
5. 聊天里说明打开 **哪个新文件**；不要让学生只靠被覆盖的同一份文档回忆。

## 推荐布局

```text
notes/classroom/
  README.md           # 目录说明
  <主题>入门.md        # 总览 + Mermaid + 课表（稳定）
  L0-….md             # 第0层精讲+答题
  L1-….md
notes/user/           # 仅学生
_agent/               # 仅导师状态
```

## 写入动作

| 事件 | 动作 |
|------|------|
| 出总览 | 写/更新索引文件（谨慎、保留正文） |
| 开始新层/新步 | **create** 新 md |
| 批改 | append 反馈到当课文件 |
| 推进 | 索引课表改状态 + 新文件或同文件追加下一题 |

## 禁止

- `write` 整文件覆盖已有答题课文件  
- 把多课内容反复塞进同一文件并抹掉旧讲解  
- 覆盖 `notes/user/**`
