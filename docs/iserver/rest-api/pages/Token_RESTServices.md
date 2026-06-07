# 基于 Token 访问受保护的 REST 服务资源

SuperMap iServer 服务管理器中提供安全模块，通过基于用户身份识别的认证和授权，实现对服务的访问控制。[开启服务安全](../../Server_Service_Management/Security.htm#开启服务安全)后，服务就受到了保护，只有授权的角色所对应的用户才能[访问受保护的服务](../../Subject_introduce/Security/config_role/token/accessserviceswithtoken.htm)资源。
此外，SuperMap iServer 提供了一种基于 Token（令牌）的用户身份验证机制，使在访问受保护的服务资源时仅需提供 
Token，而不需要提供用户名和密码。用户凭借合法的用户名和密码即可[获取 
Token](../../Subject_introduce/Security/config_role/token/acquiringsupermap_token.htm)，然后可携带 Token 访问相应的已授权的服务。SuperMap iServer 提供的 GIS 服务（详见[GIS 
服务资源层次结构](resource_hierarchy.htm)）、OGC 服务、服务管理（[服务管理资源层次结构](Resources_Manager_Architecture.htm)）和门户（[门户资源层次结构](iPortalArchitecture.htm)）的所有资源，均支持通过 Token 来访问，只需在访问时添加“token”参数即可。需要注意的是，访问受保护的服务中的每一个资源时，都要携带“token”参数。
示例：
- 访问 map-china/rest 服务：
http://localhost:8090/iserver/services/map-china/rest.rjson?token=NZkILm9Tl2FGzwK_nUh9krlHOtO0ds83lDoARA85_rMveuTyK0TyGcYV-5rn3wUYE-MSNPlw6wKnewy8jek_JQ..
- 访问 tileImage 资源获取地图切片：
http://localhost:8090/iserver/services/map-china/rest/maps/China/tileImage.png?token=NZkILm9Tl2FGzwK_nUh9krlHOtO0ds83lDoARA85_rMveuTyK0TyGcYV-5rn3wUYE-MSNPlw6wKnewy8jek_JQ..
- [GIS 
服务的快速发布（通过 REST API）](../../Server_Service_Management/StartaServicebyREST_API.htm)
- 注册服务（通过 REST API）
SuperMap iPortal 的 REST API 提供了注册服务的功能，可以通过[ 
services 资源的 POST 请求](Portal/services/services.htm#POST 请求)来实现。
对于门户中所有受保护的资源，通过 REST 方式访问和使用时需要携带验证信息，比如可以在 HTTP 请求头中携带[Cookie 
信息](../../Subject_introduce/Security/config_role/HTTP_Form.htm)，或者可以基于 Token 访问受保护的 REST 服务资源。其中 Cookie 信息可以在登录时获取，而 SuperMap Token 
可以通过 token 资源[获取](../../Subject_introduce/Security/config_role/token/AcquiringSuperMap_Token.htm)。
通过 services 资源注册单个服务，不需要提供用户名和密码，仅需携带令牌 token=9jD451OhUlsDSJkJe9Wb34AkFS5k8I6FMy2UriguJkS2X-qXofeME0gSDTgW6003REFso7YhS3E5TNdzUoQWXg..。
对 services 资源发送 POST 请求：
http://localhost:8090/iportal/web/services.rjson?token=9jD451OhUlsDSJkJe9Wb34AkFS5k8I6FMy2UriguJkS2X-qXofeME0gSDTgW6003REFso7YhS3E5TNdzUoQWXg..
注册一个 SuperMap REST 服务，传入 rjson 请求体如下：
{
"type": "SUPERMAP_REST",
"tags": [
"China"
],
"authorizeSetting": 
[
{
"entityName": 
"GUEST",
"entityType": 
"USER",
"permissionType": 
"READ"
}
],
"metadata": {
"mdContact": 
{
"rpIndName": 
"",
"rpOrgName": 
"",
"rpPosName": 
"",
"rpCntInfo": 
{
"cntAddress": 
{
"delPoint": 
"",
"city": 
"",
"adminArea": 
"",
"postCode": 
"",
"country": 
"",
"eMailAdd": 
""
},
"voiceNum": 
"",
"faxNum": 
""
}
},
"dataIdInfo": 
{
"dataIdent": 
{
"idCitation": 
{
"resTitle": 
"map"
},
"idAbs": 
""
}
},
"distInfo": 
{
"onLineSrc": 
{
"linkage": 
"http://192.168.112.217:8090/iserver/services/map-china/rest"
}
}
}
}
其中：
- type：必选参数，需要注册的服务的类型。目前支持用户申请注册 SuperMap REST 
服务、OGC 服务（WMS、WMTS、WFS、WCS、WPS）、ArcGIS REST 服务以及其他类型的服务。
- tags：必选参数，需要注册的服务的标签。
- authorizeSetting：必选参数，需要注册的服务的权限类型，包括：DELETE（只有服务注册者可查看/编辑/删除）、READ（所有人可查看或者指定用户可查看）。
- metadata：需要注册的服务的元信息，其中 "resTitle" 
服务名称和 "linkage" 服务地址为必选参数。
上述 POST 请求发送后，服务端返回注册的服务如下所示：
{
"newResourceID": "115",
"newResourceLocation": 
"http://localhost:8090/iportal/web/services/115",
"succeed": true
}
即为申请注册的服务的 ID 和服务地址，此时还需要管理员的审核，审核通过后才能注册到 iPortal 
中。关于管理员的服务审核资源可以访问 [servicesCheckStatus 
资源](Portal/services/servicesCheckStatus.htm)。
用户可以通过 REST API 以多种表述格式申请 Token，详见 [tokens](root/tokens.htm) 
资源。