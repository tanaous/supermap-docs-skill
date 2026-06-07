# clearCache

## URI
[<map_uri>](map.htm#URI)/clearcache[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
clearCache 资源是一个算法资源，用于清除地图的缓存，通过对带参数的 URI 执行 GET 请求来实现。请求参数必须放在 URI 中。
支持的方法：
- [GET](#GET 请求)：清除地图的缓存。
- [HEAD](#HEAD 请求)：获取 clearCache 资源的元数据信息。检查 clearCache 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/clearcache.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/clearcache.rjson
### ](../../root.htm)GET 请求
清除地图的缓存。请求参数必须放在 URI 中。
#### 请求参数
对 clearCache 资源执行 GET 请求，清除地图的缓存，必须在 URI 中包含 bounds 参数，如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| bounds | Rectangle2D | 【必设参数】。要清除的缓存的地图范围。 |
#### 响应结构
对 clearCache 图层资源执行 GET 请求，返回清除缓存是否成功的表述（表述在响应消息的实体主体里），即 “true” 或 “false”。
#### 示例
对如下参数的 clearCache 资源： http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/clearcache.rjson?bounds={"rightTop":{"y":120,"x":120},"leftBottom":{"y":0,"x":0}} 执行 GET 请求，清除缓存成功时，返回 rjson 格式的操作结果表述如下：
true
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
获取 clearCache 资源的元数据信息。检查该 clearCache 资源是否存在，权限是否可以访问。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 clearCache 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)