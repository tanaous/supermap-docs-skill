# tiles

## URI
<[map_uri](map.htm#URI)>/tiles/{z}/{x}/{y}.mvt
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
对 tiles 资源执行 GET 请求，通过 URI 中的参数确定瓦片的位置，可获取指定瓦片。
支持的方法：
- [GET](#GET 请求)：获取指定瓦片。
- [HEAD](#HEAD 请求)：检查 tiles 资源是否存在，或权限是否可以访问 tiles 资源。
支持的表述格式：mvt。
## 资源层次
!\[](../../../../../assets/images/root/vectortile/map/tiles.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/map-world/restjsr/v1/vectortile/maps/World/tiles/0/0/0.mvt
### ](../../root.htm)GET 请求
获取指定MVT瓦片，在URI中确定瓦片位置。
#### 请求参数
对 tiles 资源执行 GET 请求，获取MVT瓦片，需要在 URI 中包含相关参数。参数如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| z | int | 地图缩放级别。 |
| x | long | 格网在地图中列号，从左向右递增。默认情况下，切片从地图最左上角开始，其格网列号为0。 |
| y | long | 格网在地图中行号，从上向下递增。默认情况下，切片从地图最左上角开始，其格网行号为0。 |
| returnAttributes | boolean | 是否返回属性信息。默认为 false
**注：**仅当数据源为工作空间时发布的矢量瓦片服务该参数生效。 |
#### 响应示例
执行 GET 请求：http://supermapiserver:8090/iserver/services/map-world/restjsr/v1/vectortile/maps/World/tiles/0/0/0.mvt，则将获取一个后缀为 .mvt 的瓦片数据。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tile 资源是否存在，或者客户端是否有权限访问 tile 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tile 资源是否支持<format>格式的表述。
## 请参见
- [map](map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)