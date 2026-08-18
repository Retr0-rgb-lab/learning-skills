---
name: tutor-faq-append
description: Use when the learner asks a mid-lesson clarification, misconceptions, why-questions during tutoring, or answers should be written back into the Obsidian classroom FAQ section.
---

# tutor-faq-append

## 原则

课中追问 = 学习事件。  
**禁止**只在聊天回答；必须 **追加** 到当课文件或图解 sidecar。

## 何时

- 「为什么…？」概念澄清  
- 纠正误解（用户复述不准确）  
- 要图/例子解释当前节点  

## 怎么写

1. 定位文件：当前 `Lx-*.md` 或 `Lx-*-图解.md`  
2. **只追加、不覆盖**「我的回答」原文  
3. **位置：紧挨问题来源**（代码块下、该小节内、该题正下方）；**禁止**默认堆到文末大「答疑区」  
4. 模板：

```markdown
## 答疑 · {标题}（日期）

### 用户原意
> {尽量保留用户原话}

### 答复
{短、可扫；必要列表/mermaid}

### 一句话
> {可背诵的收束}
```

5. 稳定误解 → `_agent/learner-model.yaml` misconceptions  
6. 聊天：浓缩答复 + 已写入路径  

## 反模式

- 覆盖全文 · 借答疑塞整课 · 答完不落盘  
