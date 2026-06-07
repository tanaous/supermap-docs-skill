# sprites

## URI
<[map_uri](map.htm#URI)>/sprites/sprite[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
通过对 sprites 资源执行 GET 请求，可获取当前地图中的 sprite 图集信息。当表述为图片格式时，例如PNG，可获取 
sprite 图，当表述为 JSON 格式时，则返回用于定位图标位置的元数据信息。同时支持获取两倍放大的 sprite 图集信息，URI示例为< 
[map_uri](map.htm#URI)>/sprites/sprite@2x[.<format>]。
支持的方法：
- [GET](#GET 请求)：获取当前地图中的 sprite 图集信息。
- [HEAD](#HEAD 请求)：检查 sprite 资源是否存在，或权限是否可以访问 
sprite 资源。
支持的表述格式：RJSON、JSON、PNG、BMP、JPG。
## 资源层次
![](../../../../../assets/images/root/vectortile/map/sprites.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以PNG、JSON 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/test/restjsr/v1/vectortile/maps/World/sprites/sprite.png
http://supermapiserver:8090/iserver/services/test/restjsr/v1/vectortile/maps/World/sprites/sprite.json
### ](../../root.htm)GET 请求
获取当前地图中的 sprite 图集信息。
#### 响应示例
执行 GET 请求：http://supermapiserver:8090/iserver/services/map-China100/restjsr/v1/vectortile/maps/China/sprites/sprite.png，则返回的结果如下图：
![](../../../../../assets/images/root/vectortile/map/sprites_china100.png)
执行 GET 请求：http://supermapiserver:8090/iserver/services/map-China100/restjsr/v1/vectortile/maps/China/sprites/sprite.json，则返回的结果如下图：
{"marker_908173_13_ED2728":{"x":0,"y":29,"width":12,"height":12,"pixelRatio":1},"marker_908146_35_000000":{"x":0,"y":0,"width":29,"height":29,"pixelRatio":1},"marker_72_1_4B5756":{"x":39,"y":18,"width":8,"height":8,"pixelRatio":1},"marker_70_2_664D5A":{"x":29,"y":18,"width":10,"height":10,"pixelRatio":1},"marker_909072_3_3F3F3F":{"x":20,"y":29,"width":6,"height":6,"pixelRatio":1},"marker_72_1_FF0000":{"x":12,"y":29,"width":8,"height":8,"pixelRatio":1},"marker_109_0_495340":{"x":29,"y":0,"width":18,"height":18,"pixelRatio":1}}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 sprites 资源是否存在，或者客户端是否有权限访问 sprites 资源。通过对加.<format>的 
URI 执行 HEAD 请求，还可以快速判断sprites 资源是否支持<format>格式的表述。
## 请参见
- [map](map.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)