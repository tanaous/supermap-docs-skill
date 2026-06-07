# plot

## URI
[<root_uri>](../root.htm#URI)/plot[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[graphicObject](graphicObject/graphicObject.htm)、[smlFileDownload](smlFileDownload/smlFileDownload.htm)、[smlInfos](smlInfos/smlInfos.htm)、[symbolLibs](symbolLibs/symbolLibs.htm)
## 介绍
plot资源是SuperMap iServer REST服务中动态标绘服务的根节点。动态标绘服务支持发布多个标号库、发布标号及管理态势图功能。
支持的方法：
- [GET](#GET 请求)：获取子资源信息列表，plot资源的子资源包括标号信息资源、态势图文件资源、标号库资源。
- [HEAD](#HEAD 请求)：检查 plot 资源是否存在，或权限是否可以访问 
plot 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/root/plot/plot.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/plot-TY/rest/plot.rjson
### ](../root.htm)GET 请求
获取子资源信息列表，plot资源的子资源包括标号信息资源、态势图文件资源、标号库资源。
#### 请求参数
无
#### 响应结构
对plot资源执行 GET 请求，在响应消息的实体主体里是一个子资源描述集，其中单个子资源描述的结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 子资源名称。 |
| path | String | 子资源的访问路径。 |
| resourceConfigID | String | 资源配置项ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String | 支持的表述的媒体类型。 |
#### 响应示例
对plot资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"name": 
"graphicObject",
"path": 
"http://localhost:8090/iserver/services/plot-TY/rest/plot/graphicObject",
"resourceConfigID": 
"graphicObject",
"resourceType": 
"StaticResource",
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
},
{
"name": 
"smlInfos",
"path": 
"http://localhost:8090/iserver/services/plot-TY/rest/plot/smlInfos",
"resourceConfigID": 
"smlInfos",
"resourceType": 
"StaticResource",
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
},
{
"name": 
"symbolLibs",
"path": 
"http://localhost:8090/iserver/services/plot-TY/rest/plot/symbolLibs",
"resourceConfigID": 
"symbolLibs",
"resourceType": 
"ArithmeticResource",
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
HEAD 请求可以用来判断 plot 资源是否存在，或者客户端是否有权限访问 plot 资源。通过对加.<format>的 
URI 执行 HEAD 请求，还可以快速判断 plot 资源是否支持<format>格式的表述。
## 请参见
- [graphicObject](graphicObject/graphicObject.htm)、[smlFileDownload](smlFileDownload/smlFileDownload.htm)、[smlInfos](smlInfos/smlInfos.htm)、[symbolLibs](symbolLibs/symbolLibs.htm)、[root](../root.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)