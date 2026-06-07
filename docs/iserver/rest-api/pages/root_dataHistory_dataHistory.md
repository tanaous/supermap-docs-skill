# dataHistory

## URI
[<root_uri>](../root.htm#URI)/dataHistory[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[datasources](datasources/datasources.htm)
## 介绍
dataHistory资源在SuperMap iServer中是数据历史查询的入口，提供了数据历史追溯功能的资源信息。
支持的方法：
- [GET](#GET 请求)：获取数据的所有历史信息。
- [HEAD](#HEAD 请求)：检查datasource资源是否存在，或权限是否可以访问datasource资源。
支持的表述格式：RJSON、JSON。
## 资源层次
![](../../../../assets/images/root/dataHistory/dataHistory.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/dataHistory-world/rest/dataHistory.rjson
### ](../root.htm)GET 请求
获取数据的所有历史信息。
#### 请求参数
无
#### 响应结构
对dataHistory资源执行GET请求，返回的响应主体结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 资源的名称。 |
| path | String | 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 响应示例
对示例dataHistory资源执行GET请求，返回json格式的资源描述如下：
[
{
"name": 
"datasources",
"path": 
"http://supermapiserver:8090/iserver/services/dataHistory-world/rest/dataHistory/datasources",
"resourceConfigID": 
"datasources",
"resourceType": 
"CatalogList",
"supportedMediaTypes": 
[
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object"
]
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 dataHistory 资源是否存在，或者客户端是否有权限访问 dataHistory 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 dataHistory 资源是否支持<format>格式的表述。
## 请参见
- [root](../root.htm)、[datasources](datasources/datasources.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)