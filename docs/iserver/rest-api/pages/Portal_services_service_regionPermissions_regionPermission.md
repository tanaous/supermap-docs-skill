# regionPermission

## URI
<[regionPermissions_uri](regionPermissions.htm)>/{authorizedEntityType}:{authorizedEntityID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[DELETE](#DELETE 请求)、[HEAD](#HEAD 请求)
## 父资源
[regionPermissions](regionPermissions.htm)
## 介绍
regionPermission 资源是单个服务针对某个授权对象拥有的空间范围授权信息。授权的对象在访问授予了空间范围权限的服务时，只能访问指定空间范围内的内容。当服务类型为地图服务时，只能访问指定空间范围内的地图；当服务类型为数据服务时，只能访问指定空间范围内的数据集。
支持的方法：
- [GET](#GET 请求)：查询一个服务针对某个授权对象拥有的空间范围授权信息。
- [PUT](#PUT 请求)：更新一个服务针对某个授权对象拥有的空间范围授权信息。
- [DELETE](#DELETE 请求)：删除一个服务针对某个授权对象拥有的空间范围授权信息。
- [HEAD](#HEAD 请求)：检查 regionPermission 
资源是否存在，或权限是否可以访问 regionPermission 资源。
支持的表述格式：RJSON、JSON、XML。
## 资源层次
![](../../../../../../assets/images/Portal/img/regionPermission.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名，{id} 为服务 id，{authorizedEntityType} 为授权实体类型，{authorizedEntityID} 
为授权实体 id。
http://supermapiportal:8190/iportal/web/services/{id}/regionpermissions/{authorizedEntityType}:{authorizedEntityID}.rjson
### ](../../../Portal.htm)GET 请求
查询一个服务针对某个授权对象拥有的空间范围授权信息。
#### 响应结构
对 regionPermission 资源执行 GET 请求，获取一个服务针对某个授权对象的空间范围授权信息，由以下字段组成： 
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| authorizedEntity | [AuthorizedEntity](../../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/AuthorizedEntity.html) | 授权的实体对象。 |
| region | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 授权的空间范围。 |
#### 响应示例
对 regionPermission 资源：http://localhost:8190/iportal/web/services/1/regionpermissions/USER:user1.rjson 
执行 GET 请求，获取 id 为 1 的服务针对用户 user1 的空间范围授权信息，返回的 rjson 格式的资源表述如下：
{
"authorizedEntity": 
{
"entityType": 
"USER",
"entityID": 
"user1"
},
"region": {
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
### PUT 请求
更新一个服务针对某个授权对象拥有的空间范围授权信息。
#### 请求参数
发送请求时，需要在请求体中包含如下参数：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | int | 几何对象的唯一标识符。 |
| center | [Point2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 几何对象的中心点。 |
| parts | int[] | 几何对象中各个子对象所包含的节点的个数。 |
| partTopo | int[] | part 的拓扑结构，1 代表为岛,-1 代表为洞。 |
| points | [Point2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html)[] | 组成几何对象的节点的二维坐标对数组。 |
| prjCoordSys | [PrjCoordSys](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 几何对象的投影坐标系。 |
| style | [Style](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Style.html) | 几何对象的风格。 |
| type | [GeometryType](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/GeometryType.html) | 几何对象的类型。 |
#### 响应结构
对 regionPermission 资源执行 PUT 请求，更新一个服务针对某个授权对象拥有的空间范围授权信息，返回的资源表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 更新服务的空间范围授权信息是否成功。 |
| error | Httperror | 出错信息，如果更新空间范围授权信息成功，则没有本字段。 |
#### 响应示例
对 regionPermission 资源：http://localhost:8190/iportal/web/services/1/regionpermissions/USER:user1.rjson 
执行 PUT 请求，更新 id 为 1 的服务针对用户 user1 的空间范围授权信息，发送请求体如下：
{
"center": {
"x": 
109.057701432256,
"y": 
35.3265380859375
},
"parts": [
5
],
"style": null,
"prjCoordSys": {
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
"id": 0,
"type": "REGION",
"partTopo": null,
"points": [
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
则返回的 rjson 格式的表述如下：
{ "succeed": true}
### DELETE 请求
删除一个服务针对某个授权对象拥有的空间范围授权信息。
#### 响应示例
对 regionPermission 资源：http://localhost:8190/iportal/web/services/1/regionpermissions/USER:user1.rjson 
执行 DELETE 请求，删除 id 为 1 的 服务针对用户 user1 的空间范围授权信息，返回的 rjson 格式的表述如下：
{ "succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 regionPermission 资源是否存在，或者客户端是否有权限访问 
regionPermission 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 regionPermission 
资源是否支持<format>格式的表述。
## 请参见
- [regionPermissions](regionPermissions.htm)
- [客户端构建 
REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../iPortalArchitecture.htm)