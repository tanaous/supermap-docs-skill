# SuperMap 全产品文档知识库 — AI 代理可检索主索引

> **版本：** 2.0 (完整版)
> **采集日期：** 2026-06-07
> **来源：** help.supermap.com | support.supermap.com.cn:8090 | iserver.supermap.io
> **总计：** 4,328 文件，161 MB
> **路径：** `/home/tanaous/supermap-docs/`

---

## 目录结构总览

```
/home/tanaous/supermap-docs/
├── MASTER_INDEX.md              ← 本文件（AI 代理入口）
├── README.md                     ← 旧版主索引
├── QA_REPORT.md                  ← QA 报告
│
├── iserver/                      ← SuperMap iServer 12.1 (2025)
│   ├── rest-api/pages/           ← REST API Markdown (253 页)
│   ├── install/                  ← 安装部署指南 HTML (14 文件)
│   ├── usage/                    ← 使用指南 HTML (5 文件)
│   ├── management/               ← 管理配置指南 HTML (74 文件)
│   ├── dev-guide/                ← 开发扩展指南 HTML (26 文件)
│   ├── getting-started/          ← 快速入门 HTML (6 文件)
│   └── help-system/              ← 完整帮助系统 (49 文件)
│
├── iportal/                      ← SuperMap iPortal
│   ├── INDEX.md                  ← iPortal 详细索引
│   ├── ai-assistant/             ← AI 助手 (27 文件)
│   ├── api/                      ← REST API (9 文件)
│   ├── development/              ← 开发扩展 (7 文件)
│   ├── features/                 ← 产品介绍 (4 文件)
│   ├── install/                  ← 安装部署 (12 文件)
│   ├── management/               ← 管理配置 (29 文件)
│   ├── security/                 ← 安全认证 (2 文件)
│   ├── topic/                    ← FAQ (1 文件)
│   └── usage/                    ← 使用指南 (21 文件)
│
├── iclient3d/                    ← SuperMap iClient3D for WebGL/WebGPU
│   ├── INDEX.md                  ← iClient3D 详细索引
│   ├── api/                      ← English API JSDoc (735 HTML 类)
│   ├── guides/                   ← 开发指南 (4 HTML)
│   ├── examples/                 ← 示例配置 (config.js)
│   ├── topic-docs/               ← 专题文档 (7 HTML)
│   └── zh/                       ← 中文文档/示例/JS (876 文件)
│
└── iclient-js/                   ← SuperMap iClient for JavaScript
    ├── docs/                     ← API 文档 (leaflet/openlayers/mapboxgl)
    └── examples/                 ← 示例代码 (232+199+25+25+189)
```

---

## 产品 1: SuperMap iServer 12.1 (2025) — 427 文件

GIS 服务器开发平台，提供 REST API 服务发布、管理与聚合。

### REST API 覆盖 (253 页 Markdown)

**入口：** `iserver/rest-api/pages/INDEX.md`

| 分类 | 页数 | AI 检索关键词 |
|------|------|-------------|
| Overview & Architecture | 8 | REST, resource hierarchy, 状态码, Token, 输出格式 |
| clientBuildREST | 8 | HTTP GET/POST/PUT/DELETE, 请求构建, 参数 |
| Portal - Service Management | 14 | 服务注册, 批量注册, 安全, 区域权限 |
| root - Root Resources | 2 | root endpoint, tokens |
| root/maps - Map Service | 36 | 地图, 图层, 瓦片, 查询, 图片, 跟踪层 |
| root/data - Data Service | 22 | 数据源, 数据集, 要素, 字段, 坐标转换 |
| root/spatialanalyst | 54 | 缓冲区, 叠加, 等值线, 插值, 地形, 3D, 裁剪 |
| root/networkanalyst | 18 | 路径分析, 服务区, 最近设施, 追踪, TSP |
| root/realspace - 3D | 19 | 三维场景, 图层, 数据, 符号, 缓存 |
| root/address | 3 | 地理编码, 逆地理编码 |
| root/datacatalog | 6 | 数据目录, 时空, 瓦片 |
| root/machinelearning | 25 | 分类, 回归, 聚类, 目标检测, 场景分类 |
| root/geoprocessing | 5 | GP 模型, 作业, 工具 |
| root/geometry | 7 | 面积, 距离, 坐标转换, 叠加 |
| root/vectortile | 6 | 矢量瓦片, 字体, 精灵, 样式 |
| 其他服务 | 20 | plot, webprinting, dataflow, facilityAnalyst3D, traffictransferanalyst |

### 管理/安装/开发指南覆盖 (174 文件 HTML)

| 部分 | 文件数 | AI 检索关键词 |
|------|--------|-------------|
| install/ | 14 | iServer 安装, Windows, Linux, 许可, 部署 |
| usage/ | 5 | 使用入门, GIS 服务发布 |
| management/ | 74 | 服务管理, 快速发布, GIS 服务配置, 集群 |
| dev-guide/ | 26 | 扩展开发, RESTlet, Jersey, 自定义 |
| getting-started/ | 6 | 快速入门, 开发者起步 |
| help-system/ | 49 | 附录, API 参考, OGC WMS/WFS, 安全, 缓存 |

---

## 产品 2: SuperMap iPortal — 112 文件

GIS 门户软件平台，资源整合、搜索、共享和管理。

**入口：** `iportal/INDEX.md`

