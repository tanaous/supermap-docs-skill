# iClient for JavaScript 快速参考

> 本地路径：`/home/tanaous/supermap-docs/iclient-js/`
> 详细索引：`iclient-js/INDEX.md`

## 库概览

| 库 | API 页 | 示例 | 定位 |
|------|--------|------|------|
| **Leaflet** | 318 | 233 | 轻量级二维地图（推荐） |
| **OpenLayers** | 302 | 200 | 功能全面的二维地图 |
| **MapboxGL** | 146 | 26 | Mapbox 风格矢量地图 |
| **MapLibreGL** | 282 | 25 | MapLibre 开源矢量地图 |
| **Classic (legacy)** | 37 | 189 | 超图经典 API |

## Leaflet 核心类速查 (318 个)

### 地图与图层
| 类 | 说明 |
|----|------|
| MapService | 地图服务（核心入口） |
| TiledMapLayer | 瓦片底图 |
| ImageLayer | 单张图片图层 |
| MVTLayer | MVT 矢量瓦片 |
| WMTSLayer | WMTS 标准瓦片 |
| LayerInfoService | 图层信息服务 |
| LayerStatus | 图层状态管理 |
| SetLayerInfoParameters | 设置图层信息参数 |
| SetLayerStatusParameters | 设置图层状态参数 |
| SetLayersInfoParameters | 批量设置图层信息 |

### 查询
| 类 | 说明 |
|----|------|
| QueryService | 查询服务（核心） |
| QueryParameters | 查询参数基类 |
| QueryByBoundsParameters | 范围查询 |
| QueryByDistanceParameters | 距离查询 |
| QueryByGeometryParameters | 几何查询 |
| QueryBySQLParameters | SQL 查询 |
| GetFeaturesByBoundsParameters | 范围获取要素 |
| GetFeaturesByBufferParameters | 缓冲区获取要素 |
| GetFeaturesByGeometryParameters | 几何获取要素 |
| GetFeaturesByIDsParameters | ID 获取要素 |

### 空间分析
| 类 | 说明 |
|----|------|
| SpatialAnalystService | 空间分析服务 |
| BufferAnalystParameters | 缓冲区分析 |
| OverlayAnalystParameters | 叠加分析 |
| InterpolationAnalystParameters | 插值分析基类 |
| InterpolationIDWAnalystParameters | IDW 插值 |
| InterpolationKrigingAnalystParameters | 克里金插值 |
| InterpolationDensityAnalystParameters | 密度插值 |
| ThiessenAnalystParameters | 泰森多边形 |
| SurfaceAnalystParameters | 表面分析 |
| TerrainSlopeCalculationParameters | 坡度计算 |
| TerrainAspectCalculationParameters | 坡向计算 |
| MathExpressionAnalysisParameters | 数学表达式分析 |

### 网络分析
| 类 | 说明 |
|----|------|
| NetworkAnalystService | 网络分析服务 |
| FindPathParameters | 最佳路径 |
| FindServiceAreasParameters | 服务区 |
| FindClosestFacilitiesParameters | 最近设施 |
| FindTSPPathsParameters | TSP 路径 |
| FindMTSPPathsParameters | MTSP 路径 |
| FindLocationParameters | 选址分析 |

### 专题图
| 类 | 说明 |
|----|------|
| ThemeService | 专题图服务 |
| ThemeParameters | 专题图参数 |
| ThemeRange | 分段专题图 |
| ThemeUnique | 单值专题图 |
| ThemeLabel | 标签专题图 |
| ThemeGraph | 统计专题图 |
| ThemeDotDensity | 点密度专题图 |
| ThemeGraduatedSymbol | 等级符号专题图 |

### 数据处理
| 类 | 说明 |
|----|------|
| DataFlowService | 数据流服务 |
| FieldService | 字段服务 |
| FieldParameters | 字段操作参数 |
| FieldStatisticsParameters | 字段统计参数 |
| SummaryAttributesJobsParameter | 属性汇总 |
| TopologyValidatorJobsParameter | 拓扑验证 |
| VectorClipJobsParameter | 矢量裁剪 |

### 几何对象
| 类 | 说明 |
|----|------|
| GeometryPoint | 点 |
| GeometryLineString | 线 |
| GeometryPolygon | 面 |
| GeometryMultiPoint | 多点 |
| GeometryMultiLineString | 多线 |
| GeometryMultiPolygon | 多面 |
| GeometryRectangle | 矩形 |
| GeometryCurve | 曲线 |
| GeometryCollection | 几何集合 |
| GeoText | 文本几何 |

### 可视化
| 类 | 说明 |
|----|------|
| HeatMap | 热力图 |
| Mapv | Mapv 可视化 |
| KnowledgeGraph | 知识图谱 |
| KnowledgeGraphService | 知识图谱服务 |
| Graph | 图表绘制 |
| GraphMap | 图表地图 |
| VectorTileSuperMapRest | 矢量瓦片 |

### 格式化
| 类 | 说明 |
|----|------|
| Format | 格式化基类 |
| GeoJSONFormat | GeoJSON 格式 |
| JSONFormat | JSON 格式 |
| WKTFormat | WKT 格式 |
| ServerFeature | 服务端要素 |
| ServerGeometry | 服务端几何 |
| ServerStyle | 服务端样式 |

### 其他
| 类 | 说明 |
|----|------|
| SecurityManager | 安全管理（Token 登录） |
| ServiceBase | 服务基类 |
| ServerInfo | 服务器信息 |
| MeasureService | 量算服务 |
| GeoCodingParameter | 地理编码参数 |
| GeoDecodingParameter | 逆地理编码参数 |
| WebPrintingJobParameters | Web 打印 |

## OpenLayers 核心类 (302 个) — 与 Leaflet 大致相同

OpenLayers 库的 API 类与 Leaflet 基本一致，路径在 `docs/openlayers/`。

## 示例速查

| 库 | 示例数 | 路径 | 示例 URL 格式 |
|------|--------|------|-------------|
| Leaflet | 233 | `examples/leaflet/` | `01_tiledMapLayer4326.html` |
| OpenLayers | 200 | `examples/openlayers/` | — |
| MapboxGL | 26 | `examples/mapboxgl/` | — |
| MapLibreGL | 25 | `examples/maplibregl/` | — |
| Classic | 189 | `examples/classic/` | — |

每个示例名可从 `examples/{lib}/config.js` 中的 `fileName` 字段提取。

## 搜索技巧

```bash
# 查找 Leaflet API 类
grep -r "类名" /home/tanaous/supermap-docs/iclient-js/docs/leaflet/ -l

# 查找 OpenLayers API 类
grep -r "类名" /home/tanaous/supermap-docs/iclient-js/docs/openlayers/ -l

# 查找示例
grep "示例名" /home/tanaous/supermap-docs/iclient-js/examples/*/config.js

# 查找其他库
grep -r "类名" /home/tanaous/supermap-docs/iclient-js/docs/mapboxgl/ -l
grep -r "类名" /home/tanaous/supermap-docs/iclient-js/docs/maplibregl/ -l
```
