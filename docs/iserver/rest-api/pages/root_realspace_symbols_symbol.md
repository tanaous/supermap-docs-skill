# symbols

## URI
[<3D_uri>](../Realspace.htm#URI)/symbols[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[3D](../Realspace.htm)
## 介绍
symbols 资源是三维场景所支持的符号及其类型的总资源。
支持的方法：
- [GET](#GET 请求)：获取符号类型的资源。
- [HEAD](#HEAD 请求)：检查 symbols 资源是否存在，或权限是否可以访问 symbols 资源。
支持的表述格式：（rjson、json、html、xml、jsonp）。
## 资源层次
!\[](../../../../../assets/images/root/Realspace/symbols/img/symbols.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/symbols
### ](../../root.htm)GET 请求
获取符号类型的资源。
#### 请求参数
symbols 资源 URI 的问号后面还有两个可选参数，returnSymbolForm_ByID 和 returnSymbolForm_ByPath，分别表示获取子资源的两种方式，两个参数是互斥的，不能同时使用。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| returnSymbolForm_ByID | boolean | 根据符号相关 ID(如二、三维点、三维线的 ID，三维线的模型 ID，三维线的基线 ID 及笔划 ID 等)获取相应的符号资源文件。 |
| returnSymbolForm_ByPath | boolean | 通过外挂资源相对于当前工作空间的路径获取外挂符号资源文件。 |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应示例
输入如下 URI 会返回 symbols 资源页面，默认使用 HTML 表述格式：
http://localhost:8090/iserver/services/3D-sample/rest/realspace/symbols
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 symbols 资源是否存在，或者客户端是否有权限访问 symbols 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 symbols 资源是否支持<format>格式的表述。
## 请参见
- [3D](../Realspace.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)