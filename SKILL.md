---
name: supermap-docs
description: Fast indexed search and reference for SuperMap GIS platform documentation — iServer REST API, iPortal, iClient3D for WebGL/WebGPU, and iClient for JavaScript. Use this skill whenever the user asks about SuperMap APIs, GIS server configuration, 3D WebGL/WebGPU development, iPortal administration, or needs to look up SuperMap service endpoints, parameters, class references, or code examples. Triggers on mentions of SuperMap, iServer, iPortal, iClient3D, S3M, WebGL GIS, GIS REST API, spatial analysis API, or related SuperMap product names.
---

# SuperMap Docs Skill

Provides fast indexed access to the complete SuperMap product documentation (4,326 files, 161 MB locally).

## Quick Start

The documentation knowledge base is at `/home/tanaous/supermap-docs/`. When a user asks about any SuperMap product, follow this lookup sequence:

1. **Identify the product** from the user's question (iServer / iPortal / iClient3D / iClient JS)
2. **Read the relevant quick-reference** from `references/` if the user's question matches a pre-indexed topic
3. **Fall back to direct search** — use `grep -r` on the local knowledge base for detailed lookups
4. **Return the most relevant documentation excerpt** with file path reference

## Product Map

| Product | Local Path | Quick Ref |
|---------|-----------|-----------|
| iServer REST API | `supermap-docs/iserver/rest-api/pages/` | `references/iserver-quick-ref.md` |
| iPortal | `supermap-docs/iportal/` | `references/master-index.md` |
| iClient3D WebGL/WebGPU | `supermap-docs/iclient3d/` | `references/iclient3d-quick-ref.md` |
| iClient for JavaScript | `supermap-docs/iclient-js/` | `references/iclient-js-quick-ref.md` |

## Search Patterns

### Find REST API endpoints
```bash
grep -r "关键词" /home/tanaous/supermap-docs/iserver/rest-api/pages/ --include="*.md" -l
```

### Find API classes or methods
```bash
grep -r "类名\|方法名" /home/tanaous/supermap-docs/iclient3d/api/ --include="*.html" -l
```

### Find iPortal management topics
```bash
grep -r "关键词" /home/tanaous/supermap-docs/iportal/ --include="*.md" -l
```

### Global search across all products
```bash
grep -r "关键词" /home/tanaous/supermap-docs/ -l
```

## When to Read References

- **User asks about iServer REST endpoints** → Read `references/iserver-quick-ref.md` first for the endpoint map
- **User asks about iClient3D classes** → Read `references/iclient3d-quick-ref.md` for class index
- **User asks about iClient JS classes** → Read `references/iclient-js-quick-ref.md` for library/class map
- **User needs cross-product orientation** → Read `references/master-index.md` for the full product landscape
- **Reference doesn't have the answer** → Fall back to `grep -r` search on the local knowledge base

## Response Format

When providing documentation answers:
1. Start with the relevant excerpt from the documentation
2. Include the source file path (e.g., `iserver/rest-api/pages/root_maps_map_map.md`)
3. If providing code, include the full API signature or endpoint URI

For user-facing answers, always provide the Chinese documentation when available (the primary language of the docs).
