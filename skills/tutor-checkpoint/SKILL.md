---
name: tutor-checkpoint
description: Use when loading or saving tutoring session-checkpoint.yaml, resume learning, continue study, or sync phase unit awaiting after a tutor turn.
---

# tutor-checkpoint

## 路径

统一：`_agent/session-checkpoint.yaml`（相对学习库根）。  
**不要**在 classroom 根再写第二份。

## Load（回合开始）

1. 若文件不存在 → 返回 empty，交给 route  
2. 读全部字段（见 schemas/session-checkpoint.schema.yaml）  
3. 校验 student_file 存在；不存在则按 unit_id 修复或标 error  

## Save（回合结束）

至少写入：`scene phase unit_id student_file awaiting_user last_grade updated_at`  
GRADE 后必须有 `last_evidence_quote`（可截断）。

## Resume

用户「继续」：load → 打开 student_file → 根据 awaiting 提示答/跑/读反馈。
