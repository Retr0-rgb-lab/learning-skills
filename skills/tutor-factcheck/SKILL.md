---
name: tutor-factcheck
description: Use when verifying formulas, definitions, APIs, historical claims before teaching, or when the learner challenges a tutor assertion.
---

# tutor-factcheck — 事实核查

## Overview

后台核查关键断言。不对用户长篇发言；结果经 Tutor 短注呈现。

## Input

`claims[]` + topic 上下文  

## Output

`sources/factcheck-<ts>.md`：

| claim | verdict | confidence | source | note |
|-------|---------|------------|--------|------|
| | verified/uncertain/conflict/unchecked | | | |

## Rules

1. 可核查才查；价值判断不装事实  
2. `uncertain` / `unchecked` → 教学保留措辞，不装权威  
3. 不把单一博客当唯一来源  
4. 超时 → unchecked  
5. 高风险（安全、剂量、法律）宁缺毋滥  

## When

Plan 完成后扫关键定义/公式；Teach 中用户质疑；涉及版本敏感 API。
