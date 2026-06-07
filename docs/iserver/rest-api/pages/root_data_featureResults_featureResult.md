# featureResult

## URI
[<featureResults_uri>](featureResults.htm#URI)/{resultID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[featureResults](featureResults.htm)
## 介绍
featureResult 资源表示数据查询时的一个结果，在对 featureResults 资源执行 
POST 请求时被创建，对 featureResult 资源执行 GET 请求，可以获取数据查询结果包含的要素集合信息，要素集合信息包括要素个数和要素资源的列表。该资源的生命周期参见：[临时资源的生命周期](../../../tempResourcesLife.htm)。请注意，对 ES 数据进行的聚合查询不支持返回该结果。
支持的方法：
- [GET](#GET 请求)：获取数据查询结果里包含的要素集合信息。
- [HEAD](#HEAD 请求)：检查 featureResult 
资源是否存在，或权限是否可以访问 featureResult 资源。
支持的表述格式：RJSON、JSON、HTML、XML、GeoJSON、FlatGeobuf。
注：当查询结果要素的类型为点、线、面时，GeoJSON表述可用。
## 资源层次
![](../../../../../assets/images/root/data/featureResults/D_featureResult.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名，1为 featureResult 资源的 ID。
http://supermapiserver:8090/iserver/services/data-world/rest/data/featureResults/1.rjson
### ](../../root.htm)GET 请求
获取数据查询结果里包含的要素集合信息。
#### 请求参数
URI 
中的参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| withIndex | boolean | 当使用 FlatGeobuf 表述时该参数可选。表示返回的表述为 FlatGeobuf 的结果是否包含空间索引，默认为true。 |
#### 响应结构
对 featureResult 资源执行 GET 请求，返回的响应体结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| featureCount | int | 要素的个数。 |
| featureUriList | List<String> | 要素资源的 URI 列表。 |
#### 示例
对示例 featureResult  资源（ID 模式数据查询结果，参见 featureResults 
资源的 [POST 示例](featureResults.htm#POST 示例)）：http://supermapiserver:8090/iserver/services/data-world/rest/data/featureResults/1.rjson 
执行 GET 请求，返回 rjson 格式的资源描述如下：
{
"featureCount": 2,
"featureUriList": 
[
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Capital/features/1",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Capital/features/2"
]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 featureResult 资源是否存在，或者客户端是否有权限访问 featureResult 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 featureResult 资源是否支持<format>格式的表述。
## 请参见
- [featureResults](featureResults.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 
服务资源层次结构](../../../resource_hierarchy.htm)