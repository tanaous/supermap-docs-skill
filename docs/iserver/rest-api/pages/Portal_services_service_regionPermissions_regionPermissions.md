# regionPermissions

## URI
<[service_uri](../service.htm)>/regionpermissions[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[service](../service.htm)
## 子资源
[regionPermission](regionPermission.htm)、[myRegionPermission](myRegionPermission.htm)
## 介绍
regionPermissions 资源是对服务进行基于空间范围的权限控制。服务注册者和管理员可以查询一个服务的空间范围授权信息列表。
支持的方法：
- [GET](#GET 请求)：查询一个服务的空间范围授权信息列表。
- [POST](#POST 请求)：给一个服务添加一条空间范围授权信息。
- [HEAD](#HEAD 请求)：检查 regionPermissions 
资源是否存在，或权限是否可以访问 regionPermissions 资源。
支持的表述格式：RJSON、JSON、XML。
## 资源层次
![](../../../../../../assets/images/Portal/img/regionPermissions.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/{id}/regionpermissions.rjson
### ](../../../Portal.htm)GET 请求
查询一个服务的空间范围授权信息列表。
#### 请求参数
如果参数未设置，则返回包括所有授权对象类型的空间范围授权信息列表，且授权信息中不包含授权的空间范围。设置参数后，可以选择返回特定授权对象类型的空间范围授权信息，也可以设置在返回时携带授权的空间范围。请求参数必须包含在 
URI 中。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| hasRegion | boolean | 是否返回授权的空间范围。默认值：false。 |
| authorizedEntityType | [EntityType](../../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntityBase.EntityType.html) | 授权对象的类型。 |
#### 响应结构
对 regionPermissions 资源执行 GET 请求，返回当前服务的空间范围授权信息列表。列表中每一条空间范围授权信息的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| authorizedEntity | [AuthorizedEntity](../../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/AuthorizedEntity.html) | 授权的实体对象。 |
| region | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 授权的空间范围。 |
#### 响应示例
查询 id 为 1 的服务的空间范围授权信息，其中授权对象类型为用户，且在返回时携带授权的空间范围，则需设置 
authorizedEntityType=USER&hasRegion=true。即对 regionPermissions 资源：http://localhost:8190/iportal/web/services/1/regionpermissions.rjson?authorizedEntityType=USER&hasRegion=true 
执行 GET 请求，则返回的 rjson 资源表述如下：
[
{
"authorizedEntity": 
{
"entityType": 
"USER",
"entityID": 
"test_regionPer"
},
"region": 
{
"center": 
{
"x": 
109.057701432256,
"y": 
35.3265380859375
},
"parts": 
[
5
],
"style": 
null,
"prjCoordSys": 
{
"distanceUnit": 
null,
"projectionParam": 
null,
"epsgCode": 
0,
"coordUnit": 
null,
"name": 
null,
"projection": 
null,
"type": 
"PCS_USER_DEFINED",
"coordSystem": 
null
},
"id": 
0,
"type": 
"REGION",
"partTopo": 
null,
"points": 
[
{
"x": 
105.264129638672,
"y": 
36.9085693359375
},
{
"x": 
105.527801513672,
"y": 
33.0413818359375
},
{
"x": 
112.646942138672,
"y": 
34.0081787109375
},
{
"x": 
112.910614013672,
"y": 
37.6116943359375
},
{
"x": 
105.264129638672,
"y": 
36.9085693359375
}
]
}
}
]
### POST 请求
给一个服务添加一条空间范围授权信息。
#### 请求参数
发送请求时，需要在请求体中传递如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| authorizedEntity | [AuthorizedEntity](../../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/AuthorizedEntity.html) | 授权的实体对象。 |
| region | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 授权的空间范围。 |
#### 响应结构
返回的资源表述结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 添加空间范围授权授权是否成功。 |
| error | Httperror | 出错信息，如果添加空间范围授权成功，则没有本字段。 |
#### 响应示例
对 regionPermissions 资源:http://localhost:8190/iportal/web/services/1/regionpermissions.rjson 
执行 POST 请求，给 id 为 1 的服务添加一条空间范围授权信息，授权的对象为用户 user1，授权的空间范围为一个绘制的多边形区域，发送请求体如下：
{
"authorizedEntity": 
{
"entityType": 
"USER",
"entityID": 
"user1"
},
"region": "{\"id\":null,\"style\":null,\"parts\":[5],\"points\":[{\"CLASS_NAME\":\"SuperMap.Geometry.Point\",\"id\":\"SuperMap.Geometry_398\",\"parent\":null,\"bounds\":null,\"SRID\":null,\"x\":100.43014526367188,\"y\":38.4027099609375,\"tag\":null,\"type\":\"Point\",\"geometryType\":\"Point\"},{\"CLASS_NAME\":\"SuperMap.Geometry.Point\",\"id\":\"SuperMap.Geometry_399\",\"parent\":null,\"bounds\":null,\"SRID\":null,\"x\":101.83639526367188,\"y\":33.4808349609375,\"tag\":null,\"type\":\"Point\",\"geometryType\":\"Point\"},{\"CLASS_NAME\":\"SuperMap.Geometry.Point\",\"id\":\"SuperMap.Geometry_400\",\"parent\":null,\"bounds\":null,\"SRID\":null,\"x\":113.43795776367188,\"y\":37.4359130859375,\"tag\":null,\"type\":\"Point\",\"geometryType\":\"Point\"},{\"CLASS_NAME\":\"SuperMap.Geometry.Point\",\"id\":\"SuperMap.Geometry_401\",\"parent\":null,\"bounds\":null,\"SRID\":null,\"x\":107.10983276367188,\"y\":40.5999755859375,\"tag\":null,\"type\":\"Point\",\"geometryType\":\"Point\"},{\"CLASS_NAME\":\"SuperMap.Geometry.Point\",\"id\":\"SuperMap.Geometry_402\",\"parent\":null,\"bounds\":null,\"SRID\":null,\"x\":100.43014526367188,\"y\":38.4027099609375,\"tag\":null,\"type\":\"Point\",\"geometryType\":\"Point\"}],\"type\":\"REGION\",\"prjCoordSys\":{\"epsgCode\":null},\"CLASS_NAME\":\"SuperMap.ServerGeometry\"}"
}
则返回的 rjson 格式响应结果如下：
{ "succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 regionPermissions 资源是否存在，或者客户端是否有权限访问 
regionPermissions 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 regionPermissions 资源是否支持<format>格式的表述。
## 请参见
- [service](../service.htm)，[regionPermission](regionPermission.htm)、[myRegionPermission](myRegionPermission.htm)
- [客户端构建 
REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../iPortalArchitecture.htm)