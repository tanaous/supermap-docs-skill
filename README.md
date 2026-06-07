# SuperMap Docs Skill

> Claude Code Skill — 完整的 SuperMap GIS 平台文档知识库，面向 AI 代理快速检索。

## 概述

本 skill 为 AI 编码代理提供 SuperMap 全系产品的离线文档检索能力。包含 **4,325 个文件（161 MB）**，覆盖 4 大产品线的完整 API 参考、开发指南、管理手册和代码示例。

## 适用场景

当 AI 代理需要：
- 查询 SuperMap iServer REST API 端点、参数、响应格式
- 查找 iClient3D for WebGL/WebGPU 的 API 类、方法或示例
- 了解 iPortal 的部署配置、AI 助手集成、安全管理
- 检索 iClient for JavaScript（Leaflet/OpenLayers/MapboxGL）的类文档
- 解决 GIS 服务发布、空间分析、三维可视化等开发问题

## 快速开始

### 安装

```bash
# 克隆到 Claude Code skills 目录
git clone https://github.com/tanaous/supermap-docs-skill.git ~/.claude/skills/supermap-docs

# 或通过 plugin 安装
claude plugin install supermap-docs@custom
```

重启 Claude Code 后自动加载。触发关键词：`SuperMap`、`iServer`、`iPortal`、`iClient3D`、`GIS REST API`、`空间分析`、`S3M`。

### AI 代理使用流程

```
用户提问 → 识别产品 → 查阅 references/ 快速索引 → grep docs/ 获取详情 → 返回答案
```

## 产品覆盖

| 产品 | 内容 | 文件数 | 路径 |
|------|------|--------|------|
| **SuperMap iServer 12.1** | REST API 253 页 + 安装/管理/开发指南 458 页 | 711 | `docs/iserver/` |
| **SuperMap iPortal** | 管理/使用/AI助手/API/安装/安全 9 模块 | 112 | `docs/iportal/` |
| **SuperMap iClient3D** | EN API 735 类 + ZH 中文 970 文件 | 1,720 | `docs/iclient3d/` |
| **SuperMap iClient JS** | Leaflet/OpenLayers/MapboxGL/MapLibreGL/Classic | 1,782 | `docs/iclient-js/` |

## 结构

```
supermap-docs-skill/
├── README.md                          ← 本文件（人类阅读入口）
├── SKILL.md                           ← AI Skill 定义（AI 代理入口）
├── .claude-plugin/plugin.json         ← 插件清单
├── references/                        ← AI 快速检索索引（4 个精简参考文件）
│   ├── master-index.md                ← 全产品主索引 + grep 模板
│   ├── iserver-quick-ref.md           ← iServer 22 类 REST 端点速查
│   ├── iclient3d-quick-ref.md         ← iClient3D 核心类 + 示例分类
│   └── iclient-js-quick-ref.md        ← iClient JS 5 库类索引
└── docs/                              ← 完整文档包 (4,325 文件)
    ├── MASTER_INDEX.md
    ├── iserver/
    ├── iportal/
    ├── iclient3d/
    └── iclient-js/
```

## iServer REST API 服务分类

| # | 服务名 | 典型端点 |
|---|--------|---------|
| 1 | maps（地图） | `/maps/{name}/image`, `/maps/{name}/queryResults` |
| 2 | data（数据） | `/data/datasources`, `/data/datasets/{id}/features` |
| 3 | spatialanalyst（空间分析） | `/spatialanalyst/datasets/{id}/buffer`, `/spatialanalyst/datasets/{id}/overlay` |
| 4 | networkanalyst（网络分析） | `/networkanalyst/{name}/path`, `/networkanalyst/{name}/serviceArea` |
| 5 | realspace（三维） | `/realspace/scenes`, `/realspace/datas` |
| 6 | machinelearning（机器学习） | `/machinelearning/BinaryClassification`, `/machinelearning/ObjectDetection` |
| 7 | geometry（几何） | `/geometry/area`, `/geometry/buffer`, `/geometry/distance` |
| 8 | address（地址匹配） | `/address/geocoding`, `/address/geodecoding` |
| 9 | geoprocessing（地理处理） | `/geoprocessing/jobs`, `/geoprocessing/tool` |
| 10 | datacatalog（数据目录） | `/datacatalog/binary`, `/datacatalog/tiles` |
| 11-22 | vectortile, plot, webprinting, dataflow, dataHistory, facilityAnalyst3D, traffictransferanalyst, processingjobs, tokens ... | 详见 references/iserver-quick-ref.md |

## iClient3D 核心 API 模块

| 模块 | 关键类示例 |
|------|-----------|
| 场景/相机 | Viewer, Scene, Camera |
| 图层 (20+) | S3MTilesLayer, WMTSLayer, ImageLayer, MVTLayer |
| 空间分析 | ViewShed3D, Skyline, ShadowQuery, Sightline |
| 量算 | MeasureHandler, AreaMeasure, DistanceMeasure |
| 绘制/标绘 | DrawHandler, Plotting, GeoCircle3D |
| 查询 | SpatialQuery3D, QueryByGeometry, QueryBySQL |
| 特效 | PostProcessStage, BloomEffect, AmbientOcclusion |

## 来源

文档采集自以下官方源（2026-06-07）：
- https://help.supermap.com/
- http://support.supermap.com.cn:8090/iserver/
- https://iserver.supermap.io/

## 许可证

本文档内容版权归 [北京超图软件股份有限公司](https://www.supermap.com) 所有。本 skill 仅作离线检索用途。
