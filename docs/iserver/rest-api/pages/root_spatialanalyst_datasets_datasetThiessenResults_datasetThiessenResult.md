# datasetThiessenPolygonResult

## URI
<[datasetThiessenResults_uri](datasetThiessenResults.htm#URI)>/thiessenpolygon/{datasetThiessenPolygonResultID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasetThiessenPolygonResults](datasetThiessenResults.htm)
## 介绍
生成泰森多边形的结果资源。
支持的方法：
- [GET](#GET 请求)：返回生成泰森多边形结果资源的描述信息。
- [HEAD](#HEAD 请求)：检查 datasetThiessenPolygonResult 资源是否存在，或权限是否可以访问 datasetThiessenPolygonResult 资源。
支持的表述格式：rjson、json、html、xml、FlatGeobuf。
## 资源层次
该资源的资源层次图。
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/datasetThiessenResults/datasetThiessenResult.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/thiessenpolygon/wbdsm520_f57129dafda2435980eff26bc0c4cabc.rjson
### ](../../../root.htm)GET 请求
返回生成泰森多边形结果资源的描述信息。
#### 请求参数
对 datasetThiessenPolygonResult 资源执行 GET 请求，需要在 URI 中包含一些参数，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| withIndex | boolean | 当使用 FlatGeobuf 表述时该参数可选。表示返回的表述为 FlatGeobuf 的结果是否包含空间索引，默认为true。 |
#### 响应结构
描述
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| datasetName | String | 生成的泰森多边形数据集名称。 |
| datasourceName | String | 数据源名称。 |
| regions | [Point2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html)[] | 分析得到的多边形面数组。 |
#### 响应示例
对如下结果资源执行 GET 请求：
http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/thiessenpolygon/wbdsm520_f57129dafda2435980eff26bc0c4cabc.rjson
则返回的响应结果如下：
{
"datasetName": "testThiessen2",
"datasourceName": "Interpolation",
"regions": []
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetThiessenPolygonResult 资源是否存在，或者客户端是否有权限访问 datasetThiessenPolygonResult 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetThiessenPolygonResult 资源是否支持<format>格式的表述。
## 请参见
- [datasetThiessenPolygonResults](datasetThiessenResults.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)