# servicesCheckStatus

## URI
<[services_uri](services.htm)>/checkstatus[.<format>]
## 支持的方法
[PUT](#PUT 请求)
## 父资源
[services](services.htm)
## 介绍
servicesCheckStatus 资源是批量更新服务的审核状态。只有管理员才有权限进行服务审核状态的更新。
支持的方法：
- [PUT](#PUT 请求)：批量更新服务的审核状态。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/Portal/img/servicesCheckStatus.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/checkstatus.rjson
### ](../Portal.htm)PUT 请求
批量更新服务的审核状态。服务的审核状态包括：SUCCESSFUL 审核通过，FAILED 审核不通过，UNCHECKED 
未审核。
#### 请求参数
对 servicesCheckStatus 资源执行 PUT 请求，传递请求参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| serviceIds | Integer[] | 需要更新状态的服务的 id。 |
| checkInfo | [CheckInfo](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/CheckInfo.html) | 服务的审核信息。 |
#### 响应结构
返回的响应结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 更新服务的审核状态是否成功。 |
| error | Httperror | 出错信息，如果更新服务的审核状态成功，则没有本字段。 |
#### 响应示例
对 servicesCheckStatus 资源：http://localhost:8190/iportal/web/services/checkstatus.rjson 
执行 PUT 请求，更新服务的审核状态信息，发送请求体如下：
{
"serviceIds": [
3,
4
],
"checkInfo": {
"checkStatus": 
"SUCCESSFUL",
"verifyReason": 
""
}
}
则返回的 rjson 格式的响应结果如下：
{ "succeed": true}
## 请参见
- [services](services.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../iPortalArchitecture.htm)