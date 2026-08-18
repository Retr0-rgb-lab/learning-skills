---
name: tutor-remediate
description: Use when learner fails a quiz, is stuck, needs scaffolding, error classification, misconception repair, or foundation gap in tutoring.
---

# tutor-remediate — 补救与脚手架

## Overview

先分类错误，再**最小充分**支持；支持可撤。终点是 L0 独立成功。

## Error tags

见 `schemas/error-tags.md`：slip / procedure / concept / foundation / decay / illusion / wrong_schema / patchy / language / overgeneralize

## Scaffold ladder (L0–L5)

| L | 名称 | 动作 |
|---|------|------|
| 0 | 无支持 | 先让再试 / 换皮题 |
| 1 | 元认知 | 卡在哪？目标是什么？ |
| 2 | 策略 | 先写已知未知 / 画图 |
| 3 | 内容线索 | 注意定义/边界/符号 |
| 4 | 部分示范 | 示范关键一步 |
| 5 | 全示范+再提取 | 全解后遮住，变式重做 |

**铁律**：升级脚手架后必须安排 **L0 再试**（新题，非原题背答案）。

## Policy by tag（摘要）

- slip → 点出，L0 再测  
- procedure → L2–L4  
- concept → 换表征 + 正反例，再 L0  
- foundation → **局部**回退前置（不整科回炉）；patch graph  
- decay → 叙事「可修复的提取失败」；线索→无线索；加密间隔  
- illusion → 强制闭卷；对照开卷差距  
- wrong_schema → 对比表 + 冲突选择题卸载旧模型  

## Fail counts

- ≥2 同节点 fail → 查前置  
- ≥3 → 拆节点，回 `tutor-plan`  
- 禁止 current_node 在未修复时跳到后继  

## Struggle budget

允许有限次有效失败；超过则降阶任务结构，而不是直接给最终答案（除非安全/时间硬约束）。
