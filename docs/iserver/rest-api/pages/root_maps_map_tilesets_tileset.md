# tileset

## URI
<[tilesets uri](tilesets.htm#URI)>/{name}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[tilesets](tilesets.htm)
## 介绍
切片集。包含切片的元数据信息、切片名称和切片版本等。通过发送 GET 请求，可以获取某幅地图的某个切片集信息。
支持的方法：
- [GET](#GET 请求)：获取切片集信息，包含切片的元数据信息、切片名称和切片版本等。
- [HEAD](#HEAD 请求)：检查 tileset 资源是否存在，或权限是否可以访问 tileset 资源。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../assets/images/root/maps/map/tileset.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“中国1：400万地图”是地图名（{mapName}），“-1019636792”是切片集名称（{name}），URI 表示的是“中国1：400万地图”的-1019636792切片集信息，即
http://supermapiserver:8090/iserver/services/map-world/rest/maps/中国1：400万地图/tilesets/-1019636792.rjson
### ](../../../root.htm)GET 请求
获取切片集信息，包含切片的元数据信息、切片名称和切片版本等。
#### 响应结构
对 tileset 资源执行 GET 请求，返回的资源表述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 切片集名称。 |
| metaData | MetaData | 地图切片元数据信息。 |
| tileVersions | [TileVersion](../../../../../iServerJavadoc/com/supermap/services/tilesource/TileVersion.html)[] | 切片版本数组。一个切片集中可以有多个切片版本。 |
#### 响应示例
对 tileset 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/中国1：400万地图/tilesets/-1019636792.rjson 执行 GET 请求，返回的 rjson 格式的表述如下：
{
"metaData": {
"bounds": {
"bottom": -54290.22025579368,
"left": 2184896.3997221524,
"leftBottom": {
"x": 2184896.3997221524,
"y": -54290.22025579368
},
"right": 2.0037508342789244E7,
"rightTop": {
"x": 2.0037508342789244E7,
"y": 1.6850435760215696E7
},
"top": 1.6850435760215696E7
},
"mapName": "中国1：400万地图",
"mapStatusHashCode": "-1399916978",
"originalPoint": {
"x": 2184896.3997221524,
"y": 1.6850435760215696E7
},
"prjCoordSys": {
"coordSystem": {
"datum": {
"name": "D_WGS_1984",
"spheroid": {
"axis": 6378137,
"flatten": 0.0033528106647474805,
"name": "WGS_1984",
"type": "SPHEROID_WGS_1984"
},
"type": "DATUM_WGS_1984"
},
"name": "GCS_WGS_1984",
"primeMeridian": {
"longitudeValue": 0,
"name": "Greenwich",
"type": "PRIMEMERIDIAN_GREENWICH"
},
"spatialRefType": "SPATIALREF_EARTH_LONGITUDE_LATITUDE",
"type": "GCS_WGS_1984",
"unit": "DEGREE"
},
"coordUnit": "METER",
"distanceUnit": "METER",
"epsgCode": 3857,
"name": "User Define",
"projection": {
"name": "SPHERE_MERCATOR",
"type": "PRJ_SPHERE_MERCATOR"
},
"projectionParam": {
"azimuth": 0,
"centralMeridian": 0,
"centralParallel": 0,
"falseEasting": 0,
"falseNorthing": 0,
"firstPointLongitude": 0,
"firstStandardParallel": 0,
"scaleFactor": 1,
"secondPointLongitude": 0,
"secondStandardParallel": 0
},
"type": "PCS_USER_DEFINED"
},
"resolutions": null,
"scaleDenominators": [929665.2461381706],
"tileFormat": "PNG",
"tileHeight": 256,
"tileWidth": 256,
"transparent": true
},
"name": "-1019636792",
"tileVersions": [{
"desc": "first version of tileset -1019636792",
"name": "51de5c76-c994-4207-94a7-d31f948f56e3",
"parent": null,
"timestamp": 1358152988765,
"update": {
"bounds": {
"bottom": -54290.22025579368,
"left": 2184896.3997221524,
"leftBottom": {
"x": 2184896.3997221524,
"y": -54290.22025579368
},
"right": 2.0037508342789244E7,
"rightTop": {
"x": 2.0037508342789244E7,
"y": 1.6850435760215696E7
},
"top": 1.6850435760215696E7
},
"resolutions": null,
"scaleDenominators": [929665.2461381706]
}
}]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tileset 资源是否存在，或者客户端是否有权限访问 tileset 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tileset 资源是否支持<format>格式的表述。
## 请参见
- [tilesets](tilesets.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)