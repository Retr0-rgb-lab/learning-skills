---
name: learn-ingest
description: Use when pasting chat logs notes or transcripts into the vault, compiling raw to wiki drafts, 整理对话, LLM wiki ingest, or modularizing exploration into concepts.
---

# learn-ingest

**完整 SOP：docs/ingest-ops.md** · 浏览：docs/wiki-ia.md

## 触发

- 长对话/笔记/日志 → 本 skill
- 短问 → classroom FAQ，不走全量 ingest
- 必须能挂至少一个 Qn（无节点先 graph/brief）

## 管道

```
Capture raw → Segment§ → Extract → Classify
  → Compile .drafts → Link+stub → Annotate node → Handoff
```

## 分段边界（模块）

新模块 = 出现以下之一：新问题、新概念定义、新对比、新错念、新步骤/代码块。  
禁止整帖糊成单页「对话总结」。

## 分类

| 信号 | type | 目录 |
|------|------|------|
| 可命名概念 | concept | wiki/.drafts/concepts/ |
| 步骤/代码手续 | skill | …/skills/ |
| A vs B | comparison | …/comparisons/ |
| 错误结构 | misconception | …/misconceptions/ |
| 外部书/课摘要 | source | …/sources/ |

对话原文在 raw；source 页指向书/课，不替代 raw。

## 链接

- claim 必锚 `raw/…§id`（ANCHOR_OR_DROP）
- 页 ↔ Qn：`related_nodes` + 节点整理摘要
- 断链 → stub（一句话+related+status:stub）
- 同实体 aliases，不建近义重复页
- 每页新出链 ≤5

## IRON（10）

1. **NO_BLOB_SUMMARY** — 禁止整帖单页纪要；按模块拆页  
2. **RAW_IMMUTABLE** — raw 只新建不改史  
3. **ANCHOR_OR_DROP** — 无锚点断言不进 claim 体  
4. **UNVERIFIED_DEFAULT** — 默认 unverified；本 skill 不点 ✅  
5. **STUB_BEFORE_SKIP** — 断链先 stub  
6. **ALIAS_NOT_DUPLICATE** — 同义合并 aliases  
7. **MISCONCEPTION_UNMERGED** — 错念独立页，不美化进 concept  
8. **DUAL_CLAIM_NO_SMOOTH** — 冲突并列不静默抹平  
9. **BIND_TO_QN** — 每轮挂回 Qn 整理摘要；无节点不入库  
10. **PROMOTE_ONLY_AFTER_EVIDENCE** — 正式 wiki 仅 evidence 后；drafts 不进 index  

另：noise 不编译；NO_CLOBBER「我的结论」；结束 `wiki/log.md` 一行；**改 graph 状态→drafted**。

## 节点追加

```markdown
### 整理摘要 · YYYY-MM-DD
- raw: `notes/raw/…`
- 本轮页: [[…]]
- claims/迷思/缺口:
- suggested_quiz_focus:
- 下一动作: evidence
```

## Handoff → evidence

交出：draft 路径列表、claims 摘要、迷思、缺口、suggested_quiz_focus。  
awaiting=answer|idle；**不**晋升、**不**标 evidenced。
