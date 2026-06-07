# servicesShareSetting

## URI
<[services_uri](services.htm)>/sharesetting[.<format>]
## 支持的方法
[PUT](#PUT 请求)
## 父资源
[services](services.htm)
## 介绍
servicesShareSetting 是服务的共享设置资源。通过发送 PUT 请求，可以批量更新服务的权限信息。服务注册者和管理员可以更新服务的权限信息。
支持的方法：
- [PUT](#PUT 请求)：批量修改服务的共享设置。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/Portal/img/servicesShareSettings.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/sharesetting.rjson
### ](../Portal.htm)PUT 请求
批量修改服务的共享设置。
#### 请求参数
发送请求时，需要在请求体中传递如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| ids | List<Integer> | 服务的 id 数组。 |
| entities | List<[IportalAuthorizeEntity](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntity.html)> | 共享设置。权限类型包括：SEARCH（可检索），READ（可查看）。 |
#### 响应结构
返回的资源表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 批量修改服务的共享设置是否成功。 |
| error | Httperror | 出错信息，如果修改服务的共享设置成功，则没有本字段。 |
#### 响应示例
servicesShareSetting 资源对应的批量更新服务的共享方式有五种，分别为私有、公开、指定部门、指定群组和指定用户。其中，可以同时设置该资源的共享方式为公开、指定部门、指定群组和指定用户，也可以单独设置共享方式，下面就单独设置共享方式分别举例说明（请确保服务注册者或管理员处于登录状态）：
1. 私有
对 servicesShareSetting 资源：http://localhost:8190/iportal/web/services/sharesetting.rjson 
执行 PUT 请求，批量修改服务的共享设置信息为私有，即只允许服务注册者和管理员可以检索和查看服务：
{
"ids": [
"111",
"112"
],
"entities": []
}
则返回的 rjson 格式的资源表述结构如下：
{"succeed": true}
2. 公开
对 servicesShareSetting 资源：http://localhost:8190/iportal/web/services/sharesetting.rjson 
执行 PUT 请求，批量修改服务的共享设置信息为公开，即所有用户（包含匿名用户）都可以查看：
{
"ids": [
"111",
"112"
],
"entities": [
{
"entityType": 
"USER",
"entityName": 
"GUEST",
"permissionType": 
"READ"
}
]
}
则返回的 rjson 格式的资源表述结构如下：
{"succeed": true}
3. 
指定部门
对 servicesShareSetting 资源：http://localhost:8190/iportal/web/services/sharesetting.rjson 
执行 PUT 请求，批量修改服务的共享设置信息为指定部门，即该部门内的所有成员都可以查看：
{
"ids": [
111,
112
],
"entities": [
{
"entityType": 
"DEPARTMENT",
"entityId": 
"2",
"permissionType": 
"READ"
}
]
}
则返回的 rjson 格式的资源表述结构如下：
{"succeed": true}
4. 
指定群组
对 servicesShareSetting 资源：http://localhost:8190/iportal/web/services/sharesetting.rjson 
执行 PUT 请求，批量修改服务的共享设置信息为指定群组 Id 为1，该群组内的所有成员都可以查看：
{
"ids": [
"111",
"112"
],
"entities": [
{
"entityType": 
"IPORTALGROUP",
"entityId": 
"1",
"permissionType": 
"READ"
}
]
}
则返回的 rjson 格式的资源表述结构如下：
{"succeed": true}
5. 指定用户
对 servicesShareSetting 资源：http://localhost:8190/iportal/web/services/sharesetting.rjson 
执行 PUT 请求，批量修改服务的共享设置信息为指定用户可以查看：
{
"ids": [
"111",
"112"
],
"entities": [
{
"entityType": 
"USER",
"entityName": 
"wanghl",
"permissionType": 
"READ"
}
]
}
则返回的 rjson 格式的资源表述结构如下：
{"succeed": true}
## 请参见
- [services](services.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../iPortalArchitecture.htm)