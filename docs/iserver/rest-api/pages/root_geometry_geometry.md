# geometry

## URI
[<root_uri>](../root.htm#URI)/{version}/geometry[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[area](area.htm)、[distance](distance.htm)、[coordtransfer](coordtransfer.htm)、[geometryBufferResults](buffer/buffer.htm)、[geometryOverlayResults](overlay/geometryOverlayResults.htm)
## 介绍
geometry 资源表示几何服务的根资源。通过对 geometry 资源执行 GET 请求可以获取 
SuperMap iServer 服务器上几何服务支持的接口。包括面积测量、距离测量和坐标转换功能。
支持的方法：
- [GET](#GET 请求)：获取子资源信息列表。包括面积测量、距离测量和坐标转换等。
- [HEAD](#HEAD 请求)：检查 geometry 资源是否存在，或权限是否可以访问 
geometry 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/root/geometry/geometry.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry.rjson
### ](../root.htm)GET 请求
获取子资源信息列表。
#### 响应结构
对 geometry 资源执行 GET 请求，在响应消息的实体主体里是一个子资源描述集，其中单个子资源描述的结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 资源的名称。 |
| path | String | 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 响应示例
对示例 geometry 资源执行 GET 请求：http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry.rjson，返回 
rjson 格式的资源描述如下：
[
{
"name": "area",
"path": "http://supermapiserver:8090/iserver/services/geometry-geometry/restjsr/v1/geometry/area",
"resourceConfigID": 
null,
"resourceType": null,
"supportedMediaTypes": 
null
},
{
"name": "distance",
"path": "http://supermapiserver:8090/iserver/services/geometry-geometry/restjsr/v1/geometry/distance",
"resourceConfigID": 
null,
"resourceType": null,
"supportedMediaTypes": 
null
},
{
"name": "coordtransfer",
"path": "http://supermapiserver:8090/iserver/services/geometry-geometry/restjsr/v1/geometry/coordtransfer",
"resourceConfigID": 
null,
"resourceType": null,
"supportedMediaTypes": 
null
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geometry 资源是否存在，或者客户端是否有权限访问 geometry 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 geometry 资源是否支持<format>格式的表述。
## 请参见
- [root](../root.htm)，[area](area.htm)、[distance](distance.htm)、[coordtransfer](coordtransfer.htm)、[geometryBufferResults](buffer/buffer.htm)、[geometryOverlayResults](overlay/geometryOverlayResults.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)