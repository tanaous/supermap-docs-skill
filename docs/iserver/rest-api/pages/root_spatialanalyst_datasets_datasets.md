# datasets

## URI
[<spatialAnalyst_uri>](../spatialanalyst.htm#URI)/datasets.[<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[spatialAnalyst](../spatialanalyst.htm)
## 子资源
[dataset](dataset.htm)
## 介绍
返回数据集列表。
支持的方法：
- [GET](#GET 请求)：返回所有的数据集标识。
- [HEAD](#HEAD 请求)：检查 datasets 资源是否存在，或权限是否可以访问 datasets 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
![](../../../../../assets/images/root/spatialanalyst/datasets/sp_datasets.png) 
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets.rjson
### ](../../root.htm)GET 请求
获取数据源下所有的数据集信息。
#### 响应示例
对 datasets 资源：http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets.rjson，执行 GET 请求，返回的是一个 dataset 描述集，其中每个{}中的是单个 dataset  的 RJSON 字符串描述，如下：
[
{
"name": "SamplesP@Interpolation",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP%40Interpolation",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Railway_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Railway_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Province_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Province_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "River_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/River_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "County_T@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/County_T%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Neighbor_R@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Neighbor_R%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "BaseMap_P@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/BaseMap_P%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "BaseMap_R@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/BaseMap_R%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "BaseMap_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/BaseMap_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "MapDivision_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/MapDivision_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Geomor_R@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Geomor_R%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Temp5000@Interpolation",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Temp5000%40Interpolation",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Road_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Road_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Neighbor_P@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Neighbor_P%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Landuse_R@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Landuse_R%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "JingjinHillshade@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/JingjinHillshade%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Pre5000@Interpolation",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Pre5000%40Interpolation",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "BoundsR@Interpolation",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/BoundsR%40Interpolation",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Coastline_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Coastline_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "JingjinTerrain@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/JingjinTerrain%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Geomor_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Geomor_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Neighbor_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Neighbor_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Bounds@Interpolation",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Bounds%40Interpolation",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "County_L@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/County_L%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "Lake_R@Jingjin",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/Lake_R%40Jingjin",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasets 资源是否存在，或者客户端是否有权限访问 datasets 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasets 资源是否支持<format>格式的表述。
## 请参见
- [spatialAnalyst](../spatialanalyst.htm)，[dataset](dataset.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)