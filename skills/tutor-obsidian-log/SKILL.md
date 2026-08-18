---
name: tutor-obsidian-log
description: Use when logging tutoring turns to Obsidian, writing session transcripts, recording learner answers, distilling a study session, or vault learn/topics session notes.
---

# tutor-obsidian-log — Obsidian 学习日志

## Overview

Vault 是学习记忆。默认粒度：

1. **每回合追加** Tutor 问/讲、Me 答/问、Result  
2. **会话结束蒸馏** 固定 5 行（Distill）  
3. **`notes/user/` 永不覆盖**（只读或 wikilink）

## Paths（topic 根下）

| 路径 | 用途 | Agent |
|------|------|-------|
| `QUEST.md` | 主问题线程 | 读写 Active/bites |
| `sessions/YYYY-MM-DD.md` | 过程日志 | 追加 turns |
| `session-checkpoint.yaml` | 相位 | 读写 |
| `notes/unit-*.md` | 单元结晶 | 写 |
| `notes/user/**` | 学习者自有 | **禁止写/改** |

新会话：若当日文件不存在，从 `sessions/_TEMPLATE.md` 复制并填 frontmatter；`checkpoint.session_log` 指向该文件。

## LOG_TURN（每回合）

在完成一次「对用户可见的教学动作 + 若有则学习者回复」后追加：

```markdown
### Turn {n}
#### Tutor
{问 / 任务 / 最短讲解原文或要点 — 勿丢题目}

#### Me
{学习者原文；无则写 （等待中） 或 （未作答）}

#### Result
- result: pass | partial | fail | n/a
- tags: []
- node: {current_node_id}
- quest: {quest_id}
- next: {一句}
```

规则：

- `turn_index` += 1，与标题 Turn n 一致  
- **保留学习者原话**（可轻微去噪，不改写观点）  
- 讲解过长可摘要，但**题干与判定必须完整**  
- 同回合只追加一块 Turn  
- frontmatter 同步：`phase` `node_id` `quest_id` `scene`  

## DISTILL（会话结束）

填写（或覆盖更新）文首下 `## Distill`，**恰好覆盖这 5 项**：

```markdown
## Distill
- **边界移动**: 从…到…
- **quest 推进**: 对 Active quest 多了哪一寸（无则写「未咬合 quest — 原因」）
- **掌握/证据**: 节点 → 结果
- **仍薄弱**: …
- **下次第一件事**: …
```

并：

1. `QUEST.md` → Progress bites 追加一行日期+推进  
2. 若产生衍生问题 → Derived questions  
3. `review-queue.md` / `errors.md` 已由其它 skill 更新则此处只检查  
4. `resume_hint` 与 Distill「下次」一致  

## Quest 咬合检查

写 Distill 前自问：本会话是否至少一次**回到 quest 尝试**或明确「补底座为了 quest」？  
若否：Distill 的 quest 推进必须写明缺口，`resume_hint` 优先回到 quest。

## Obsidian 习惯

- wikilink：`[[QUEST]]` `[[sessions/2026-08-18]]`  
- 可用 Dataview 读 frontmatter（date, scene, quest_id, node_id）  
- 不扫全库；只动本 topic 约定路径  

## Forbidden

- 只存 AI 讲解、不记 Me  
- 覆盖 `notes/user/**`  
- 用聊天记忆代替 sessions 文件  
- 把 sessions 当唯一笔记、从不蒸馏  
