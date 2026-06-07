---
name: supermap-docs
description: Fast indexed search and reference for SuperMap GIS platform documentation — iServer REST API, iPortal, iClient3D for WebGL/WebGPU, and iClient for JavaScript. Use this skill whenever the user asks about SuperMap APIs, GIS server configuration, 3D WebGL/WebGPU development, iPortal administration, or needs to look up SuperMap service endpoints, parameters, class references, or code examples. Triggers on mentions of SuperMap, iServer, iPortal, iClient3D, S3M, WebGL GIS, GIS REST API, spatial analysis API, or related SuperMap product names.
---

# SuperMap Docs Skill

Self-contained documentation skill — 4,325 files bundled at `docs/` (161 MB) covering iServer, iPortal, iClient3D, and iClient JS.

## Quick Start

When a user asks about any SuperMap product, follow this lookup sequence:

1. **Identify the product** — iServer / iPortal / iClient3D / iClient JS
2. **Read the relevant quick-reference** from `references/` if the topic is pre-indexed
3. **Fall back to grep search** on `docs/` for detailed lookups
4. **Return the documentation excerpt** with the file path in `docs/`

## Product Map

| Product | Bundle Path | Quick Ref |
|---------|------------|-----------|
| iServer REST API | `docs/iserver/rest-api/pages/` | `references/iserver-quick-ref.md` |
| iPortal | `docs/iportal/` | `references/master-index.md` |
| iClient3D WebGL/WebGPU | `docs/iclient3d/` | `references/iclient3d-quick-ref.md` |
| iClient for JavaScript | `docs/iclient-js/` | `references/iclient-js-quick-ref.md` |
| Master Index | `docs/MASTER_INDEX.md` | — |

## Search Patterns

Use the bundled `docs/` path (relative to skill root):

```bash
# REST API endpoints
grep -r "关键词" docs/iserver/rest-api/pages/ --include="*.md" -l

# iClient3D API classes
grep -r "类名" docs/iclient3d/api/ --include="*.html" -l

# iPortal management topics
grep -r "关键词" docs/iportal/ -l

# Global search across all products
grep -r "关键词" docs/ -l
```

If absolute paths are needed, use `${CLAUDE_PLUGIN_ROOT}/docs/` prefix.

## When to Read References

- **iServer REST endpoints** → Read `references/iserver-quick-ref.md` for the 22-category endpoint map
- **iClient3D classes** → Read `references/iclient3d-quick-ref.md` for the 735-class index
- **iClient JS classes** → Read `references/iclient-js-quick-ref.md` for the 5-library class map
- **Cross-product orientation** → Read `references/master-index.md` for the full product landscape
- **Reference doesn't have the answer** → grep `docs/` directly

## Response Format

1. Start with the relevant documentation excerpt
2. Include the bundle path (e.g., `docs/iserver/rest-api/pages/root_maps_map_map.md`)
3. For API answers, include the full signature or endpoint URI
4. Provide Chinese documentation by default (the primary language of the docs)
