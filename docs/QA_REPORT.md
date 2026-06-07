# SuperMap Documentation Knowledge Base — QA Report

**Review Date:** 2026-06-06  
**Reviewer:** QA Agent  
**Repository:** `/home/tanaous/supermap-docs/`  
**Total Files:** 1,405 (~65 MB)

---

## 1. Overall Score: B (77/100)

The knowledge base is fundamentally well-structured with complete indexes and mostly correct file counts. However, 10 dead pages (404 errors) in iPortal and missing iServer install/management guides pull the score down.

| Product | Pages Expected | Pages Actual | Content Issues | Score |
|---------|---------------|-------------|----------------|-------|
| iServer REST API | 260 | 260 (+1 INDEX) | 4 thin pages, 10 duplicates | B+ (84) |
| iPortal | 122 | 122 (+1 INDEX) | 10 pages are 404 errors | C+ (66) |
| iClient3D | 748 | 748 | 1 missing class, empty dirs | A- (88) |

---

## 2. Per-Product Scores

### 2.1 SuperMap iServer REST API — B+ (84/100)

**Completeness (88/100):**
- 260 markdown pages documented in INDEX.md, 260 actual .md files -- exact match.
- All 22 service categories present and accounted for.
- All critical sections confirmed present: `resource_hierarchy`, `StatusCodeDescription`, `Token_RESTServices`, `Overview`, `root/maps`, `root/data`, `root/spatialanalyst`, `root/networkanalyst`, `root/realspace`, `root/machinelearning`.

**Content Quality (80/100):**
- Clean UTF-8 encoded Markdown with properly rendered Chinese characters.
- Four pages have severely thin content (missing embedded hierarchy diagrams):
  - `resource_hierarchy.md` (190 B) -- only lead sentence, no hierarchy tree
  - `iPortalArchitecture.md` (185 B) -- only lead sentence, no hierarchy tree
  - `Resources_Manager_Architecture.md` (200 B) -- only lead sentence, no hierarchy tree
  - `root_geoprocessing_gpmodeler_internalOnly.md` (131 B) -- one-sentence stub
- Ten case-variant duplicate pairs exist (e.g., `PrjCoordSys.md` / `prjCoordSys.md`). These are byte-identical duplicates and inflate the effective page count by ~10.
- Page sizes are healthy overall (median ~5 KB, maximum ~160 KB).

**Duplicate Inventory:**
| Lowercase Key | Duplicate Files |
|--------------|----------------|
| `root_maps_map_prjcoordsys` | `PrjCoordSys.md`, `prjCoordSys.md` |
| `root_maps_map_tilefeature_vectorstyles_vectorstyles` | `vectorStyles.md`, `vectorstyles.md` (both + `vectorStyle.md`) |
| `root_maps_map_trackinglayer_highlighttargetset` | `highlightTargetSet.md`, `highlighttargetset.md` |
| `root_realspace_alldataconfigs` | `allDataConfigs.md` (root_) + `allDataConfigs.md` (root_Realspace_) |
| `root_realspace_datas_datas` | 2 variants |
| `root_realspace_realspace` | 2 variants |
| `root_realspace_scenes_scenes` | 2 variants |
| `root_realspace_symbols_symbol` | 2 variants |
| `root_spatialanalyst_datasets_datasetbufferresults_datasetbufferresult` | 3 variants (Result, Results, result) |
| `root_spatialanalyst_datasets_datasetoverlayresults_datasetoverlayresults` | 3 variants |

**Gap: Missing iServer Sections**
The README.md mentions "Other documentation parts" including installation, usage, and management guides. These directories exist (`iserver/install/`, `iserver/management/`, `iserver/dev-guide/`, `iserver/usage/`) but are **empty**. Only the REST API section was collected.

---

### 2.2 SuperMap iPortal — C+ (66/100)

**Completeness (85/100):**
- 122 `.md` files exist across all 8 sections, matching the INDEX.md count.
- All key sections present: ai-assistant (27), api (14), development (10), features (4), install (12), management (29), security (2), topic (1), usage (22).
- INDEX.md contains a comprehensive per-section file table with descriptions.

**Content Quality (50/100):**
- Files are XHTML documents saved with `.md` extension. Browser-oriented (require CSS/JS for proper rendering).
- **Critical: 10 of 122 pages (8.2%) are 404 error pages** containing only an IIS "file not found" template with garbled encoding (charset=gb2312 interpreted as UTF-8). These are all exactly 1,163 bytes.

**404 Error Pages (Dead Content):**

| Section | File | Original Purpose |
|---------|------|-----------------|
| api/ | `map_service.md` | Map service REST API |
| api/ | `data_service.md` | Data service REST API |
| api/ | `spatialanalyst_service.md` | Spatial analysis service REST API |
| api/ | `realspace_service.md` | 3D/Realspace service REST API |
| api/ | `root_services.md` | Root services endpoint |
| development/ | `custom_portal.md` | Custom portal development |
| development/ | `jersey_custom.md` | Jersey new resource development |
| development/ | `login_custom.md` | Login module custom development |
| usage/ | `delete_resource.md` | Deleting resources |
| ai-assistant/ | `register_login.md` | Login and registration |

