# maps

## URI
[<root_uri>](../root.htm#URI)/maps[.<format>]
SuperMap iServer 启动后，地图服务模块的默认 REST 服务访问 URI 为：http://<server>:8090/iserver/services/map-world/rest/maps。
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[map](map/map.htm)
## 介绍
maps 资源是包含所有地图资源的集合，通过它能够得到 SuperMap iServer 服务器提供的地图信息。
关于本资源的使用方法，可参考开发指南：[获取地图列表](../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Map_Opr/MapList.htm)。
支持的方法：
- [GET](#GET 请求)：获取地图列表，包括 SuperMap iServer 服务器上地图的名称、URI 、资源类型等。
- [HEAD](#HEAD 请求)：获取地图资源集合的元数据信息。检查 maps 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../assets/images/root/maps/maps.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/map-world/rest/maps.rjson
### ](../root.htm)GET 请求
获取地图列表，包括 SuperMap iServer 服务器上地图的名称、URI 、资源类型等。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 maps 资源执行 GET 请求，在响应消息的实体主体里是一个地图描述集，其中单个地图描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 地图的名称。 |
| path | String | 地图资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 示例
对 maps 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"name": "World",
"path": "http://localhost:8090/iserver/services/map-world/rest/maps/World",
"resourceConfigID": "map",
"resourceType": "StaticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"application/ajax",
"application/kml",
"application/ifx",
"application/flex",
"application/isl",
"application/silverlight",
"application/ijs",
"application/javascript",
"application/html5",
"application/smc",
"application/supermapcloud",
"application/tdt",
"application/tianditu",
"application/ilt",
"application/leaflet",
"application/flash3d"
]
},
{
"name": "世界地图_Day",
"path": "http://localhost:8090/iserver/services/map-world/rest/maps/%E4%B8%96%E7%95%8C%E5%9C%B0%E5%9B%BE_Day",
"resourceConfigID": "map",
"resourceType": "StaticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"application/ajax",
"application/kml",
"application/ifx",
"application/flex",
"application/isl",
"application/silverlight",
"application/ijs",
"application/javascript",
"application/html5",
"application/smc",
"application/supermapcloud",
"application/tdt",
"application/tianditu",
"application/ilt",
"application/leaflet",
"application/flash3d"
]
},
{
"name": "世界地图",
"path": "http://localhost:8090/iserver/services/map-world/rest/maps/%E4%B8%96%E7%95%8C%E5%9C%B0%E5%9B%BE",
"resourceConfigID": "map",
"resourceType": "StaticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"application/ajax",
"application/kml",
"application/ifx",
"application/flex",
"application/isl",
"application/silverlight",
"application/ijs",
"application/javascript",
"application/html5",
"application/smc",
"application/supermapcloud",
"application/tdt",
"application/tianditu",
"application/ilt",
"application/leaflet",
"application/flash3d"
]
},
{
"name": "世界地图_Night",
"path": "http://localhost:8090/iserver/services/map-world/rest/maps/%E4%B8%96%E7%95%8C%E5%9C%B0%E5%9B%BE_Night",
"resourceConfigID": "map",
"resourceType": "StaticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"application/ajax",
"application/kml",
"application/ifx",
"application/flex",
"application/isl",
"application/silverlight",
"application/ijs",
"application/javascript",
"application/html5",
"application/smc",
"application/supermapcloud",
"application/tdt",
"application/tianditu",
"application/ilt",
"application/leaflet",
"application/flash3d"
]
},
{
"name": "World Map",
"path": "http://localhost:8090/iserver/services/map-world/rest/maps/World+Map",
"resourceConfigID": "map",
"resourceType": "StaticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"application/ajax",
"application/kml",
"application/ifx",
"application/flex",
"application/isl",
"application/silverlight",
"application/ijs",
"application/javascript",
"application/html5",
"application/smc",
"application/supermapcloud",
"application/tdt",
"application/tianditu",
"application/ilt",
"application/leaflet",
"application/flash3d"
]
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 maps 资源是否存在，或者客户端是否有权限访问 maps 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 maps 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)，[root](../root.htm)
- [客户端构建 REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../resource_hierarchy.htm)