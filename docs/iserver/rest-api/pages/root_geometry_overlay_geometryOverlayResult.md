# geometryOverlayResult

## URI
<[geometryOverlayResults_uri](geometryOverlayResults.htm#URI)>/{geometryOverlayResultID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[geometryOverlayResults](geometryOverlayResults.htm)
## 介绍
几何要素叠加分析结果资源，表示一个几何对象叠加分析的结果。
支持的方法：
- [GET](#GET 请求)：返回几何要素叠加分析结果的资源。
- [HEAD](#HEAD 请求)：检查 geometryOverlayResult 资源是否存在，或权限是否可以访问 geometryOverlayResult 资源。
支持的表述格式：RJSON、JSON、HTML、XML、FlatGeobuf。
## 资源层次
!\[](../../../../../assets/images/root/geometry/overlay/geometryOverlayResult.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，1为 geometryOverlayResults 资源创建的结果资源的 ID。
http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/overlay/1.rjson
### ](../../root.htm)GET 请求
返回几何要素叠加分析结果资源。
#### 请求参数
对 geometryOverlayResult 资源执行 GET 请求，需要在 URI 中包含一些参数，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| withIndex | boolean | 当使用 FlatGeobuf 表述时该参数可选。表示返回的表述为 FlatGeobuf 的结果是否包含空间索引，默认为true。 |
#### 响应结构
对资源执行 GET 请求后，响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 叠加分析是否成功；成功则返回 true，否则返回 false。 |
| image | ImageResult | 空间分析结果图片。表达了 SuperMap iServer 空间分析结果产生的图片以及图片信息相关的描述。 |
| message | String | 叠加分析过程中产生的相关信息。 |
| resultGeometry | Geometry | 空间分析结果几何对象。 |
#### 响应结构
对资源执行 GET 请求后，响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 叠加分析是否成功；成功则返回 true，否则返回 false。 |
| image | ImageResult | 空间分析结果图片。表达了 SuperMap iServer 空间分析结果产生的图片以及图片信息相关的描述。 |
| message | String | 叠加分析过程中产生的相关信息。 |
| resultGeometry | Geometry | 空间分析结果几何对象。 |
#### 响应示例
对资源执行 GET 请求后，返回的 json 结果如下：
{
"image": null,
"resultGeometry": {
"center": {
"x": 32.791666666666664,
"y": 28.5
},
"parts": [4],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "REGION",
"partTopo": [1],
"points": [
{
"x": 23,
"y": 23
},
{
"x": 33,
"y": 35
},
{
"x": 43,
"y": 22
},
{
"x": 23,
"y": 23
}
]
},
"succeed": true,
"message": null
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geometryOverlayResult 资源是否存在，或者客户端是否有权限访问geometryOverlayResult 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 geometryOverlayResult 资源是否支持<format>格式的表述。
## 请参见
- [geometryOverlayResults](geometryOverlayResults.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)