---
name: tutor-checkpoint
description: Use when loading or saving tutoring session state, pause/resume learning, writing session-checkpoint.yaml, binding session_log path, or ending a tutor session.
---

# tutor-checkpoint — 检查点

## Overview

相位真相源。与 `QUEST.md`、`sessions/*.md` 三件套。

## Load

1. checkpoint + QUEST Active + session_log（若有）  
2. 校验 phase/awaiting/quest_id  
3. 无 topic → 复制 `templates/learn-topic/`  

## Save triggers

相位变更；每回合动作后；暂停/结束。

## Fields

含：`quest_id` `session_log` `turn_index` `resume_hint`（见 schemas）

## Resume

「继续」→ 恢复 phase + 同一 quest；热身可选 1 题；不重头灌第一章。
