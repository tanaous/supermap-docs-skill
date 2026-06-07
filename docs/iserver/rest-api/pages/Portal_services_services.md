# services

## URI
<[portal_uri](../Portal.htm)>/services[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[DELETE](#DELETE 请求)、[HEAD](#HEAD 请求)
## 父资源
[portal](../Portal.htm)
## 子资源
[service](service/service.htm)、[servicesCheckStatus](servicesCheckStatus.htm)、[servicesShareSettings](serviceShareSettings.htm)、[servicesStatus](servicesStatus.htm)、[batchRegister](batchRegister/batchRegister.htm)、[harvestBatchRegisterServices](harvestBatchRegisterServices.htm)
## 介绍
services 资源是当前用户有权限查看的服务的集合，通过发送 POST 请求，可以申请注册新的单个服务；通过发送 
DETELE 请求，可以批量删除服务。普通的 iPortal 用户申请注册的服务默认不需要门户管理员审核即可注册到门户中。当然，门户管理员也可以开启服务审核功能，此时只有经过管理员审核通过后的服务才能注册到 
iPortal 门户中。审核单个服务的资源请参见：[serviceCheckStatus 
资源的 PUT 请求](service/serviceCheckStatus.htm#PUT 请求)。
支持的方法：
- [GET](#GET 请求)：根据查询参数获取服务列表信息。
- [POST](#POST 请求)：申请注册新的单个服务。
- [DELETE](#DELETE 请求)：删除服务，支持批量删除服务。
- [HEAD](#HEAD 请求)：检查 services 资源是否存在，或权限是否可以访问 
services 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
*
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services.rjson
### ](../Portal.htm)GET 请求
获取当前用户有权限查看的服务列表信息。
#### 请求参数
如果参数未设置，则返回用户有权限查看的当前第一页中的服务列表信息，设置参数后，会返回用户指定的服务列表信息，请求参数必须包含在 
URI 中。
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| ids | Integer[] | 由服务项 id 组成的整型数组。 |
| tags | String[] | 根据标签过滤。 |
| userNames | String[] | 根据服务注册者名称过滤。 |
| types | [SourceType](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/SourceType.html)[] | 根据服务类型过滤。 |
| checkStatus | [CheckStatus](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/CheckStatus.html) | 根据审核状态过滤。 |
| isDataItemService | Boolean | 根据是否为用户数据发布的服务过滤。 |
| enable | Boolean | 根据服务是否启用过滤。 |
| offline | Boolean | 根据服务是否离线过滤。 |
| permissionType | String | 根据权限类型过滤。权限类型包括 SEARCH（可检索）、READ（可查看）、DELETE（可删除）。 |
| shareToMe | Boolean | 是否查询直接分享给我的资源。该参数已过期。 |
| orderBy | [ServiceOrderBy](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/ServiceSearchParameter.ServiceOrderBy.html) | 根据排序字段过滤。其中，按服务访问次数排序字段只有在启用服务代理功能后才生效。 |
| orderType | [OrderType](../../../iServerJavadoc/com/supermap/services/components/commontypes/SearchParameter.OrderType.html) | 根据升序还是降序过滤。 |
| keywords | String[] | 根据关键字过滤。 |
| currentPage | int | 根据分页页码过滤。 |
| pageSize | int | 根据分页大小过滤。 |
| isBatch | Boolean | 根据服务是否是批量注册过滤。 |
| dirIds | Integer[] | 根据目录 id 过滤。 |
| returnSubDir | Boolean | 是否查询子目录的资源。true 表示返回当前查询目录及其子目录的资源，false 表示仅返回当前目录的资源。 |
| isNotInDir | Boolean | 根据是否是未分组的进行过滤，默认值为 false。如果为 true，则返回所有未分组的服务列表信息；如果为 false，则返回全部的服务列表信息。 
未分组是指未添加到目录的服务列表资源。 |
| searchScope | [SearchScope](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/SearchScope.html) | 根据共享范围过滤。 |
| filterFields | [FilterFields](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/ServiceSearchParameter.FilterField.html)[] | 用于关键字查询时的字段过滤。字段名称需大写。例如：根据服务注册者的关键字符过滤，则需要设置 keywords=["admin"]&filterFields=["NICKNAME"]。 |
| accessMode | AccessMode | 根据服务访问模式过滤。*该参数已过期。 |
| authorizedOnly | Boolean | 根据是否是已授权访问的服务过滤，默认 false，返回全部的服务列表；如果为 
true，则只返回经过授权访问的服务。此参数仅在服务共享 v2 模式下有效，iPortal 默认使用的是 v2模式。该参数已过期。 |
| visitStart | Long | 查询此时间值及此时间值之后的访问量，如果为null或者小于0，则起始时间不限制。 |
| visitEnd | Long | 查询此时间值及此时间值之前的访问量，如果为null或者小于0，则截止时间不限制。 |
| createStart | Long | 查询此时间值及此时间值之后创建的服务，如果为null或者小于0，则起始时间不限制。 |
| createEnd | Long | 查询此时间值及此时间值之前创建的服务，如果为null或者小于0，则截止时间不限制。 |
#### 响应结构
对 services 资源执行 GET 请求，返回当前用户有权查看的服务列表信息。由以下字段组成：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| content | List<[ServiceInfo](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/ServiceInfo.html)> | 页面内容。 |
| currentPage | int | 当前第几页。 |
| pageSize | int | 每页大小。 |
| searchParameter | [SearchParameter](../../../iServerJavadoc/com/supermap/services/components/commontypes/SearchParameter.html) | 当前页搜索参数。 |
| total | int | 总记录数。 |
| totalPage | int | 总页数。 |
#### 响应示例
对 services 资源：http://localhost:8190/iportal/web/services.rjson 
执行 GET 请求，返回 rjson 格式的资源表述如下：
{
"content": [
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816872,
"description": null,
"enable": true,
"id": 1,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "transportationanalyst-sample/wps100",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "WPS",
"updateTime": 1482387816872,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816905,
"description": null,
"enable": true,
"id": 2,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "data-jingjin/wcs111",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "WCS",
"updateTime": 1482387816905,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816886,
"description": null,
"enable": true,
"id": 3,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "data-jingjin/wcs112",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "WCS",
"updateTime": 1482387816886,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816900,
"description": null,
"enable": true,
"id": 4,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "data-jingjin/rest",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "DATA",
"updateTime": 1482387816900,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816889,
"description": null,
"enable": true,
"id": 5,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "3D-zhufeng/rest",
"scenes": [
{
"id": null,
"sceneName": "zhufeng",
"sceneUrl": "http://192.168.120.40:8091/iserver/services/3D-zhufeng/rest/realspace/scenes/zhufeng",
"serviceId": 5
}
],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "REALSPACE",
"updateTime": 1482387816889,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816846,
"description": null,
"enable": true,
"id": 6,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "3D-osgb/rest",
"scenes": [
{
"id": null,
"sceneName": "osgb",
"sceneUrl": "http://192.168.120.40:8091/iserver/services/3D-osgb/rest/realspace/scenes/osgb",
"serviceId": 6
},
{
"id": null,
"sceneName": "webgl",
"sceneUrl": "http://192.168.120.40:8091/iserver/services/3D-osgb/rest/realspace/scenes/webgl",
"serviceId": 6
}
],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "REALSPACE",
"updateTime": 1482387816846,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387821498,
"description": null,
"enable": true,
"id": 7,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "data-changchun/rest",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "DATA",
"updateTime": 1482387821498,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816912,
"description": null,
"enable": true,
"id": 8,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [
{
"id": null,
"mapThumbnail": null,
"mapTitle": "全国温度变化图",
"mapUrl": null,
"serviceId": 8
}
],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "map-temperature/rest",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "MAP",
"updateTime": 1482387816912,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816899,
"description": null,
"enable": true,
"id": 9,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [
{
"id": null,
"mapThumbnail": null,
"mapTitle": "长春市区图",
"mapUrl": null,
"serviceId": 9
},
{
"id": null,
"mapThumbnail": null,
"mapTitle": "长春市区图_Local",
"mapUrl": null,
"serviceId": 9
}
],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "map-changchun/rest",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "MAP",
"updateTime": 1482387816899,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
}
],
"currentPage": 1,
"pageSize": 9,
"searchParameter": {
"accessMode": "V2",
"authorizedOnly": false,
"checkStatus": null,
"currentPage": 1,
"currentUser": null,
"departmentIds": null,
"dirIds": null,
"enable": null,
"filterFields": null,
"groupIds": null,
"isBatch": null,
"isNotInDir": false,
"keywords": null,
"offline": null,
"orderBy": null,
"orderType": "ASC",
"pageSize": 9,
"resourceIds": null,
"tags": null,
"types": null,
"userNames": null
},
"total": 49,
"totalPage": 6
}
如果希望获取指定的服务列表信息，如根据服务注册者的关键字符过滤，则需要设置 keywords=["admin"]&filterFields=["NICKNAME"]，即对 
services 资源：http://localhost:8190/iportal/web/services.rjson?keywords=["admin"]&filterFields=["NICKNAME"]执行 
GET 请求，返回的 rjson 格式的资源表述如下：
{
"content": [
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816872,
"description": null,
"enable": true,
"id": 1,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "transportationanalyst-sample/wps100",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "WPS",
"updateTime": 1482387816872,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816905,
"description": null,
"enable": true,
"id": 2,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "data-jingjin/wcs111",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "WCS",
"updateTime": 1482387816905,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816886,
"description": null,
"enable": true,
"id": 3,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "data-jingjin/wcs112",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "WCS",
"updateTime": 1482387816886,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816900,
"description": null,
"enable": true,
"id": 4,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "data-jingjin/rest",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "DATA",
"updateTime": 1482387816900,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816889,
"description": null,
"enable": true,
"id": 5,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "3D-zhufeng/rest",
"scenes": [
{
"id": null,
"sceneName": "zhufeng",
"sceneUrl": "http://192.168.120.40:8091/iserver/services/3D-zhufeng/rest/realspace/scenes/zhufeng",
"serviceId": 5
}
],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "REALSPACE",
"updateTime": 1482387816889,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816846,
"description": null,
"enable": true,
"id": 6,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "3D-osgb/rest",
"scenes": [
{
"id": null,
"sceneName": "osgb",
"sceneUrl": "http://192.168.120.40:8091/iserver/services/3D-osgb/rest/realspace/scenes/osgb",
"serviceId": 6
},
{
"id": null,
"sceneName": "webgl",
"sceneUrl": "http://192.168.120.40:8091/iserver/services/3D-osgb/rest/realspace/scenes/webgl",
"serviceId": 6
}
],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "REALSPACE",
"updateTime": 1482387816846,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387821498,
"description": null,
"enable": true,
"id": 7,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "data-changchun/rest",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "DATA",
"updateTime": 1482387821498,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816912,
"description": null,
"enable": true,
"id": 8,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [
{
"id": null,
"mapThumbnail": null,
"mapTitle": "全国温度变化图",
"mapUrl": null,
"serviceId": 8
}
],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "map-temperature/rest",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "MAP",
"updateTime": 1482387816912,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
},
{
"addedMapNames": null,
"addedSceneNames": null,
"authorizeSetting": null,
"checkStatus": "SUCCESSFUL",
"checkTime": null,
"checkUser": null,
"checkUserNick": null,
"createTime": 1482387816899,
"description": null,
"enable": true,
"id": 9,
"isBatch": true,
"isDataItemService": false,
"linkPage": null,
"mapInfos": [
{
"id": null,
"mapThumbnail": null,
"mapTitle": "长春市区图",
"mapUrl": null,
"serviceId": 9
},
{
"id": null,
"mapThumbnail": null,
"mapTitle": "长春市区图_Local",
"mapUrl": null,
"serviceId": 9
}
],
"metadata": null,
"metadataString": "",
"nickname": "admin",
"offline": false,
"proxiedUrl": null,
"resTitle": "map-changchun/rest",
"scenes": [],
"serviceRootUrlId": 1,
"tags": [
"系统服务"
],
"thumbnail": null,
"type": "MAP",
"updateTime": 1482387816899,
"userName": "admin",
"verifyReason": null,
"version": null,
"visitCount": 0
}
],
"currentPage": 1,
"pageSize": 9,
"searchParameter": {
"accessMode": "V2",
"authorizedOnly": false,
"checkStatus": null,
"currentPage": 1,
"currentUser": null,
"departmentIds": null,
"dirIds": null,
"enable": null,
"filterFields": [
"NICKNAME"
],
"groupIds": null,
"isBatch": null,
"isNotInDir": null,
"keywords": [
"admin"
],
"offline": null,
"orderBy": null,
"orderType": "ASC",
"pageSize": 9,
"resourceIds": null,
"tags": null,
"types": null,
"userNames": null
},
"total": 49,
"totalPage": 6
}
### POST 请求
申请注册新的单个服务。普通的 iPortal 用户申请注册的服务默认不需要门户管理员审核即可注册到门户中。当然，门户管理员也可以开启服务审核功能，此时只有经过管理员审核通过后的服务才能注册到 
iPortal 门户中。审核单个服务的资源请参见：[serviceCheckStatus 
资源的 PUT 请求](service/serviceCheckStatus.htm#PUT 请求)。
#### 请求参数
发送请求时，需要在请求体中包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| type | [SourceType](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/SourceType.html) | 【必选参数】 
需要注册的服务的类型。 |
| tags | List<String> | 【必选参数】 
需要注册的服务的标签。 |
| authorizeSetting | List<[IportalAuthorizeEntity](../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntity.html)> | 【必选参数】 
需要注册的服务的共享设置。权限类型包括：DELETE（查看/编辑/删除）、READ（查看）、READWRITE（查看/编辑）。 |
| metadata | Metadata | 【可选参数】 
需要注册的服务的元数据信息。 |
| addedMapNames | Set<String> | 【可选参数】 
二维地图服务下的地图名称列表。目前仅支持 SuperMap REST 服务，其他服务类型时，该参数需设置为空值。 |
| addedSceneNames | Set<String> | 【可选参数】 
三维服务下的场景名称列表。目前仅支持 SuperMap REST 服务，其他服务类型时，该参数需设置为空值。 |
| tokenRefreshUrl | String | 【可选参数】 
ArcGIS REST 服务的令牌获取地址。应能通过该地址获取访问服务所需 Token。 |
| previewUrl | String | 【可选参数】 
服务自定义预览地址。 |
#### 响应结构
对 services 资源执行 POST 请求，返回的资源表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| newResourceID | String | 注册新服务的 id。 |
| newResourceLocation | String | 注册新服务的 URI。 |
| succeed | boolean | 注册新服务是否成功。 |
#### 响应示例
对 services 资源:http://localhost:8190/iportal/web/services.rjson 
执行 POST 请求，发送请求体如下：
{
"type": "SUPERMAP_REST",
"tags": [
"china"
],
"authorizeSetting": 
[
{
"entityType": 
"USER",
"entityName": 
"GUEST",
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
"rpCntInfo": 
{
"cntAddress": 
{
"delPoint": 
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
"refSysInfo": 
{
"mdCoRefSys": 
{
"projection": 
""
},
"refSysID": 
""
},
"dataIdInfo": 
{
"dataIdent": 
{
"idCitation": 
{
"resTitle": 
"china"
},
"dataExt": 
{
"geoEle": 
{
"geoBndBox": 
{
"westBL": 
0,
"eastBL": 
0,
"southBL": 
0,
"northBL": 
0
}
},
"exDesc": 
""
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
"http://192.168.120.40:8091/iserver/services/map-china400/rest"
}
}
},
"addedMapNames": [
"China",
"China_4326"
],
"addedSceneNames": 
[]
}
则返回的 rjson 格式响应结果如下：
{
"succeed": true,
"newResourceID": "2",
"newResourceLocation": 
"http://192.168.120.40:8190/iportal/web/services/2"
}
### DELETE 请求
删除服务，支持批量删除服务。url 中传递需要删除服务的 id 数组。
#### 响应结构
返回的资源表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 删除服务是否成功。 |
| error | Httperror | 出错信息，如果删除服务成功，则没有本字段。 |
#### 响应示例
对 services 资源：http://localhost:8190/iportal/web/services.rjson?ids=[1,2] 
执行 DELETE 请求，批量删除 id 为 1 和 2 的两个服务，返回的 rjson 格式响应结果如下：
{ "succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 services 资源是否存在，或者客户端是否有权限访问 services 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 services 资源是否支持<format>格式的表述。
## 请参见
- [portal](../Portal.htm)、[service](service/service.htm)、[servicesCheckStatus](servicesCheckStatus.htm)、[servicesShareSettings](serviceShareSettings.htm)、[servicesStatus](servicesStatus.htm)、[batchRegister](batchRegister/batchRegister.htm)、[harvestBatchRegisterServices](harvestBatchRegisterServices.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../iPortalArchitecture.htm)