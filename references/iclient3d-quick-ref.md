# iClient3D for WebGL/WebGPU 快速参考

> 本地 EN API：`/home/tanaous/supermap-docs/iclient3d/api/`（735 JSDoc HTML 类）
> 本地 ZH 文档：`/home/tanaous/supermap-docs/iclient3d/zh/`（970 文件）
> 详细索引：`iclient3d/INDEX.md`

## WebGPU 注意事项

WebGL 和 WebGPU 共用同一套 API。切换只需 3 步：
1. `contextOptions.contextType = WebGPU`
2. 将场景初始化包裹在 `scenePromise` 中
3. 设置 `resolutionScale`

参考：`iclient3d/guides/HowToUseWebGPU.html`

## API 核心类索引

### 场景与相机
| 类 | 说明 | JSDoc 文件 |
|----|------|-----------|
| Viewer | 三维场景查看器（入口类） | `Viewer.html` |
| Scene | 三维场景管理 | `Scene.html` |
| Camera | 相机控制 | `Camera.html` |
| ScreenSpaceEventHandler | 屏幕事件处理 | `ScreenSpaceEventHandler.html` |

### 图层 (20+ 种)
| 类 | 说明 |
|----|------|
| S3MTilesLayer | S3M 三维瓦片图层（核心） |
| WMTSLayer | WMTS 标准图层 |
| ImageLayer | 单张影像图层 |
| MVTLayer | MVT 矢量瓦片图层 |
| Tileset3D | 3D Tiles 图层 |
| ElevationLayer | 高程图层 |
| PointCloudLayer | 点云图层 |

### 影像提供者 (12+ 种)
| 类 | 说明 |
|----|------|
| SuperMapImageryProvider | SuperMap iServer 影像 |
| TiandituImageryProvider | 天地图影像 |
| UrlTemplateImageryProvider | 通用 URL 模板 |
| ArcGisMapServerImageryProvider | ArcGIS 影像 |
| BingMapsImageryProvider | Bing 地图 |
| OpenStreetMapImageryProvider | OSM 影像 |

### 地形提供者 (8+ 种)
| 类 | 说明 |
|----|------|
| CesiumTerrainProvider | Cesium 标准地形 |
| SuperMapTerrainProvider | SuperMap 地形服务 |

### 空间分析
| 类 | 说明 |
|----|------|
| ViewShed3D | 通视分析 |
| Skyline | 天际线分析 |
| ShadowQuery | 阴影分析 |
| Sightline | 视线分析 |
| ViewDome | 视域分析 |
| Profile | 剖面分析 |
| BufferAnalysis | 缓冲区分析 |

### 量算工具
| 类 | 说明 |
|----|------|
| MeasureHandler | 量算处理器 |
| AreaMeasure | 面积量算 |
| DistanceMeasure | 距离量算 |
| HeightMeasure | 高度量算 |

### 绘制与编辑
| 类 | 说明 |
|----|------|
| DrawHandler | 绘制处理器 |
| Plotting | 标绘模块 |
| GeoCircle3D | 圆形标绘 |
| Polyline3D | 折线标绘 |
| Polygon3D | 多边形标绘 |

### 实体 API (Entity)
| 类 | 说明 |
|----|------|
| Entity | 实体基类 |
| PointGraphics | 点实体图形 |
| BillboardGraphics | 广告牌图形 |
| PolygonGraphics | 多边形图形 |
| ModelGraphics | 模型图形 |
| PolylineGraphics | 折线图形 |
| LabelGraphics | 标签图形 |

### 查询
| 类 | 说明 |
|----|------|
| SpatialQuery3D | 三维空间查询 |
| QueryByGeometry | 几何查询 |
| QueryBySQL | SQL 属性查询 |

### 特效
| 类 | 说明 |
|----|------|
| PostProcessStage | 后处理阶段 |
| BloomEffect | 泛光效果 |
| AmbientOcclusion | 环境光遮蔽 |
| DepthOfFieldEffect | 景深效果 |

## 中文示例分类 (211 个，30 个分类)

| 分类 | 示例主题 |
|------|---------|
| Layer | 图层叠加（S3M/MVT/地形/影像/点云） |
| Terrain | 地形加载与显示 |
| Imagery | 影像底图切换 |
| S3M | S3M 模型查询、编辑、裁剪 |
| SpatialAnalysis | 通视、可视域、阴影、剖面、天际线 |
| Camera | 相机飞行、定位、环绕 |
| Query | 空间查询、属性查询、SQL 查询 |
| Measurement | 距离、面积、高度 |
| Fly | 飞行漫游 |
| Visualization | 热力图、聚合图、迁徙图 |
| Particle | 粒子效果（火焰、烟雾、雨雪） |
| Drawing | 点线面绘制、编辑 |
| 3DPlotting | 三维标绘 |
| PostEffect | 后处理特效（泛光、景深、AO） |

## 中文开发指南

| 文件 | 内容 |
|------|------|
| `zh/introduction/intro_3DWebgl.html` | 产品介绍、模块架构、WebGL/WebGPU 环境要求 |
| `zh/introduction/3DforWebGL.html` | 开发指南：入门、图层、场景、查询、量算、分析 |
| `zh/web/index.html` | 产品登录页 |

## 搜索技巧

```bash
# 查找 API 类
grep -r "类名" /home/tanaous/supermap-docs/iclient3d/api/ -l

# 查找中文示例
ls /home/tanaous/supermap-docs/iclient3d/zh/examples/webgl/ | grep -i "关键词"

# 查找中文文档
grep -r "关键词" /home/tanaous/supermap-docs/iclient3d/zh/introduction/ -l
```
