# datasetThiessenPolygonResults

## URI
<[dataset_uri](../dataset.htm#URI)>/thiessenpolygon[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[datasetThiessenPolygonResult](datasetThiessenResult.htm)
## 介绍
数据集邻近分析结果集资源，可以基于点数据集生成泰森多边形。
支持的方法：
- [GET](#GET 请求)：html表述返回一个 POST 请求的表单，其他表述返回数据集邻近分析结果集列表。
- [POST](#POST 请求)：返回生成的泰森多边形结果资源，即进行了一次生成泰森多边形操作。
- [HEAD](#HEAD 请求)：检查 datasetThiessenPolygonResults 资源是否存在，或权限是否可以访问 datasetThiessenPolygonResults 资源。
支持的表述格式：（rjson、json、html、xml）。
## 资源层次
![](../../../../../../assets/images/root/spatialanalyst/datasets/datasetThiessenResults/datasetThiessenResults.png) 
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/thiessenpolygon.rjson
### ](../../../root.htm)GET 请求
html表述返回一个 POST 请求的表单，其他表述数据集邻近分析结果集列表。
### POST 请求
进行一次生成泰森多边形操作。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| clipRegion | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 结果数据裁剪区域，可以为 null，表示不对结果进行裁剪。 |
| createResultDataset | boolean | 是否返回结果数据集，默认返回。 |
| resultDatasetName | String | 指定结果数据集名称。 |
| resultDatasourceName | String | 指定结果数据集所在数据源，默认为当前数据源。 |
| filterQueryParameter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 对待分析数据集中的点进行过滤，不设置时默认为 null，即对数据集中的所有点进行分析。 |
| returnResultRegion | boolean | 是否返回分析得到的多边形面数组，默认不返回。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 分析是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 datasetThiessenResults 资源 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/thiessenpolygon.rjson，执行 POST 请求，发送 rjson 格式请求体如下：
{
"usePoints": false,
"createResultDataset": true,
"resultDatasetName": "testThiessen",
"resultDatasourceName": "Interpolation",
"returnResultRegion": false
}
则返回的响应结果如下：
{
"succeed": true,
"newResourceID": "wbdsm520_f57129dafda2435980eff26bc0c4cabc",
"postResultType": "CreateChild",
"newResourceLocation": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/thiessenpolygon/wbdsm520_f57129dafda2435980eff26bc0c4cabc"
}
对资源：http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/thiessenpolygon/wbdsm520_f57129dafda2435980eff26bc0c4cabc，执行 GET 请求，即可获取分析结果的具体信息。请参见[datasetThiessenPolygonResult](datasetThiessenResult.htm)。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetThiessenPolygonResults 资源是否存在，或者客户端是否有权限访问 datasetThiessenPolygonResults 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetThiessenPolygonResults 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)、[datasetThiessenPolygonResult](datasetThiessenResult.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)