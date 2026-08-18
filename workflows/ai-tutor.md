# Workflow: Probe → Plan → Teach → Test（Classroom-First）

## 学生只看

`notes/classroom/<主文件>.md`

## Agent 只写（另册）

`_agent/*`

## 流程

```
新建主题
→ 复制极简 classroom 壳（怎么学 + 薄背景 + 空探测区）
→ Phase1 Probe：3～5 梯度题写在 classroom，答也在同文件
→ 写「能力边界」表
→ Phase2 Plan：Mermaid + 节点表写入 classroom
→ 循环:
     Phase3 当前节点极短讲
     Phase4 一校验题
     读作答 → pass 推进 / fail 修正
→ 节点全过 → 收束 quest / 下一 quest
```

## 背景阶段

- 介绍从简  
- **少题**；背景不是主战场  
- 背景一够就 Probe 收束 → 出图  

## 每轮对用户聊天

只说：打开哪个文件、答哪一题。  
讲解与题干以 classroom 文件为准。

## 与旧版差异

| 旧 | 新 |
|----|-----|
| 多课堂文件 01/02/03 | 默认单主文件 |
| 状态与教材混在根目录 | `_agent` vs `classroom` |
| 背景连环问 | 背景薄、探测 3～5 题 |
| 图可有可无 | 探测后必 Mermaid |

## 自认小白快捷路径

```
用户声明 domain 小白
→ 薄背景（可一段）
→ 总体 Mermaid 路线 + 分层讲解（classroom 单文件）
→ 用户点名某层后再 Teach+Test
→ 禁止在总览前题海
```
