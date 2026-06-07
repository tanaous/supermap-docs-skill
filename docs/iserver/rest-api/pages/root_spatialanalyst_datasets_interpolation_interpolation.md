# datasetInterpolation

## URI
[<dataset_uri>](../dataset.htm#URI)/interpolation[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[interpolationDensity](interpolationDensity/interpolationDensity.htm)、[interpolationIDW](interpolationIDW/interpolationIDW.htm)、[interpolationRBF](interpolationRBF/interpolationRBF.htm)、[interpolationKriging](interpolationKriging/interpolationKriging.htm)
## 介绍
插值分析的根资源，是各种插值分析资源的入口。
插值分析可以将有限的采样点数据， 通过插值算法对采样点周围的数值情况进行预测，可以掌握研究区域内数据的总体分布状况，从而使采样的离散点不仅仅反映其所在位置的数值情况， 还可以反映区域的数值分布。目前 SuperMap iServer 的插值功能提供从点数据集插值得到栅格数据集的功能，支持以下常用的内插方法，包括：反距离加权插值、克吕金（Kriging）插值法、样条（径向基函数，Radial Basis Function）插值、点密度插值。
支持的方法：
- [GET](#GET 请求)：获取当前点数据集所支持的插值方法。
- [HEAD](#HEAD 请求)：检查 datasetInterpolation 资源是否存在，或权限是否可以访问 datasetInterpolation 资源。
支持的表述格式：（rjson、json、jsonp、html、xml）。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/sp_ds_interpolation.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation.rjson
### ](../../../root.htm)GET 请求
获取当前点数据集所支持的插值方法。
#### 响应结构
返回当前点数据集所支持的插值方法子资源。
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | string | 插值算法对应子资源的名称。 |
| path | string | 插值算法对应子资源的 URI 路径。 |
| resourceConfigID | string | 在资源配置文件中的 ID。 |
| resourceType | [ResourceType](../../../../../iServerJavadoc/com/supermap/services/rest/commontypes/ResourceType.html) | 资源的类型。 |
| supportedMediaTypes | string[] | 支持的表述类型。 |
| visible | boolean | 是否可见，默认为 true。 |
#### 响应示例
对 http://localhost:8090/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation.rjson 执行 GET 请求，则返回的 rjson 格式结果如下：
[
{
"name": "interpolationDensity",
"path": "http://localhost:8090/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/density",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
},
{
"name": "interpolationIDW",
"path": "http://localhost:8090/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/idw",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
},
{
"name": "interpolationKriging",
"path": "http://localhost:8090/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/kriging",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
},
{
"name": "interpolationRBF",
"path": "http://localhost:8090/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/rbf",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetInterpolation 资源是否存在，或者客户端是否有权限访问 datasetInterpolation 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetInterpolation 资源是否支持<format>格式的表述。
## 请参见
- [interpolationDensity](interpolationDensity/interpolationDensity.htm)、[interpolationIDW](interpolationIDW/interpolationIDW.htm)、[interpolationRBF](interpolationRBF/interpolationRBF.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)