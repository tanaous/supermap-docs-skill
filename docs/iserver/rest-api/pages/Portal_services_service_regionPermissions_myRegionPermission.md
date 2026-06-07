# myRegionPermission

## URI
<[regionPermissions_uri](regionPermissions.htm)>/mine[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[regionPermissions](regionPermissions.htm)
## 介绍
获取当前用户对指定服务可以访问的的空间范围权限信息，该范围是指定服务授权给当前用户本人的范围、授权给当前用户所在部门的范围、授权给当前用户所在群组的范围的并集。
支持的方法：
- [GET](#GET 请求)：获取当前用户对指定服务可访问的的空间范围权限信息。
- [HEAD](#HEAD 请求)：检查 myRegionPermission 
资源是否存在，或权限是否可以访问 myRegionPermission 资源。
支持的表述格式：RJSON、JSON。
## 资源层次
![](../../../../../../assets/images/Portal/img/myRegionPermission.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 json 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/{id}/regionpermissions/mine.json
### ](../../../Portal.htm)GET 请求
#### 响应结构
对 myRegionPermission 资源执行 GET 请求，获取当前用户对指定服务可访问的的空间范围权限信息，返回一个标准格式的 [GeoJSON](https://geojson.org/)，其中 
GeoJSON 的 type 值为 Polygon 或 MultiPolygon。
#### 响应示例
对 myRegionPermission 资源：http://localhost:8190/iportal/web/services/1/regionpermissions/mine.rjson 
执行 GET 请求，获取当前用户对 id 为 1 的服务可访问的空间范围信息，返回的 json 格式的资源表述如下：
{"type":"Polygon","coordinates":[[[-403.59375,218.671875],[-392.34375,62.578125],[-178.59375,80.859375],[-174.375,222.890625],[-403.59375,218.671875]]]}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 myRegionPermission 资源是否存在，或者客户端是否有权限访问 
myRegionPermission 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 myRegionPermission 
资源是否支持<format>格式的表述。
## 请参见
- [regionPermissions](regionPermissions.htm)
- [客户端构建 
REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../iPortalArchitecture.htm)