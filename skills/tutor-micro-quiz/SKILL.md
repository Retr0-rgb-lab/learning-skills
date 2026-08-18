---
name: tutor-micro-quiz
description: Use when checking mastery after teaching, micro-quiz, retrieval practice, user says 懂了/会了/继续, grading a tutoring attempt, or exit-check for a node.
---

# tutor-micro-quiz — 微测验与评分

## Overview

提取即学习。掌握只认证据。题与判定完整写入 session 日志。

## When

讲解后；「懂了/ok/继续」；exit_check；B 唤醒；C 题组。

## Design

优先短答/步骤/Feynman/变式/改错。  
对用户只给题干；rubric 不预泄。  
能出 **quest 情境题** 优于裸定义背诵。

## Grade

pass / partial / fail → 更新 model；fail → errors.md + remediate。  
禁止因流畅复述而 pass。  
`ok` 当堂 L0；`mastered` 需间隔后再提。

## Feedback

短判定 →（必要时）思路 → 一点拨 → 可选一句规则复盘。

## Log

Me 原话 + result + tags → `tutor-obsidian-log` Turn。