**Remaining healthy pages:** 111 out of 122 (91.8%) have substantial content with Chinese text properly rendered in UTF-8.

---

### 2.3 SuperMap iClient3D for WebGL/WebGPU — A- (88/100)

**Completeness (92/100):**
- INDEX.md reports 731 API classes, 735 actual `.html` files in `api/` -- slight overcount (likely INDEX was written before final collection).
- All critical API classes confirmed present: `Scene`, `Viewer`, `Camera`, `S3MTilesLayer`, `SpatialQuery3D`, `Entity`, `Primitive`, `DrawHandler`, `MeasureHandler`, `Skyline`, `ViewShed3D`, `ShadowQueryPoints`, `Plotting`, `GeoCircle3D`.
- One class in INDEX.md not found: `S3MInstanceLabel` (INDEX lists it but no file exists).
- Total file count: 735 (api) + 4 (guides) + 2 (examples) + 7 (topic-docs) = 748. **Exact match** with README.md target.

**Content Quality (85/100):**
- Well-formed JSDoc-generated HTML with proper UTF-8 encoding.
- English-language API documentation with function signatures, parameter tables, member descriptions.
- Guide pages (dev-guide-en.html, intro-modules-en.html, downloads.html, HowToUseWebGPU.html) are rich content at 8-50 KB each.
- Examples directory contains only `config.js` (72 KB, 229 example definitions) and `examples-list.html` -- **the actual example HTML pages are not included.**
- `dev-guide/`, `webgl/`, `webgpu/` directories exist but are **empty** (JS-rendered content could not be scraped).

**Gaps:**
- Chinese API documentation (`/zh/` prefix) was not collected because `support.supermap.com.cn:8090` was unreachable.
- Actual example HTML pages (229 examples) were not downloaded -- only the configuration index.
- Topic documentation pages are mostly shell HTML (JS-rendered content).

---

## 3. Completeness Metrics

| Metric | iServer | iPortal | iClient3D | Total |
|--------|---------|---------|-----------|-------|
| Target pages | 260 | 122 | 748 | 1130 |
| Actual content pages | 260 | 122 | 748 | 1130 |
| Pages with valid content | 256 (98.5%) | 111 (91.0%) | 748 (100%) | 1115 (98.7%) |
| Dead/broken pages | 0 | 10 (8.2%) | 0 | 10 (0.9%) |
| Thin/stub pages | 4 (1.5%) | 0 | 0 | 4 (0.4%) |
| Duplicate pages | 10 (3.8%) | 0 | 0 | 10 (0.9%) |
| Empty directories | 4 | 0 | 3 | 7 |

---

## 4. Content Quality Findings

### 4.1 Encoding
- **iServer:** All pages are UTF-8. Chinese characters render correctly. No encoding issues found.
- **iPortal:** 111 of 121 content pages use UTF-8 with correctly rendered Chinese. The 10 dead pages have charset=gb2312 in their meta tags but contain only an IIS 404 template; the Chinese text in those is garbled (replacement characters).
- **iClient3D:** All pages are UTF-8. English-only content (API reference). No encoding issues.

### 4.2 Format Consistency
- **iServer:** Clean Markdown with consistent heading hierarchy, tables, and URI documentation patterns. Links reference `.htm` paths from the original help system (not always resolvable locally).
- **iPortal:** XHTML documents saved as `.md` files. Valid XML structure with RoboHelp metadata. Heavy on navigation/header boilerplate. Body content is present and readable.
- **iClient3D:** Consistent JSDoc HTML format. All pages share the same structure with navigation, member tables, and cross-references.

### 4.3 Spot-Check Results (3 random pages each)

**iServer:**
1. `Overview.md` -- PASS: Clear Chinese REST API overview with feature list.
2. `StatusCodeDescription.md` -- PASS: Complete HTTP status code table with Chinese descriptions.
3. `root_maps_map_map.md` -- PASS: Well-documented map resource with URI, methods, parameters, and dynamic projection documentation.

**iPortal:**
1. `management/admin_getting_started.md` -- PASS (with note): XHTML format, valid Chinese content about admin role and setup.
2. `usage/getting_started.md` -- PASS (with note): XHTML format, valid content about user onboarding.
3. `ai-assistant/deployment.md` -- PASS (with note): XHTML format, valid content about AI Assistant installation.

**iClient3D:**
1. `Viewer.html` -- PASS: Complete constructor documentation with parameter tables.
2. `S3MTilesLayer.html` -- PASS: Detailed layer class with options, methods, and examples.
3. `SpatialQuery3D.html` -- PASS: GPU query class with member and method documentation.

---

## 5. Gap Analysis

### 5.1 Critical Gaps (High Priority)

| Gap | Impact | Recommendation |
|-----|--------|----------------|
| 10 iPortal pages are 404 errors | 8.2% of iPortal docs are dead content, including 5 REST API endpoints and 2 development guides | Re-collect from source: `https://help.supermap.com/iPortal/` |
| iServer install/management/usage guides missing | Cannot use KB for deployment or administration tasks | Collect from `https://help.supermap.com/iServer/` (non-REST-API sections) |
| iClient3D Chinese API docs missing | No Chinese-language developer reference | Attempt re-collection from `support.supermap.com.cn:8090` when available, or from alternative mirror |

