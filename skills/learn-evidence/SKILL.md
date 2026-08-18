---
name: learn-evidence
description: Use when grading node answers, evidence gate, micro-quiz after explore, 过关, user says ok, pass partial fail, or promoting wiki draft after verification.
---

# learn-evidence

## 触发

ok / 要测 / 交卷 → **读 student_file 作答区**（可先把题追加进「作答」再等答）

## 证据条（drafted→evidenced）

**至少 2 条**（Orient 可 1 条 + 人审确认 draft）：

1. 节点微测 pass（题在节点作答区）
2. 实践产物达标（路径/日志可核对）
3. 用户对相关 draft **逐条**确认或改正

禁止：仅「对话很长 / wiki 很全 / 聊过了」。

## 命题

对准成功标准 + raw/结论漏洞；2–4 题或 1 实践；**题面写入节点文件**再评。

## 分

| 结果 | 行为 |
|------|------|
| pass | 节点 evidenced；晋升 related `.drafts`→正式 wiki；更新 index+log+graph |
| partial | 反馈追加；保持 drafted |
| fail | 反馈；debt/exploring；scaffold 或再外探 |

## 晋升（仅 pass）

1. 本节点 related drafts → `notes/wiki/{type}/`
2. frontmatter status=verified（未检 claim 保持 unverified 并标明）
3. `wiki/index.md` 分组加链；`log.md` 记 promote
4. 节点 `wiki_links` 更新

## 反馈模板

```markdown
### 反馈 · YYYY-MM-DD · pass|partial|fail
- 证据条：1/2/3 …
- 对的：
- 校正：
- wiki：
- 下一刀：
```

## Ingest 交接

- 读取节点整理摘要中的 draft 列表与 suggested_quiz_focus
- 硬主张/公式：晋升前 learn-factcheck
- pass 才 `.drafts`→正式目录 + index + log；未绑定 Qn 的 draft 不自动晋升
- 晋升后更新节点 wiki_links 与 graph 状态列
