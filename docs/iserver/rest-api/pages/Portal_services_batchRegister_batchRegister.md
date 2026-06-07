# batchRegister

## URI
<[services_uri](../services.htm)>/batchregister[.<format>]
## 支持的方法
[POST](#POST 请求)
## 父资源
[services](../services.htm)
## 子资源
[batchRegisterRate](batchRegisterRate.htm)
## 介绍
批量注册服务。内置的 admin 角色的用户拥有批量注册服务的权限，从 SuperMap iPortal 
8C SP2 及更新的版本开始，被授予服务资源管理权限的用户，也会拥有批量注册服务的权限。
支持的方法：
- [POST](#POST 请求)：批量注册服务。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/Portal/img/batchRegister.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/batchregister.rjson
### ](../../Portal.htm)POST 请求
批量注册服务。
#### 请求参数
对 batchRegister 资源执行 POST 请求，发送请求体如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| rootUrl | String | 批量注册根地址。如：http://ip:port/contextpath/。 |
| authorizeSetting | List<[IportalAuthorizeEntity](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntity.html)> | 批量注册时的共享设置。 |
| status | [ServiceRootUrlStatus](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/ServiceRootUrlStatus.html) | 是否对批量注册的服务进行动态收割。HOSTING 代表进行动态收割，UNHOSTING 代表不进行动态收割。 |
| tags | List<String> | 批量添加服务的标签。 |
#### 响应结构
返回的资源表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 批量注册服务是否成功。 |
| newResourceID | String | 批量注册服务的资源 ID。 |
| newResourceLocation | String | 批量注册服务的资源 URL。 |
#### 响应示例
对 batchRegister 资源：http://localhost:8190/iportal/web/services/batchregister.rjson 
执行 POST 请求，发送请求体如下：
{
"rootUrl": "http://rdc.ispeco.com:8080/iserver/services",
"authorizeSetting": 
[],
"status": "HOSTING",
"tags": [
"用户服务"
]
}
返回的 rjson 格式响应结果如下：
{
"newResourceID": "782cda16-e7b0-4011-b3fc-6cfc9b02316e",
"succeed": true,
"newResourceLocation": 
"/web/services/batchregister/782cda16-e7b0-4011-b3fc-6cfc9b02316e"
}
## 请参见
- [services](../services.htm)、[batchRegisterRate](batchRegisterRate.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../iPortalArchitecture.htm)