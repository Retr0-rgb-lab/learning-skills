---
name: tutor-checkpoint
description: Use when loading saving tutoring checkpoint under _agent, resume classroom learning session.
---

# tutor-checkpoint

路径默认：`_agent/session-checkpoint.yaml`  
字段：`phase, current_node_id, student_file, pending_quiz_id, awaiting_user`  
恢复时先打开 `student_file` 看学生最新作答。
