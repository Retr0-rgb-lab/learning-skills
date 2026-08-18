---
name: tutor-curriculum-research
description: Use when planning a large subject curriculum, surveying public courses like CS231n Harvard MIT Fast.ai before roadmap, or user asks to research open course materials for learning path design.
---

# tutor-curriculum-research

## When（强制）

**大的学科/主题**第一次做路径规划前（Computer Vision、OS、编译原理、一门数学分支等），必须先跑本 skill，**禁止**仅凭模型记忆直接画最终 Mermaid 主路径。

小复习、单点答疑、已有路径上的下一小节 → 不强制。

## How

1. **派 sub-agents 或并行检索** 至少 1 个「权威主锚」+ 1～2 个对照：
   - 大学公开课 schedule/syllabus（如 CS231n）
   - 知名实战课大纲（如 Fast.ai / DeepLearning.AI）
2. 抽取：受众与前置、讲次顺序、作业主题、核心 vs 选修  
3. 写入 vault：`_agent/research/YYYY-MM-DD-*.md`  
4. 结合学习者现状（小白/已有基础/时间）裁剪  
5. 学生可见：`notes/learn/路径规划-*.md`（新建，不覆盖旧总览）  
6. 再更新总览目录状态与后续 Lx 计划  

## 输出清单

- [ ] 来源 URL 表  
- [ ] 主锚课程顺序  
- [ ] 核心路径 vs 后置选修  
- [ ] 与学习者已完成节点的对齐  
- [ ] 下一步第一课文件名  

## 反模式

- 无来源的「标准路径」空谈  
- 把博士课后半选修塞进小白核心  
- 覆盖学生已有课堂文件  
