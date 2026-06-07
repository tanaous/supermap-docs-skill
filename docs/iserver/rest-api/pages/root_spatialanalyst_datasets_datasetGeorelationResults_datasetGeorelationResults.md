# datasetGeorelationResults

## URI
[<dataset_uri>](../dataset.htm#URI)/georelation[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[datasetGeorelationResult](datasetGeorelationResult.htm)
## 介绍
空间关系分析结果集资源，对该资源发送 POST 请求，则创建一个空间关系分析结果资源。
支持的方法：
- [GET](#GET 请求)：获取一个 POST 请求的表单。
- [POST](#POST 请求)：创建一个空间关系分析结果资源，相当于进行了一次空间关系分析。
- [HEAD](#HEAD 请求)：检查 datasetGeorelationResults 资源是否存在，或权限是否可以访问 datasetGeorelationResults 资源。
支持的表述格式：（rjson、json、html、xml）。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/datasetGeorelationResults/img/datasetGeorelationResults.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/BusLine@Changchun/georelation.rjson
### ](../../../root.htm)GET 请求
获取一个 POST 请求的表单。
### POST 请求
创建一个空间关系分析结果资源，相当于进行了一次空间关系分析。
#### 请求参数
请求体中需传递如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sourceFilter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 空间关系分析中的源数据集查询参数。仅 ids、attributeFilter 和 fields 字段有效。 |
| referenceFilter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 空间关系分析中的参考数据集查询参数。仅 name, ids, attributeFilter 和 fields 字段有效。 |
| spatialRelationType | [SpatialRelationType](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/SpatialRelationType.html) | 指定的空间关系类型。 |
| isBorderInside | boolean | 边界处理方式，即位于面边线上的点是否被面包含。 此参数仅用于空间关系为包含或被包含的情况。 |
| returnFeature | boolean | 是否返回 Feature 信息。 |
| returnGeoRelatedOnly | boolean | 仅返回满足指定空间关系的空间对象，默认为 true。 |
| startRecord | int | 分析结果起始记录位置，默认为0。 |
| expectCount | int | 空间关系分析期望返回结果记录数，默认为500条，如果实际不足500条结果则返回所有分析结果。 |
#### 响应结构
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 分析是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 http://localhost:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/BusLine@Changchun/georelation.rjson 执行 POST 请求，请求体如下：
{
"isBorderInside": true,
"sourceFilter": {
"attributeFilter": "SMID%26gt;0"
},
"referenceFilter": {
"name": "Railway@Changchun",
"attributeFilter": "SMID%26gt;0"
},
"startRecord": 0,
"expectCount": 20,
"spatialRelationType": "INTERSECT",
"returnFeature": false,
"returnGeoRelatedOnly": true
}
则返回的 rjson 格式的请求结果如下：
{
"succeed": true,
"newResourceID": "xqzxg79p_ce128f528e0a4a0fbd2afba79780ee04",
"postResultType": "CreateChild",
"newResourceLocation": "http://localhost:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/BusLine@Changchun/georelation/xqzxg79p_ce128f528e0a4a0fbd2afba79780ee04"
}
对 http://localhost:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/BusLine@Changchun/georelation/xqzxg79p_ce128f528e0a4a0fbd2afba79780ee04.rjson，执行 GET 请求，即可获取分析结果的具体信息。请参见[datasetGeorelationResult](datasetGeorelationResult.htm)。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetGeorelationResults 资源是否存在，或者客户端是否有权限访问 datasetGeorelationResults 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetGeorelationResults 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)，[datasetGeorelationResult](datasetGeorelationResult.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)