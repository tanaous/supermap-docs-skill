# clearCache

## URI
[<data_uri>](data.htm#URI)/clearcache[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[data](data.htm)
## 介绍
clearCache 资源是一个算法资源，用于清除三维的缓存。
支持的方法：
- [GET](#GET 请求)：清除三维的缓存。
- [HEAD](#HEAD 请求)：检查 clearCache 资源是否存在，或权限是否可以访问 clearCache 资源。
支持的表述格式：rjson、json、jsonp、html、xml。
## 资源层次
!\[](../../../../../../assets/images/root/Realspace/datas/data/clearCache.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/WorldMap/clearcache.rjson
### ](../../../root.htm)GET 请求
清除三维的缓存。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 clearCache 资源执行 GET 请求，返回清除三维缓存是否成功的表述（表述在响应消息的实体主体里），即 “true” 或 “false”。
#### 响应示例
对如下参数的 clearCache 资源 执行 GET 请求：
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/WorldMap/clearcache.rjson
清除三维缓存成功时，返回 rjson 格式的操作结果表述如下：
true
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 clearCache 资源是否存在，或者客户端是否有权限访问 clearCache 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 clearCache 资源是否支持<format>格式的表述。
## 请参见
- [data](data.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)