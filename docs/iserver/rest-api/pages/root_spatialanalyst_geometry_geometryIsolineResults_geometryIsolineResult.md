# geometryIsolineResult

## URI
[<geometryIsolineResults_uri>](geometryIsolineResults.htm#URI)/{geometryIsolineResultID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[geometryIsolineResults](geometryIsolineResults.htm)
## 介绍
获取等值线提取的结果资源。
支持的方法：
- [GET](#GET 请求)：返回部分等值线提取的结果资源。
- [HEAD](#HEAD 请求)：检查 geometryIsolineResult 
资源是否存在，或权限是否可以访问 geometryIsolineResult 资源。
支持的表述格式：rjson、json、html、xml、FlatGeobuf。
## 资源层次
![](../../../../../../assets/images/root/spatialanalyst/geometry/sp_geo_isolineresult.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/geometry/isoline/1.rjson
### ](../../../root.htm)GET 请求
返回几何要素等值线提取结果资源的信息。
#### 请求参数
对 geometryIsolineResult 资源执行 GET 请求，需要在 URI 中包含一些参数，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| withIndex | boolean | 当使用 FlatGeobuf 表述时该参数可选。表示返回的表述为 FlatGeobuf 的结果是否包含空间索引，默认为true。 |
#### 响应结构
正常响应情况：响应码200。
对资源执行 GET 请求后，响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 空间分析是否成功。 |
| message | String | 空间分析失败时返回的信息。 |
| dataset | String | 结果数据集标识 |
| recordset | Recordset | 结果记录集，用于存放空间对象信息。只有在对 geometryIsolineResults 资源执行 post 请求时，dataReturnOption 
字段的 dataReturnMode 属性设置为返回 Recordset ，此处才会显示结果数据集中的对象信息。 |
#### 响应示例
对资源执行 GET 请求后，返回的 rjson 结果如下：
{
"dataset": "geoIsoline@Interpolation",
"message": null,
"recordset": null,
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geometryIsolineResult 资源是否存在，或者客户端是否有权限访问 
geometryIsolineResult 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 geometryIsolineResult 
资源是否支持<format>格式的表述。
## 请参见
- [geometryIsolineResults](geometryIsolineResults.htm)
- [客户端构建 
REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 
服务资源层次结构](../../../../resource_hierarchy.htm)