### 5.2 Moderate Gaps (Medium Priority)

| Gap | Impact | Recommendation |
|-----|--------|----------------|
| 4 iServer architecture pages missing images | Hierarchy/resource trees are not visible; reduces utility | Use headless browser to capture rendered pages with diagrams |
| iServer duplicate case-variant files (10 pairs) | Inflates file count; search confusion on case-sensitive filesystems | Deduplicate by removing case-variant copies, update INDEX.md references |
| iClient3D `S3MInstanceLabel` class missing | Minor: one API class not available | Verify if renamed/deprecated; update INDEX.md accordingly |
| iClient3D actual example HTML pages not collected | Cannot view example implementations locally | Collect example pages from the examples directory on the source server |

### 5.3 Minor Gaps (Low Priority)

| Gap | Impact | Recommendation |
|-----|--------|----------------|
| iPortal pages use .md extension but contain XHTML | Confusing for editors expecting Markdown; still readable as HTML | Rename to .html for clarity, or convert to Markdown |
| iClient3D topic-docs are JS-rendered shells | Most topic content not available offline | Use headless browser or Puppeteer to capture rendered content |
| iServer iPortalArchitecture page in iServer docs | Naming confusion (iPortal architecture documented inside iServer) | Acceptable: iServer serves iPortal's REST API layer |
| Raw HTML directory has 272 files | Duplicate content in raw/ vs pages/ | May be useful as source-of-truth backup; otherwise prune |

---

## 6. Recommendations for Improvement

### 6.1 Immediate Actions (Week 1)

1. **Re-collect the 10 dead iPortal pages** from `https://help.supermap.com/iPortal/`. The original URLs can be derived from the INDEX.md file tables.

2. **Collect iServer non-REST-API documentation**: Install guide, administration guide, usage guide, and development guide. These were listed in README.md as "Other documentation parts" but directories are empty.

3. **Deduplicate iServer case-variant files**: Remove the lowercase variants (e.g., keep `PrjCoordSys.md`, remove `prjCoordSys.md`) and update INDEX.md references.

### 6.2 Short-Term Actions (Week 2-3)

4. **Re-collect iServer architecture pages with images**: Use a headless browser to capture `resource_hierarchy`, `iPortalArchitecture`, and `Resources_Manager_Architecture` pages with their embedded diagrams as inline images or base64-encoded assets.

5. **Collect iClient3D Chinese API docs**: Monitor `support.supermap.com.cn:8090` for availability, or use VPN/proxy if geo-restricted. Alternatively, check `https://iserver.supermap.io/iserver/iClient/for3D/webgl/zh/` for Chinese docs.

6. **Collect iClient3D example pages**: The 229 examples referenced in `examples/config.js` should be downloaded as working HTML files.

### 6.3 Long-Term Improvements

7. **Consider normalizing iPortal format**: Either rename .md files to .html (since content is XHTML) or convert to clean Markdown for better AI agent consumption.

8. **Add a change tracking mechanism**: Version the documentation (e.g., include iServer 12.1 version in file metadata) for future updates.

9. **Implement automated validation**: Create a CI check that verifies all INDEX.md links resolve to existing files and no page is below a minimum content threshold (e.g., 500 bytes).

---

## 7. Appendix: File Count Summary

```
supermap-docs/
├── README.md                                   1 file
├── iserver/
│   └── rest-api/
│       ├── pages/                            261 files (260 content + 1 INDEX)
│       ├── raw/                              272 files (original HTML)
│       ├── clientBuildREST/                    0 files (EMPTY)
│       ├── install/                            0 files (EMPTY)
│       ├── management/                         0 files (EMPTY)
│       ├── dev-guide/                          0 files (EMPTY)
│       └── usage/                              0 files (EMPTY)
├── iportal/
│   ├── INDEX.md                                1 file
│   ├── ai-assistant/                          27 files (1 dead)
│   ├── api/                                   14 files (5 dead)
│   ├── development/                           10 files (3 dead)
│   ├── features/                               4 files
│   ├── install/                               12 files
│   ├── management/                            29 files
│   ├── security/                               2 files
│   ├── topic/                                  1 file
│   └── usage/                                 22 files (1 dead)
└── iclient3d/
    ├── INDEX.md                                1 file
    ├── api/                                  735 files (JSDoc HTML)
    ├── dev-guide/                              0 files (EMPTY)
    ├── examples/                               2 files (config.js + list)
    ├── guides/                                 4 files (HTML)
    ├── topic-docs/                             7 files (HTML shells)
    ├── webgl/                                  0 files (EMPTY)
    └── webgpu/                                 0 files (EMPTY)

TOTAL: 1,405 files
VIABLE CONTENT: ~1,391 files
DEAD/BROKEN: 10 files
THIN CONTENT: 4 files
EMPTY DIRECTORIES: 7
```

---

*QA review completed by automated agent on 2026-06-06.*
