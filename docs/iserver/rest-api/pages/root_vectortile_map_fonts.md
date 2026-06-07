# fonts

## URI
<[map_uri](map.htm#URI)>/fonts/{fontstack}/{range}.pbf
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
通过对fonts资源执行GET请求，可获取Mapbox标准的字体源数据。详细介绍可参见Mapbox官网（[http://www.mapbox.com/mapbox-gl-js/style-spec](http://www.mapbox.com/mapbox-gl-js/style-spec)）。
支持的方法：
- [GET](#GET 请求)：获取字体源数据。
- [HEAD](#HEAD 请求)：检查 fonts 资源是否存在，或权限是否可以访问 
fonts 资源。
支持的表述格式：pbf。
## 资源层次
![](../../../../../assets/images/root/vectortile/map/fonts.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/map-world/restjsr/v1/vectortile/maps/World/fonts/{fontstack}/{range}.pbf
### ](../../root.htm)GET 请求
获取字体源数据。
#### 响应示例
对 http://supermapiserver:8090/iserver/services/map-world/restjsr/v1/vectortile/maps/世界地图_Day/fonts/Microsoft 
YaHei/0-255.pbf 执行 GET 请求后，将返回 pbf 格式的文件。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 fonts 资源是否存在，或者客户端是否有权限访问 fonts 资源。通过对加.<format>的 
URI 执行 HEAD 请求，还可以快速判断 fonts 资源是否支持<format>格式的表述。
## 请参见
- [map](map.htm)，
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)