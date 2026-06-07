# servicesStatus

## URI
<[services uri](services.htm)>/status[.<format>]
## 支持的方法
[PUT](#PUT 请求)
## 父资源
[services](services.htm)
## 介绍
批量更新服务状态。包括启用、停止服务。只有管理员才有权限进行服务状态的更新。
支持的方法：
- [PUT](#PUT 请求)：批量更新服务状态。包括启用、停止服务。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/Portal/img/servicesStatus.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/status.rjson
### ](../Portal.htm)PUT 请求
批量更新服务状态。包括启用、停止服务。
#### 请求参数
对 servicesStatus 资源执行 PUT 请求，批量启用或停用服务，由以下字段组成：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| serviceIds | Integer[] | 服务的唯一标识。 |
| isEnable | Boolean | 服务是否可用。 |
#### 响应结构
返回的资源表述结构如下:
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 批量更新服务状态是否成功。 |
| error | Httperror | 出错信息，如果批量更新服务状态成功，则没有本字段。 |
#### 响应示例
1.批量启用服务
对 servicesStatus 资源：http://localhost:8190/iportal/web/services/status.rjson 
执行 PUT 请求，批量启用服务，发送请求体如下：
{
"serviceIds": [
4,
5
],
"isEnable": true
}
则返回的 rjson 格式的资源表述如下：
{"succeed": true}
2.批量停用服务
对 servicesStatus 资源：http://localhost:8190/iportal/web/services/status.rjson 
执行 PUT 请求，批量停用服务，发送请求体如下：
{
"serviceIds": [
4,
5
],
"isEnable": false
}
则返回的 rjson 格式的资源表述如下：
{"succeed": true}
## 请参见
- [services](services.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../iPortalArchitecture.htm)