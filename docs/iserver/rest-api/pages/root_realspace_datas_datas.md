# datas

## URI
[<3D_uri>](../Realspace.htm#URI)/datas[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[3D](../realspace.htm)
## 子资源
[data](data/data.htm)
## 介绍
datas 资源是包含所有三维数据的集合，通过它能得到当前 3D 服务中所有的三维数据信息。
关于本资源的使用方法，可参考开发指南：[获取影像瓦片数据](../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Realspace_Opr/GetImageCache.htm)。
支持的方法：
- [GET](#GET 请求)：获取所有的三维数据列表。
- [HEAD](#HEAD 请求)：获取三维数据集合资源的元数据信息。检查该 datas 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、JSONP、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/Realspace/datas/datas.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas.rjson
### ](../../root.htm)GET 请求
获取所有的三维数据列表，即 datas 资源的子资源的信息。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 datas 资源执行 GET 请求，返回的是一个三维数据的集合，其中单个三维数据描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 资源的名称。 |
| path | String | 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 示例
对示例 datas 资源执行 GET 请求，返回的三维数据的集合的表述如下：
[
{
"name": "OlympicGreen",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/OlympicGreen",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "Balloon",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/Balloon",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "Underground",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/Underground",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "ConventionCenter@ConventionCenter",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/ConventionCenter@ConventionCenter",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "dianti",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/dianti",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "flyRoute2",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/flyRoute2",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "flyRoute1",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/flyRoute1",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "BirdNestRoad",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/BirdNestRoad",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "SubwayPoint@RealspaceSample",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/SubwayPoint@RealspaceSample",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "GasPoint@RealspaceSample",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/GasPoint@RealspaceSample",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "BusPoint@RealspaceSample",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/BusPoint@RealspaceSample",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "RoadA@RealspaceSample",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/RoadA@RealspaceSample",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "lawn@RealspaceSample",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/lawn@RealspaceSample",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "buildings@RealspaceSample",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/buildings@RealspaceSample",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "2015beijingsubway",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/2015beijingsubway",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "bridge_beijing",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/bridge_beijing",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "beijing@beijing",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/beijing@beijing",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "WorldMap",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/WorldMap",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "Beijing@RealspaceSample_Terrain",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/Beijing@RealspaceSample_Terrain",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "house@house",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/house@house",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
},
{
"name": "niaochaoyejing",
"path": "http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/niaochaoyejing",
"resourceConfigID": "map3DData",
"resourceType": "ArithmeticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"*/*"
],
"visible": true
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。image 资源的 HEAD 操作也可以有跟 GET 操作类似的请求参数。
HEAD 请求可以用来判断 datas 资源是否存在，或者客户端是否有权限访问 datas 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datas 资源是否支持<format>格式的表述。
## 请参见
- [3D](../realspace.htm)、[data](data/data.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)