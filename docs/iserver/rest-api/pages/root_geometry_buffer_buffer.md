# geometryBufferResults

## URI
<[geometry_uri](../geometry.htm#URI)>/buffer[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST ](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[geometry](../geometry.htm#URI)
## 子资源
[geometryBufferResult](geometryBufferResult.htm)
## 介绍
对几何对象进行缓冲区分析的结果集资源。
支持的方法：
- [GET](#GET 请求)：html表述返回一个进行 POST 请求的表单，其他表述返回缓冲区分析的结果集列表。
- [POST](#POST 请求)：创建一个对象缓冲区分析结果资源，相当于进行了一次对象缓冲区分析。
- [HEAD](#HEAD 请求)：检查 geometryBufferResults 
资源是否存在，或权限是否可以访问  geometryBufferResults 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/root/geometry/buffer/geo_bufferresults.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/buffer.rjson
### ](../../root.htm)GET 请求
html表述返回一个进行 POST 请求的表单，其他表述返回缓冲区分析的结果集列表。
### POST 请求
#### 请求参数
创建一个几何对象的缓冲区分析结果资源，相当于进行了一次对象缓冲区分析。
URI 中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| asynchronousReturn | boolean | 是否采用异步操作。如果为 true，则在客户端提交请求后会立即返回新资源的 URI（即 returnContent 的设置不起作用）； 
为 false，则服务端在分析完成后根据 returnContent 的设置返回新资源的表述或者新资源的 URI。默认为 false。 |
| returnContent | boolean | 是否立即返回新创建资源的表述还是返回新资源的 URI。如果为 true，则直接返回新创建资源，即分析结果的表述。为 false，则返回的是分析结果资源的 
URI。默认为 false。 |
请求体中的参数如下： 
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sourceGeometry | [GeometryWithPrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/GeometryWithPrjCoordSys.html) | 用来进行缓存区分析的带有投影坐标系的几何要素。 
参数使用时，投影坐标参数 PrjCoordSys 需按照[PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 
epsgCode 的方式传入坐标参考系。不传递 PrjCoordSys 参数时，几何要素的坐标参考系默认为平面坐标系。 |
| analystParameter | [BufferAnalystParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/BufferAnalystParameter.html) | 缓冲区分析参数。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 查询是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 geometryBufferResults 资源：http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/buffer.rjson，执行 
POST 请求，参数如下：
{"analystParameter":{"endType":"ROUND", 
"semicircleLineSegment":4, "leftDistance":{"value":100}, 
"rightDistance":{"value":100}}, "sourceGeometry":{"type":"LINE", 
"points":[{"x":23, "y":23}, {"x":33, 
"y":37}, {"x":43, "y":23}]}}
则返回的 r json 格式的资源描述如下：
{
"postResultType": "CreateChild",
"newResourceID": "dd8d74a331474fd0957086f7d680efd5_6699f19d014a41d3ac6bb4c9463553ca",
"succeed": true,
"newResourceLocation": "http://localhost:8090/iserver/services/geometry/restjsr/v1/geometry/buffer/dd8d74a331474fd0957086f7d680efd5_6699f19d014a41d3ac6bb4c9463553ca"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geometryBufferResults 资源是否存在，或者客户端是否有权限访问 
geometryBufferResults 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 geometryBufferResults 
资源是否支持<format>格式的表述。
## 请参见
- [geometry](../geometry.htm)，[geometryBufferResult](geometryBufferResult.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)