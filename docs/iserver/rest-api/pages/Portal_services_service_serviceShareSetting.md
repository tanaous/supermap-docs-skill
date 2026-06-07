# serviceShareSetting

## URI
<[service_uri](service.htm)>/sharesetting[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[HEAD](#HEAD 请求)
## 父资源
[service](service.htm)
## 介绍
serviceShareSetting 资源是单个服务的共享设置信息。通过发送 PUT 请求，可以更新单个服务的共享设置信息。服务注册者和管理员可以更新单个服务的权限信息。
支持的方法：
- [GET](#GET 请求)：获取单个服务的共享设置信息。
- [PUT](#PUT 请求)：更新单个服务的共享设置信息。
- [HEAD](#HEAD 请求)：检查 serviceShareSetting 
资源是否存在，或权限是否可以访问 serviceShareSetting 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/Portal/img/serviceShareSetting.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/{id}/sharesetting.rjson
### ](../../Portal.htm)GET 请求
获取单个服务的共享设置信息。
#### 响应结构
对 serviceShareSetting 资源执行 GET 请求，返回的资源表述结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| entityName | String | 实体 Name。对应的 USER（用户）、 ROLE（角色）、GROUP（用户组）、IPORTALGROUP（群组）的名称。 |
| entityType | [EntityType](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntityBase.EntityType.html) | 实体类型。包括 USER（用户）、 ROLE（角色）、GROUP（用户组）、IPORTALGROUP（群组）。 |
| permissionType | [PermissionType](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntity.PermissionType.html) | 权限类型。包括 READ（查看）、 READWRITE（查看/编辑）、DELETE（查看/编辑/删除）。 |
| entityId | Integer | 实体的 id。用于群组的授权。 |
| aliasName | String | 实体的别名，比如 entityType 为 USER 时，别名表示昵称。 |
#### 响应示例
对 serviceShareSetting 资源：http://localhost:8190/iportal/web/services/111/sharesetting.rjson 
执行 GET 请求，返回的 rjson 格式的响应结果如下，显示的权限信息是 admin 管理员可查看/编辑/删除该服务，所有用户（包含匿名用户）可查看该服务，用户 
liyl 可以查看该服务：
[
{
"aliasName": 
"admin",
"entityId": 
null,
"entityName": 
"admin",
"entityType": 
"USER",
"permissionType": 
"DELETE"
},
{
"aliasName": 
"GUEST",
"entityId": 
null,
"entityName": 
"GUEST",
"entityType": 
"USER",
"permissionType": 
"READ"
},
{
"aliasName": 
"xiaoli",
"entityId": 
null,
"entityName": 
"liyl",
"entityType": 
"USER",
"permissionType": 
"READ"
}
]
### PUT 请求
更新单个服务的共享设置信息。
#### 请求参数
发送请求时，需要在请求体中传递如下参数：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| entityName | String | 实体 Name。对应的 USER（用户）, ROLE（角色）,GROUP（用户组）的名称。 |
| entityType | [EntityType](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntityBase.EntityType.html) | 实体类型。包括 USER（用户）, ROLE（角色）,GROUP（用户组）、IPORTALGROUP（群组）。 |
| permissionType | [PermissionType](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntity.PermissionType.html) | 权限类型。包括 READ（查看）, READWRITE（查看/编辑）,DELETE（查看/编辑/删除）。 |
| entityId | Integer | 实体的 id。用于群组的授权。 |
#### 响应结构
返回的资源表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 更新服务的共享设置是否成功。 |
| error | Httperror | 出错信息，如果更新服务的共享设置成功，则没有本字段。 |
#### 响应示例
serviceShareSetting 资源对应的更新单个服务的共享方式有五种，分别为私有、公开、指定部门、指定群组和指定用户。其中，可以同时设置该资源的共享方式为公开、指定部门、指定群组和指定用户，也可以单独设置共享方式，下面就单独设置共享方式分别举例说明（请确保服务注册者或管理员处于登录状态）：
1. 私有
修改服务的授权信息为私有，即只允许服务注册者和管理员可以查看、编辑、删除该服务信息，对 serviceShareSetting 
资源：http://supermapiportal:8190/iportal/web/services/111/sharesetting.rjson 
执行 PUT 请求，发送请求体如下：
[
{
"aliasName": 
"admin",
"entityId": 
null,
"entityName": 
"admin",
"entityType": 
"USER",
"permissionType": 
"DELETE"
}
]
返回的 rjson 格式的响应结果如下：
{ "succeed": true}
2. 公开
修改服务的授权信息为公开，允许所有用户（包含匿名用户）可以查看该服务信息，对 serviceShareSetting 
资源：http://supermapiportal:8190/iportal/web/services/111/sharesetting.rjson 
执行 PUT 请求，发送请求体如下：
[
{
"aliasName": 
"GUEST",
"entityId": 
null,
"entityName": 
"GUEST",
"entityType": 
"USER",
"permissionType": 
"READ"
}
]
返回的 rjson 格式的响应结果如下：
{ "succeed": true}
3. 指定部门
修改服务的授权信息为指定部门，即该部门成员都可以查看，对 serviceShareSetting 资源：http://supermapiportal:8190/iportal/web/services/111/sharesetting.rjson 
执行 PUT 请求，发送请求体如下：
[
{
"entityId": 
2,
"entityType": 
"DEPARTMENT",
"permissionType": 
"READ"
}
]
返回的 rjson 格式的响应结果如下：
{ "succeed": true}
4. 
指定群组
修改服务的授权信息为指定群组，指定群组 Id 为2的群组成员都可以查看，对 serviceShareSetting 
资源：http://supermapiportal:8190/iportal/web/services/111/sharesetting.rjson 
执行 PUT 请求，发送请求体如下：
[
{
"entityId": 
2,
"entityType": 
"IPORTALGROUP",
"permissionType": 
"READ"
}
]
返回的 rjson 格式的响应结果如下：
{ "succeed": true}
5. 指定用户
修改服务的授权信息为指定用户，指定用户 liyl 可以查看该服务信息，对 serviceShareSetting 
资源：http://supermapiportal:8190/iportal/web/services/111/sharesetting.rjson 
执行 PUT 请求，发送请求体如下：
[
{
"aliasName": 
"xiaoli",
"entityId": 
null,
"entityName": 
"liyl",
"entityType": 
"USER",
"permissionType": 
"READ"
}
]
返回的 rjson 格式的响应结果如下：
{ "succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 serviceShareSetting 资源是否存在，或者客户端是否有权限访问 
serviceShareSetting 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 serviceShareSetting 
资源是否支持<format>格式的表述。
## 请参见
- [service](service.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../iPortalArchitecture.htm)