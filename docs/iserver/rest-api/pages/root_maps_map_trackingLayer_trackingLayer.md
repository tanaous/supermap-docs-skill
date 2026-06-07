# trackingLayer

## URI
[<map_uri>](../map.htm#URI)/trackinglayer[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
Variable "map_link" is not defined
## 子资源
[highlightTargetSet](highlightTargetSet.htm)
## 介绍
作为 map 资源的一个子资源，通过对 trackingLayer 执行 POST 操作，可以创建高亮目标集资源（highlightTargetSet），即创建地图的跟踪层，用于管理高亮目标，不需要传递任何参数，服务器会自动给创建的 highlightTargetSet 分配一个 ID，并返回该资源的 URI。
支持的方法：
- [GET](#GET 请求)：列出所有高亮目标集。
- [POST](#POST 请求)：创建高亮目标集资源。
- [HEAD](#HEAD 请求)：获取 trackingLayer 资源的元数据信息。检查 trackingLayer 是否存在，权限是否可以访问等。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../assets/images/root/maps/map/trackingLayer/trackinglayer.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 RJSON 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer.rjson
### ](../../../root.htm)GET 请求
列出所有高亮目标集。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 trackingLayer 资源执行 GET 请求，在响应消息的实体主体里是一个高亮目标集（highlightTargetSet）的集合，其中单个高亮目标集描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 高亮目标集的 ID。 |
| path | String | 高亮目标集的 URI。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 示例
对示例 URI：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer.rjson，执行 GET 请求，已经存在高亮目标集的情况下，返回 rjson 格式的资源描述如下：
[{
"name": "pcg70k3e_17cacff656b74cca9fce82354cf4b82e",
"path": "http://supermapiserver:8090/iserver/services/map-world/rest/maps/%E4%B8%96%E7%95%8C%E5%9C%B0%E5%9B%BE/trackingLayer/pcg70k3e_17cacff656b74cca9fce82354cf4b82e",
"resourceConfigID": "highlightTargetSet",
"resourceType": "StaticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object"
]
}]
### POST 请求
为地图资源创建高亮目标集。
#### 请求参数
通过 POST 请求为地图资源创建高亮目标集，请求体中需要包含一个高亮目标集的参数，请求体中包含的是欲添加的高亮目标集合，集合中的每个元素的结构如下：
（当请求体参数为空时，则创建一个没有高亮目标的 highlightTargetSet。）
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 高亮目标的名字。 |
| geometries | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html)[] | 高亮对象数组，即高亮目标的内容。 |
| geometryIDs | int[] | 高亮几何对象的 ID 数组。 |
| style | [Style](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Style.html) | 高亮目标的风格，同一个高亮目标有一个统一的风格。 |
#### 响应结构
对 trackingLayer 资源执行 POST 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 创建资源是否成功，如果成功会有新资源的位置  newResourceLocation，如果不成功会有错误信息 errors。 |
| newResourceID | String | 创建结果资源的 ID。 |
| newResourceLocation | String | 创建的高亮目标集资源的 URI。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
#### 示例
对 trackingLayer 资源 URI：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer.rjson，执行请求体为空的 POST 请求，创建一个空的高亮目标集。返回 rjson 格式的操作结果表述如下：
{
"succeed": true,
"newResourceID": "pcg70k3e_17cacff656b74cca9fce82354cf4b82e",
"postResultType": "CreateChild",
"newResourceLocation": "http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer/pcg70k3e_17cacff656b74cca9fce82354cf4b82e.json"
} 
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 trackingLayer 资源是否存在，或者客户端是否有权限访问 trackingLayer 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 trackingLayer 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)，[highlightTargetSet](highlightTargetSet.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)