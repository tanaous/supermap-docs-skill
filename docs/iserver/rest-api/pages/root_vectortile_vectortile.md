# vectorTile

## URI
[<root_uri>](../root.htm#URI)/{version}/vectortile[.<format>]
SuperMap iServer 启动后，矢量瓦片服务模块的默认 REST 服务访问 URI 为：http://<server>:8090/iserver/services/map-world/restjsr/v1/vectortile。
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[map](map/map.htm)
## 介绍
vectorTile 资源是包含所有MVT矢量瓦片地图资源的集合，这些地图基于MVT标准矢量瓦片进行出图，通过对接 
vectorTile，可在客户端实现地图的快速浏览、交互功能。矢量瓦片服务只支持工作空间、Shape、PostGIS、UGCV5(MVT)、MongoDB中存储的MVT瓦片。
支持的方法：
- [GET](#GET 请求)：获取MVT矢量瓦片地图列表，包括 
SuperMap iServer 服务器上MVT矢量瓦片地图的名称、URI 、资源类型等。
- [HEAD](#HEAD 请求)：获取MVT矢量瓦片地图资源集合的元数据信息。检查 
vectorTile 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP。
## 资源层次
![](../../../../assets/images/root/vectortile/vectortile.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/map-world/restjsr/v1/vectortile.rjson
### ](../root.htm)GET 请求
获取MVT矢量瓦片地图列表，包括 SuperMap iServer 服务器上MVT矢量瓦片地图的名称、URI 
、资源类型等。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 
是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 vectorTile 资源执行 GET 请求，在响应消息的实体主体里是一个地图描述集，其中单个地图描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | MVT矢量瓦片地图的名称。 |
| path | String | 地图资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | List<MediaType> | 资源支持的表述格式。 |
#### 示例
对 vectorTile 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"resourceConfigID": 
"世界地图_Day_vectortile",
"supportedMediaTypes": 
null,
"path": "http://localhost:8090/iserver/services/test/restjsr/v1/vectortile/maps/世界地图_Day",
"name": "世界地图_Day",
"resourceType": null
},
{
"resourceConfigID": 
"World_vectortile",
"supportedMediaTypes": 
null,
"path": "http://localhost:8090/iserver/services/test/restjsr/v1/vectortile/maps/World",
"name": "World",
"resourceType": null
},
{
"resourceConfigID": 
"世界地图_Gray_vectortile",
"supportedMediaTypes": 
null,
"path": "http://localhost:8090/iserver/services/test/restjsr/v1/vectortile/maps/世界地图_Gray",
"name": "世界地图_Gray",
"resourceType": null
},
{
"resourceConfigID": 
"世界地图_vectortile",
"supportedMediaTypes": 
null,
"path": "http://localhost:8090/iserver/services/test/restjsr/v1/vectortile/maps/世界地图",
"name": "世界地图",
"resourceType": null
},
{
"resourceConfigID": 
"World Map_vectortile",
"supportedMediaTypes": 
null,
"path": "http://localhost:8090/iserver/services/test/restjsr/v1/vectortile/maps/World 
Map",
"name": "World 
Map",
"resourceType": null
},
{
"resourceConfigID": 
"世界地图_Night_vectortile",
"supportedMediaTypes": 
null,
"path": "http://localhost:8090/iserver/services/test/restjsr/v1/vectortile/maps/世界地图_Night",
"name": "世界地图_Night",
"resourceType": null
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 vectorTile 资源是否存在，或者客户端是否有权限访问 vectorTile 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 vectorTile 资源是否支持<format>格式的表述。
## 请参见
- [](map/map.htm)[map](../maps/map/map.htm)，[root](../root.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 
服务资源层次结构](../../resource_hierarchy.htm)