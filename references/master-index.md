# SuperMap 全产品文档 — AI 快速检索参考

> 本地知识库：`/home/tanaous/supermap-docs/`（4,326 文件，161 MB）

## 产品速查

| 产品 | 类型 | 核心内容 | 本地路径 |
|------|------|---------|---------|
| **iServer 12.1** | GIS 服务器 | REST API 253 页 + 安装/管理/开发指南 458 页 | `iserver/` |
| **iPortal** | GIS 门户 | 管理/使用/AI 助手/API/安装 112 页 | `iportal/` |
| **iClient3D** | 3D 客户端 | EN API 735 类 + ZH 文档/示例 970 文件 | `iclient3d/` |
| **iClient JS** | 2D 客户端 | 5 库 1,085 API 页 + 673 示例页 | `iclient-js/` |

## iServer REST API — 22 个服务分类

**本地索引：** `iserver/rest-api/pages/INDEX.md`

| # | 服务分类 | 页数 | grep 关键词 |
|---|---------|------|------------|
| 1 | Overview & Architecture | 8 | resource_hierarchy, StatusCode, Token, REST |
| 2 | clientBuildREST | 8 | ConstructRESTRequest, POST, GET, PUT, DELETE |
| 3 | Portal - Service Management | 14 | 服务注册, security, 批量注册 |
| 4 | root - Root Resources | 2 | root endpoint, tokens |
| 5 | **root/maps** - Map | 36 | map, layer, tile, image, query, trackingLayer |
| 6 | **root/data** - Data | 22 | datasource, dataset, feature, field, 坐标转换 |
| 7 | **root/spatialanalyst** | 54 | buffer, overlay, isoline, interpolation, terrain, 3D |
| 8 | **root/networkanalyst** | 18 | path, serviceArea, closestFacility, TSP, traceDown |
| 9 | **root/realspace** - 3D | 19 | scene, layer, data, symbol, cache, 三维 |
| 10 | root/address | 3 | geocoding, geodecoding, 地理编码 |
| 11 | root/datacatalog | 6 | binary, relationship, tiles, spatiotemporal |
| 12 | root/machinelearning | 25 | classification, regression, clustering, objectDetection |
| 13 | root/geoprocessing | 5 | gpmodeler, jobs, tool |
| 14 | root/geometry | 6 | area, distance, buffer, overlay, coordtransfer |
| 15 | root/vectortile | 6 | fonts, sprites, style, tiles |
| 16 | root/plot | 4 | graphicObject, smlFileDownload, symbolLibs |
| 17 | root/webprinting | 1 | v1 |
| 18 | root/dataflow | 2 | broadcast, subscribe |
| 19 | root/dataHistory | 1 | datasources |
| 20 | root/facilityAnalyst3D | 6 | sinks, sources, traceDown, traceUp |
| 21 | root/traffictransferanalyst | 4 | transferNetwork, transferPath, transferSolutions, stops |
| 22 | root/processingjobs | 2 | dataprocessingJobs, spatialanalystJobs |

### iServer 管理/安装/开发指南

| 部分 | 文件数 | 路径 |
|------|--------|------|
| 安装部署 | 14 | `iserver/install/` |
| 使用入门 | 5 | `iserver/usage/` |
| 管理配置 | 74 | `iserver/management/` |
| 开发扩展 | 26 | `iserver/dev-guide/` |
| 快速入门 | 6 | `iserver/getting-started/` |
| 帮助系统 | 49 | `iserver/help-system/` |

## iPortal — 9 大模块

**本地索引：** `iportal/INDEX.md`

| 模块 | 文件数 | grep 关键词 |
|------|--------|------------|
| AI 助手 | 26 | AgentX, MCP, RAG, GraphRAG, 知识库, 工具管理 |
| REST API | 9 | 资源层次, Token, 状态码, root |
| 管理配置 | 29 | 门户配置, 安全, 代理, 底图, 多语言, 主题 |
| 使用指南 | 21 | DataViz, MapStudio, MapDashboard, iEarth, DataInsights, BuilderX |
| 安装部署 | 12 | Windows, Linux, Docker, WAR, 许可 |
| 开发扩展 | 7 | Jersey, 前端定制, 登录扩展 |
| 产品介绍 | 4 | 组件, 平台支持, 浏览器兼容 |
| 安全 | 2 | Token 认证, 组织架构 |
| FAQ | 1 | 常见问题 |