| 分类 | 文件数 | AI 检索关键词 |
|------|--------|-------------|
| AI Assistant | 26 | Agentic RAG, GraphRAG, MCP 协议, 知识库, 工具管理 |
| REST API | 9 | 资源层次, Token, 状态码, 地图/数据/空间/3D 服务 |
| Management | 29 | 门户配置, 安全, 代理, 底图, 搜索, 多语言, 主题 |
| Usage | 21 | DataViz, MapStudio, MapDashboard, iEarth 3D, DataInsights |
| Install | 12 | Windows, Linux, Docker, WAR, 许可, 升级 |
| Development | 7 | Jersey 扩展, 前端定制, 登录扩展 |
| Features | 4 | 产品组件, 平台支持, 浏览器兼容 |
| Security | 2 | Token 认证, 组织架构 |
| FAQ | 1 | 常见问题 |

---

## 产品 3: SuperMap iClient3D for WebGL/WebGPU — 1,622 文件

三维 GIS 网络客户端开发平台（WebGL 和 WebGPU 共用 API）。

**入口：** `iclient3d/INDEX.md`

### English API (735 JSDoc HTML 类)

| 模块 | 关键类 | AI 检索关键词 |
|------|--------|-------------|
| Core | Viewer, Scene, Camera, ScreenSpaceEventHandler | 场景初始化, 相机控制 |
| Layers | S3MTilesLayer, WMTSLayer, ImageLayer, MVTLayer | 图层加载, S3M 瓦片 |
| Terrain | CesiumTerrainProvider, SuperMapTerrainProvider | 地形加载 |
| Imagery | SuperMapImageryProvider, TiandituImageryProvider | 影像底图 |
| Spatial Analysis | ViewShed3D, Skyline, ShadowQuery, Sightline | 通视分析, 天际线, 阴影 |
| Measurement | MeasureHandler, AreaMeasure, DistanceMeasure | 量算, 面积, 距离 |
| Entity | Entity, PointGraphics, PolygonGraphics, ModelGraphics | 实体绘制 |
| Drawing | DrawHandler, Plotting, GeoCircle3D | 标绘, 绘制工具 |
| Query | SpatialQuery3D, QueryByGeometry, QueryBySQL | 空间查询, 属性查询 |
| S3M | S3MTilesLayer, S3MInstanceCollection | S3M 三维模型 |
| Effects | PostProcessStage, BloomEffect, AmbientOcclusion | 后处理, 特效 |

### Chinese Documentation (876 文件)

| 目录 | 内容 |
|------|------|
| `zh/docs/Documentation/` | JSDoc API 页面 (中文 iframe 包装) |
| `zh/examples/webgl/` | 190+ WebGL 示例 HTML |
| `zh/web/` | 开发指南、下载、介绍 |
| `zh/js/` | JS 库文件 (include.js, etc.) |

---

## 产品 4: SuperMap iClient for JavaScript — 427 文件

Web 二维 GIS 客户端开发平台。

| 库 | API 文档 | 示例数 | 覆盖范围 |
|------|----------|--------|------|
| **Leaflet** | 317 类 | 232 例 | MapService, Layer, Query, SpatialAnalysis, Theme, DataFlow |
| **OpenLayers** | 301 类 | 199 例 | MapService, Layer, Query, SpatialAnalysis, DataFlow |
| **MapboxGL** | 145 链接 | 25 例 | MapService, Layer, Theme |
| **Classic** | — | 189 例 | 经典 SuperMap JS API 示例 |
| **MapLibreGL** | — | 25 例 | MapLibre 集成示例 |

---

## AI 代理使用指引

### 按任务类型检索

| 任务 | 优先查看 |
|------|---------|
| 开发 iServer REST 客户端 | `iserver/rest-api/pages/INDEX.md` → 按服务分类查找 |
| 部署/管理 iServer | `iserver/install/` `iserver/management/` |
| 扩展 iServer 功能 | `iserver/dev-guide/` `iserver/help-system/API/` |
| 搭建 GIS 门户 | `iportal/INDEX.md` → install + management |
| 开发门户 AI 功能 | `iportal/ai-assistant/` |
| 开发三维 Web 应用 | `iclient3d/INDEX.md` → api + guides |
| WebGPU 迁移 | `iclient3d/guides/HowToUseWebGPU.html` |
| 开发二维 Web 地图 | `iclient-js/docs/{leaflet\|openlayers}/` |
| S3M 三维模型加载 | `iclient3d/api/S3MTilesLayer.html` |
| 空间分析 REST API | `iserver/rest-api/pages/` → spatialanalyst 分类 |
| 机器学习 GIS | `iserver/rest-api/pages/` → machinelearning 分类 |
| OGC 标准服务 | `iserver/help-system/API/WMS/` `iserver/help-system/API/WFS/` |

### Grep 搜索模式

```bash
# 搜索 REST API 端点
grep -r "关键字" /home/tanaous/supermap-docs/iserver/rest-api/pages/

# 搜索 iPortal 管理功能
grep -r "关键字" /home/tanaous/supermap-docs/iportal/management/

# 搜索 iClient3D API 类
grep -r "类名" /home/tanaous/supermap-docs/iclient3d/api/

# 全局搜索
grep -r "关键字" /home/tanaous/supermap-docs/ --include="*.md" --include="*.html"
```

### 关键词索引

**认证与安全：** Token_RESTServices, token_auth, security, HTTPS, OAuth, SSRF, 登录
**数据管理：** datasources, datasets, features, fields, 数据源, 数据集
**地图服务：** MapService, TiledMapLayer, WMTS, WMS, tileImage
**空间分析：** buffer, overlay, isoline, interpolation, terrain, density, 缓冲区, 叠加
**网络分析：** path, serviceArea, closestFacility, TSP, traceDown, 路径, 服务区
**三维：** S3M, WebGL, WebGPU, realspace, 3Dtiles, 场景, 图层
**机器学习：** classification, regression, clustering, objectDetection, 分类, 回归
**AI集成：** MCP, RAG, GraphRAG, AgentX, 智能体, 知识库
**部署运维：** Docker, Linux, Windows, 集群, 许可, 升级, 监控
