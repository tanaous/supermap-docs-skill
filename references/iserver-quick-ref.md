# iServer REST API 快速参考

> 本地路径：`/home/tanaous/supermap-docs/iserver/rest-api/pages/`
> 详细索引：`iserver/rest-api/pages/INDEX.md`

## REST API 基础架构

- 根端点：`http://{host}:{port}/iserver/services/`
- 认证方式：Token（`/services/security/login`）
- 输出格式：rjson, json, xml, html, jsonp
- 状态码参考：`StatusCodeDescription.md`

## 服务资源层次

```
ROOT (/iserver/services/)
├── maps/              # 地图服务
├── data/              # 数据服务
├── spatialanalyst/    # 空间分析服务
├── networkanalyst/    # 网络分析服务
├── realspace/         # 三维服务
├── address/           # 地址匹配服务
├── datacatalog/       # 数据目录服务
├── dataflow/          # 数据流服务
├── dataHistory/       # 历史数据服务
├── facilityAnalyst3D/ # 三维设施网络分析
├── geometry/          # 几何服务
├── geoprocessing/     # 地理处理服务
├── machinelearning/   # 机器学习服务
├── plot/              # 动态标绘服务
├── processingjobs/    # 处理作业服务
├── traffictransferanalyst/ # 交通换乘分析
├── vectortile/        # 矢量瓦片服务
├── webprinting/       # Web 打印服务
└── tokens/            # Token 管理
```

## 常用端点速查

### 地图服务 (root/maps)
| 端点 | HTTP 方法 | 说明 | 参考文件 |
|------|----------|------|---------|
| `{mapName}` | GET | 获取地图信息 | `root_maps_map_map.md` |
| `{mapName}/layers` | GET | 图层列表 | `root_maps_map_layers_layers.md` |
| `{mapName}/image` | GET | 地图图片 | `root_maps_map_image.md` |
| `{mapName}/tileImage` | GET | 瓦片图片 | `root_maps_map_tileImage.md` |
| `{mapName}/queryResults` | GET/POST | 地图查询 | `root_maps_map_queryResults_queryResults.md` |

### 数据服务 (root/data)
| 端点 | HTTP 方法 | 说明 | 参考文件 |
|------|----------|------|---------|
| `datasources` | GET | 数据源列表 | `root_data_datasources_datasources.md` |
| `datasources/{id}/datasets` | GET | 数据集列表 | `root_data_datasources_datasource_datasets_datasets.md` |
| `datasets/{id}/features` | GET/POST | 要素查询 | `root_data_datasources_datasource_datasets_dataset_features_features.md` |
| `datasets/{id}/fields` | GET | 字段信息 | — |

### 空间分析 (root/spatialanalyst)
| 端点 | HTTP 方法 | 说明 | 参考文件 |
|------|----------|------|---------|
| `datasets/{id}/buffer` | POST | 缓冲区分析 | `root_spatialanalyst_datasets_dataset_buffer_buffer.md` |
| `datasets/{id}/overlay` | POST | 叠加分析 | `root_spatialanalyst_datasets_dataset_overlay_overlay.md` |
| `datasets/{id}/isoline` | POST | 等值线 | — |
| `datasets/{id}/interpolation` | POST | 插值分析 | — |
| `geometry/buffer` | POST | 几何对象缓冲区 | `root_spatialanalyst_geometry_geometry.md` |

### 网络分析 (root/networkanalyst)
| 端点 | 说明 |
|------|------|
| `networkDataName/{name}/path` | 最佳路径分析 |
| `networkDataName/{name}/serviceArea` | 服务区分析 |
| `networkDataName/{name}/closestfacility` | 最近设施查找 |
| `networkDataName/{name}/TSPPath` | 旅行商分析 |
| `networkDataName/{name}/traceDown` | 下游追踪 |

### 三维服务 (root/realspace)
| 端点 | 说明 |
|------|------|
| `datas` | 三维数据列表 |
| `scenes` | 场景列表 |
| `symbols` | 符号库 |
| `allDataConfigs` | 数据配置 |

### 机器学习 (root/machinelearning)
| 端点 | 说明 |
|------|------|
| `BinaryClassification` | 二元分类 |
| `LinearRegressionFit/Transform` | 线性回归 |
| `DecisionTreeClassificationFit/Transform` | 决策树分类 |
| `forestbasedclassificationfit/transform` | 随机森林分类 |
| `ObjectDetection` | 目标检测 |
| `SceneClassification` | 场景分类 |
| `LandcoverClassification` | 土地覆盖分类 |
| `densityclusteranalyst` | 密度聚类 |

## 管理指南速查

| 主题 | 路径 |
|------|------|
| GIS 服务配置 | `iserver/management/GISService_Config/` |
| 快速发布 (47 种格式) | `iserver/management/quickPublish/` |
| 集群/监控 | `iserver/management/` |
| OGC 服务 (WMS/WFS) | `iserver/help-system/API/` |
| 安全配置 | `iserver/help-system/Subject_introduce/Security/` |
| 扩展开发 (JAX-RS) | `iserver/dev-guide/` |

## 搜索技巧

```bash
# 快速查找 REST 端点文档
grep -r "端点关键词" /home/tanaous/supermap-docs/iserver/rest-api/pages/ -l

# 查找管理配置
grep -r "配置关键词" /home/tanaous/supermap-docs/iserver/management/ -l
```
