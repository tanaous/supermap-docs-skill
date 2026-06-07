# serviceOffline

## URI
<[service_uri](service.htm)>/offline[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[service](service.htm)
## 介绍
serviceOffline 资源是查询单个服务是否离线。
支持的方法：
- [GET](#GET 请求)：查询单个服务是否离线。
- [HEAD](#HEAD 请求)：检查 serviceOffline 
资源是否存在，或权限是否可以访问 serviceOffline 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/Portal/img/serviceOffline.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/{id}/offline.rjson
### ](../../Portal.htm)GET 请求
查询单个服务是否离线。
#### 响应示例
对 serviceOffline 资源：http://localhost:8190/iportal/web/services/1/offline.rjson 
执行 GET 请求，返回 rjson 格式的资源表述如下：
true
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 serviceOffline 资源是否存在，或者客户端是否有权限访问 serviceOffline 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 serviceOffline 资源是否支持<format>格式的表述。
## 请参见
- [service](service.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../iPortalArchitecture.htm)