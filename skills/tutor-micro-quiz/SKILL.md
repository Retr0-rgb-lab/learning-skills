---
name: tutor-micro-quiz
description: Use when grading classroom answers, gate-checking mastery after a lesson step, deciding pass partial fail, writing tutor feedback, or user says ok after answering.
---

# tutor-micro-quiz — 评分 · 反馈 · 门控

## 触发

- 用户说 ok/好了/答完 且 classroom 作答区有新内容  
- 需要决定是否推进节点/下一 Lx  
- 写「导师反馈」追加段  

## IRON：无结构化反馈不得推进

推进到下一节点/下一课 **当且仅当** `grade=pass`（或 A 档要求的连续证据满足）。  
`partial` → 同课追加校正 + 可降级再测，**不**标 lesson ✅。  
`fail` → 调用 remediate 逻辑，不推进。

「懂了」无作答 → `grade=skip`，不推进。

---

## 判定前必读

1. 本题题干 + 本课目标（exit 标准）  
2. 学生「我的回答」**全文**  
3. checkpoint：scene / goal_level(A?) / current_node  

---

## Rubric（出题时就该有；批改时补齐）

出题时在 `_agent/` 或课文件 HTML 注释中保留：

```text
<!-- rubric
must_hit: [关键点1, 关键点2]
nice: [加分点]
fail_if: [致命误解]
-->
```

若题干未预埋：批改前 **先默写 2～4 条 must_hit** 再打分。

**禁止**把 rubric/must_hit/fail_if 写进 `notes/quiz/` 或 `notes/learn/` 学生可见正文。
标准放 `_agent/rubrics/*.yaml`（或仅导师侧记忆），学生卷面保持干净。
出综合测时：**避免课内原题重贴**；换情境/换问法测同一考查点。

---

## Grade 定义

| grade | 条件 | 动作 |
|-------|------|------|
| **pass** | must_hit 全覆盖或等价表述；无 fail_if | 追加反馈；可推进 |
| **partial** | 方向对，缺 ≥1 个 must_hit；或有可纠正的不准表述 | 反馈+校正句；**同节点**补问或要求补一句；不推进 lesson |
| **fail** | 命中 fail_if；或与目标无关；或空白 | error_tag + remediate；不推进 |
| **skip** | 无作答 | 提示作答 |

**短答政策：** 允许短，但必须命中 must_hit 的语义；「对/好/懂了」≠ pass。

**A 档：** partial 里缺「机制动词」（如只有「汲取教训」无「降损失/梯度」）→ 至少 partial，反馈点名补钉；可 pass 概念关但在 feedback 标 `a_level_debt`。

---

## 反馈模板（必须按此追加到 classroom）

```markdown
### 反馈 · {id} · {pass|partial|fail}（日期）

**证据（引用你的原句）：**
> …

**命中：**
- …

**缺口 / 校正：**
- …（给出可背的正确表述）

**错误标签：** {tag 或 none}

**门控：** 推进 / 留下补一句 / 同节点再练  
**下一动作：** 打开 {文件} 做 {事}
```

禁止：只有「很好/过关」无证据引用。  
禁止：否定学生整个人；否定具体表述。

---

## error_tag（fail/partial 常用）

`slip | procedure | concept | foundation | decay | illusion | wrong_schema | patchy | language | overgeneralize | a_level_debt`

选 1 个主标签；foundation/wrong_schema → 接 tutor-remediate 策略。

---

## 与写回

- 反馈只 **append**  
- 更新 `_agent/session-checkpoint.yaml`：  
  `last_grade`, `last_evidence_quote`, `pending_quiz_id`, `awaiting_user`  
- pass 且课 exit 满足 → 索引目录该课 ✅（只改一行）  

---

## 批改伪代码

```
text = read_answer(student_file)
if empty: grade=skip; ask_answer; stop
rubric = load_or_infer_rubric()
hits, misses, fatal = match(text, rubric)
if fatal: grade=fail
elif not misses: grade=pass
else: grade=partial
append_feedback_template(...)
if grade==pass and exit_check_ok: allow_advance
elif grade==partial: request_patch_or_requeue
else: must-load tutor-remediate; remediate()
```