## iClient3D for WebGL/WebGPU

**本地索引：** `iclient3d/INDEX.md`

| 资源 | 数量 | 路径 |
|------|------|------|
| EN API 类 (JSDoc) | 735 HTML | `iclient3d/api/` |
| EN 开发指南 | 4 HTML | `iclient3d/guides/` |
| EN 专题文档 | 7 HTML | `iclient3d/topic-docs/` |
| ZH 中文示例 | 211 HTML | `iclient3d/zh/examples/webgl/` |
| ZH JSDoc 类 | 717 HTML | `iclient3d/zh/docs/Documentation/` |
| ZH 开发指南 | 3 HTML | `iclient3d/zh/introduction/` |

### API 核心模块速查

| 模块 | 关键类 | 搜索词 |
|------|--------|--------|
| Core | Viewer, Scene, Camera, ScreenSpaceEventHandler | 场景初始化, 相机 |
| Layers | S3MTilesLayer, WMTSLayer, ImageLayer, MVTLayer, Tileset3D | 图层, 瓦片, S3M |
| Terrain | CesiumTerrainProvider, SuperMapTerrainProvider | 地形 |
| Imagery | SuperMapImageryProvider, TiandituImageryProvider, UrlTemplateImageryProvider | 影像, 底图 |
| Spatial Analysis | ViewShed3D, Skyline, ShadowQuery, Sightline, ViewDome | 通视, 天际线, 阴影, 视域 |
| Measurement | MeasureHandler, AreaMeasure, DistanceMeasure, HeightMeasure | 量算, 面积, 距离 |
| Query | SpatialQuery3D, QueryByGeometry, QueryBySQL | 空间查询, 属性查询 |
| Drawing | DrawHandler, Plotting, GeoCircle3D, Polyline3D | 绘制, 标绘 |
| Entity | Entity, PointGraphics, PolygonGraphics, ModelGraphics, BillboardGraphics | 实体 |
| Effects | PostProcessStage, BloomEffect, AmbientOcclusion | 后处理, 特效 |
| S3M | S3MTilesLayer, S3MInstanceCollection, S3MInstance | S3M 格式 |

## iClient for JavaScript

**本地索引：** `iclient-js/INDEX.md`

| 库 | API 页 | 示例数 | 路径 |
|------|--------|--------|------|
| Leaflet | 318 | 233 | `iclient-js/docs/leaflet/` |
| OpenLayers | 302 | 200 | `iclient-js/docs/openlayers/` |
| MapboxGL | 146 | 26 | `iclient-js/docs/mapboxgl/` |
| MapLibreGL | 282 | 25 | `iclient-js/docs/maplibregl/` |
| Classic | 37 | 189 | `iclient-js/docs/classic/` |

### 常见 API 类

MapService, QueryService, SpatialAnalystService, NetworkAnalystService, DataFlowService, ThemeService, LayerInfoService, TiledMapLayer, HeatMap, KnowledgeGraph, SecurityManager

## 常用 grep 搜索模板

```bash
# 搜 REST 端点
grep -r "关键词" /home/tanaous/supermap-docs/iserver/rest-api/pages/ -l

# 搜 iClient3D API 类
grep -r "类名" /home/tanaous/supermap-docs/iclient3d/api/ -l

# 搜 iClient JS API 类
grep -r "类名" /home/tanaous/supermap-docs/iclient-js/docs/ -l

# 搜 iPortal 管理功能
grep -r "功能名" /home/tanaous/supermap-docs/iportal/management/ -l

# 跨产品全量搜索
grep -r "关键词" /home/tanaous/supermap-docs/ -l
```
