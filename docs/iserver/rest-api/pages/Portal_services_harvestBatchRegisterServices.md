# harvestBatchRegisterServices

## URI
<[services_uri](services.htm)>/rooturls/harvest[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[services](services.htm)
## 介绍
收割批量注册的服务。
支持的方法：
- [GET](#GET 请求)：触发收割批量注册的服务。
- [HEAD](#HEAD 请求)：检查 harvestBatchRegisterServices 
资源是否存在，或权限是否可以访问 harvestBatchRegisterServices 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/Portal/img/harvestBatchRegisterServices.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/rooturls/harvest.rjson
### ](../Portal.htm)GET 请求
触发收割批量注册的服务。
#### 响应结构
对 harvestBatchRegisterServices 资源执行 GET 请求，返回的资源结构表述如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 触发收割批量注册的服务是否成功。 |
| error | Httperror | 出错信息，如果触发收割批量注册的服务成功，则没有本字段。 |
#### 响应示例
对 harvestBatchRegisterServices 资源：http://localhost:8190/iportal/web/services/rooturls/harvest.rjson 
执行 GET 请求，触发收割批量注册的服务，则返回的 rjson 格式的资源表述如下：
{"succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 harvestBatchRegisterServices 资源是否存在，或者客户端是否有权限访问 
harvestBatchRegisterServices 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 harvestBatchRegisterServices 
资源是否支持<format>格式的表述。
## 请参见
- [services](services.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../iPortalArchitecture.htm)