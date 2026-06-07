# geometryBufferResult

## URI
[<geometryBufferResults_uri>](geometryBufferResults.htm)/{geometryBufferResultID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[geometryBufferResults](geometryBufferResults.htm)
## 介绍
几何要素缓冲区分析结果资源，表示一个几何对象缓冲区分析的结果。
支持的方法：
- [GET](#GET 请求)：返回几何要素缓冲区分析结果资源的信息。
- [HEAD](#HEAD 请求)：检查 geometryBufferResult 
资源是否存在，或权限是否可以访问 geometryBufferResult 资源。
支持的表述格式：rjson、json、html、xml、FlatGeobuf。
## 资源层次
![](../../../../../../assets/images/root/spatialanalyst/geometry/sp_geo_bufferresult.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/geometry/buffer/1.rjson
### ](../../../root.htm)GET 请求
返回几何要素缓冲区分析结果资源的信息。
#### 请求参数
对 geometryBufferResult 资源执行 GET 请求，需要在 URI 中包含一些参数，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| withIndex | boolean | 当使用 FlatGeobuf 表述时该参数可选。表示返回的表述为 FlatGeobuf 的结果是否包含空间索引，默认为true。 |
#### 响应结构
正常响应情况：响应码200。
对资源执行 GET 请求后，响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 缓冲区分析是否成功；成功则返回 true，否则返回 false。 |
| image | ImageResult | 空间分析结果图片。表达了 SuperMap iServer 空间分析结果产生的图片以及图片信息相关的描述。 |
| message | String | 缓冲区分析过程中产生的相关信息。 |
| resultGeometry | Geometry | 空间分析结果几何对象。 |
#### 响应示例
对资源执行 GET 请求后，返回的 rjson 结果如下：
{
"image": null,
"message": null,
"resultGeometry": {
"id": 0,
"parts": [11],
"points": [
{
"x": 
-77,
"y": 
23
},
{
"x": 
-44.08203932499369,
"y": 
-51.161984870956616
},
{
"x": 
33,
"y": 
-76.498743710662
},
{
"x": 
110.08203932499369,
"y": 
-51.16198487095663
},
{
"x": 
143,
"y": 
23
},
{
"x": 
124.3733471206735,
"y": 
81.12381937190963
},
{
"x": 
114.3733471206735,
"y": 
95.12381937190963
},
{
"x": 
32.99999999999999,
"y": 
137
},
{
"x": 
-48.3733471206735,
"y": 
95.12381937190965
},
{
"x": 
-58.3733471206735,
"y": 
81.12381937190963
},
{
"x": 
-77,
"y": 
23
}
],
"style": null,
"type": "REGION"
},
"succeed": true
}
### HEAD 请求
获取资源所支持的操作以及所支持的内容格式。
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geometryBufferResult 资源是否存在，或者客户端是否有权限访问 
geometryBufferResult 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 geometryBufferResult 
资源是否支持<format>格式的表述。
## 请参见
- [geometryBufferResults](geometryBufferResults.htm)
- [客户端构建 
REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 
服务资源层次结构](../../../../resource_hierarchy.htm)