# Wiki 页字段

```yaml
type: concept|skill|comparison|misconception|source|stub
status: draft|stub|verified
title: string
aliases: []
related_nodes: []   # Qn
related: []         # 其他 wiki basename
sources: []         # source 页或 raw 路径
claim_status: unverified|verified|dual-claim
updated: YYYY-MM-DD
```

| status | 位置 |
|--------|------|
| draft/stub | wiki/.drafts/… |
| verified | wiki/{type}/… 且可进 index |
