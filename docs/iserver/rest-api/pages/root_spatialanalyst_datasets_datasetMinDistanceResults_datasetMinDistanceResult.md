# datasetMinDistanceResult

## URI
<[datasetMinDistanceResults_uri](datasetMinDistanceResults.htm)>/datasetMinDistanceResultID[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasetMinDistanceResults](datasetMinDistanceResults.htm)
## 介绍
最近距离计算结果资源。
支持的方法：
- [GET](#GET 请求)：获取最近距离计算结果资源。
- [HEAD](#HEAD 请求)：检查 datasetMinDistanceResult 资源是否存在，或权限是否可以访问 datasetMinDistanceResult 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
![](../../../../../../assets/images/root/spatialanalyst/datasets/datasetMinDistanceResults/sp_ds_datasetMinDistanceResult.png) 
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/mindistance/1.rjson
### ](../../../root.htm)GET 请求
获取最近距离计算结果资源。
#### 响应结构
对资源执行 GET 请求后，响应结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| datasetName | String | 结果数据集名称。与 datasourceName 一起表示结果数据集，为 null 表示分析时没有返回结果数据集。 |
| datasourceName | String | 结果数据集所属数据源名称。为 null 表示分析时没有返回结果数据集。 |
| distanceResults | [DistanceResult](../../../../../iServerJavaDoc/com/supermap/services/components/commontypes/DistanceResult.html) | 计算结果的详细信息。当返回结果数据集时，结果信息存储在结果数据集中，distanceResults 字段值为 null。 |
#### 响应示例
对[datasetMinDistanceResults](datasetMinDistanceResults.htm)的[POST 请求](datasetMinDistanceResults.htm#POST 请求)结果资源 http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/mindistance/mvrpzwln_e6b1f1cbcd5a49faa580349a741bca92执行 GET 请求，返回的 RJSON 格式的结果如下：
{
"datasetName": "minDistanceBounds",
"datasourceName": "Interpolation",
"distanceResults": null
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetMinDistanceResult 资源是否存在，或者客户端是否有权限访问 datasetMinDistanceResult 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetMinDistanceResult 资源是否支持<format>格式的表述。
## 请参见
- [datasetMinDistanceResults](datasetMinDistanceResults.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)