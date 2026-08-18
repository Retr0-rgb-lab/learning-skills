# Dependency Graph — REPLACE_ME

> 状态：`locked | ready | learning | ok | mastered | deferred`

```mermaid
graph TD
  n1[node-1] --> n2[node-2]
  n2 --> n3[goal-node]
```

| id | name | status | prereq | check_method |
|----|------|--------|--------|--------------|
| n1 | | ready | | short answer |
| n2 | | locked | n1 | quiz |
| n3 | | locked | n2 | transfer |
