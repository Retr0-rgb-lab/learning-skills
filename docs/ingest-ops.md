# Ingest 操作手册

配合 `learn-ingest`。输入=用户粘贴的长对话/笔记；输出=raw + drafts + 节点摘要 + 链接。

## 1. Capture

- 路径：`notes/raw/Q{n}-{yyyymmdd}-{slug}.md`
- 文首写：source_channel、related_node、captured_at
- **禁止**改已存在 raw

## 2. Segment（会话分段）

按主题切块，每块标：

- `§id` 锚（供引用）
- kind: `def|how-to|example|claim|question|noise|error-suspect`
- noise（寒暄/重复）不进 compile

## 3. Extract

每块抽：

- 概念名（标准名+别名）
- claims（可检验句子）
- open_questions
- likely_misconceptions

## 4. Classify → 页

| 信号 | type |
|------|------|
| 可定义、可复述 | concept |
| 步骤/代码手续 | skill |
| A 与 B 对比 | comparison |
| 明确错结构 | misconception |
| 整段来源摘要 | source |

合并：同 aliases 或同标准名 → 一页；冲突 → dual-claim 段。

## 5. Compile draft

- 路径：`notes/wiki/.drafts/<type>/Name.md`
- 每页：定义/要点、例子、claims 列表、`sources` 锚到 raw§、`related_nodes`
- claim 默认 unverified

## 6. Link

- 页内 `[[其他概念]]`；断靶 → stub
- 挂 Qn：frontmatter + 节点「整理摘要」追加列表
- 边预算：每页新出链 ≤5；优先 requires/confusable 已在 graph 的映射

## 7. Annotate node

节点文件追加（不碰「我的结论」）：

```markdown
### 整理摘要 · YYYY-MM-DD
- raw: [[...]]
- concepts: …
- flags: …
- 待 evidence
```

## 8. Handoff

- 节点 → drafted
- checkpoint.awaiting → answer（若该出题）或 idle
- **不**写 graph ✅；**不**晋升正式 wiki

## 9. Promote（仅 evidence 后，由 learn-evidence 调）

- `.drafts/X` → `wiki/X`（或合并）
- 更新 `wiki/index.md`、`log.md`
- status: verified（仅过 gate 的 claims）
