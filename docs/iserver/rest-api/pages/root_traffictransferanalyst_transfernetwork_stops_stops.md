# transferStops

## URI
<[transferNetwork_uri](../transferNetwork.htm)>/stops[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[transferNetwork](../transferNetwork.htm)
## 子资源
[keyword](keyword.htm)
## 介绍
交通换乘站点根目录。可以通过两种方式获取站点信息：根据站点 ID 获取特定站点信息，通过站点关键字查询站点信息。目前仅支持通过关键字获取站点信息。
支持的方法：
- [GET](#GET 请求)：返回子资源列表，主要用于根据不同方式获取站点信息。
- [HEAD](#HEAD 请求)：检查 stops 资源是否存在，或权限是否可以访问 stops 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
![](../../../../../../assets/images/root/traffictransferanalyst/img/T_stops.png) 
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/stops.rjson
### ](../../../root.htm)GET 请求
返回子资源列表。
#### 请求参数
无。
#### 响应结构
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 子资源换乘路线的名称。 |
| path | String | 子资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
| visible | boolean | 是否可见。 |
#### 响应示例
对 stops 资源，即 http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/stops.rjson，执行 GET 请求，则返回的 rjson 格式表述如下：
[{
"name": "keyword",
"path": "http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/stops/keyword",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
}]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 stops 资源是否存在，或者客户端是否有权限访问 stops 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 stops 资源是否支持<format>格式的表述。
## 请参见
- [transferNetwork](../transferNetwork.htm)、[keyword](keyword.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)