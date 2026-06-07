# serviceCheckStatus

## URI
<[service_uri](service.htm)>/checkstatus[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[HEAD](#HEAD 请求)
## 父资源
[service](service.htm)
## 介绍
serviceCheckStatus 资源是更新单个服务的审核状态。只有管理员才有权限对服务审核状态进行查询、更新。
支持的方法：
- [GET](#GET 请求)：获取单个服务的审核状态信息。
- [PUT](#PUT 请求)：更新单个服务的审核状态信息。
- [HEAD](#HEAD 请求)：检查 serviceCheckStatus 
资源是否存在，或权限是否可以访问 serviceCheckStatus 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/Portal/img/serviceCheckStatus.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/{id}/checkstatus.rjson
### ](../../Portal.htm)GET 请求
获取单个服务的审核状态信息。服务的审核状态包括：SUCCESSFUL 审核通过，FAILED 审核不通过，UNCHECKED 
未审核。
#### 响应示例
对 serviceCheckStatus 资源：http://localhost:8190/iportal/web/services/1/checkstatus.rjson 
执行 GET 请求，则返回的 rjson 格式的响应结果如下：
SUCCESSFUL
### PUT 请求
更新单个服务的审核状态信息。服务的审核状态包括：SUCCESSFUL 审核通过，FAILED 审核不通过，UNCHECKED 
未审核。
#### 请求参数
对 serviceCheckStatus 资源执行 PUT 请求，发送请求体如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| checkStatus | [CheckStatus](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/CheckStatus.html) | 审核状态。 |
| verifyReason | String | 审核意见。 |
#### 响应结构
返回的响应结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 更新单个服务的审核状态是否成功。 |
| error | Httperror | 出错信息，如果更新单个服务的审核状态成功，则没有本字段。 |
#### 响应示例
对 serviceCheckStatus 资源：http://localhost:8190/iportal/web/services/1/checkstatus.rjson 
执行 PUT 请求，发送请求体如下：
{"checkStatus":FAILED,"verifyReason":null}
则返回的 rjson 格式的响应结果如下：
{ "succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 serviceCheckStatus 资源是否存在，或者客户端是否有权限访问 
serviceCheckStatus 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 serviceCheckStatus 
资源是否支持<format>格式的表述。
## 请参见
- [service](service.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../iPortalArchitecture.htm)