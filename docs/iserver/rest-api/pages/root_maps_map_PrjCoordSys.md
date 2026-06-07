# prjCoordSys

## URI
[<map_uri>](map.htm#URI)/prjCoordSys[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
prjCoordSys 作为 map 资源的一个子资源，表示地图的坐标信息。支持以通用的[WKT](../../../SuperMap_iServer_REST_API_OutputFormat.htm#WKT)（Well-known Text）格式返回地图的坐标系信息。
支持的方法：
- [GET](#GET 请求)：获取地图的坐标信息。
- [HEAD](#HEAD 请求)：检查 prjCoordSys 资源是否存在，或权限是否可以访问 prjCoordSys 资源。
支持的表述格式：RJSON、JSON、HTML、XML、WKT、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/prjCoordSys.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图” 是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/prjCoordSys.rjson
### ](../../root.htm)GET 请求
获取地图的坐标信息。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 prjCoordSys 资源执行 GET 请求，返回操作结果的参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| type | [PrjCoordSysType](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 坐标参考系类型。PCS_EARTH_LONGITUDE_LATITUDE 表示地理坐标系统。 |
| name | java.lang.String | 坐标参考系统的名称。 |
| coordSystem.unit | [Unit](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Unit.html) | 坐标单位。 |
| coordSystem.name | java.lang.String | 坐标参考系统名称，如 GCS_WGS_1984。 |
| coordSystem.spatialRefType | [SpatialRefType](../../../../iServerJavadoc/com/supermap/services/components/commontypes/SpatialRefType.html) | 坐标参考系统的类型，用以区分平面坐标系、地理坐标系、投影坐标系。 |
| coordSystem.type | [CoordSysType](../../../../iServerJavadoc/com/supermap/services/components/commontypes/CoordSysType.html) | 坐标系的具体类型，如 GCS_WGS_1984。 |
| datum.name | java.lang.String | 大地基准面的名称。 |
| datum.type | [DatumType](../../../../iServerJavadoc/com/supermap/services/components/commontypes/DatumType.html) | 大地基准面的类型。如 DATUM_WGS_1984表示 WGS 1984。 |
| spheroid.axis | double | 地球椭球体的长半径。 |
| spheroid.flatten | double | 地球椭球体的扁率。 |
| spheroid.name | java.lang.String | 地球椭球体的名称，如 WGS_1984。 |
| spheroid.type | [SpheroidType](../../../../iServerJavadoc/com/supermap/services/components/commontypes/SpheroidType.html) | 地球椭球体的类型。SPHEROID_WGS_1984表示 WGS 1984。 |
| primeMeridian.longitudeValue | double | 中央经线值，单位为度。 |
| primeMeridian.name | java.lang.String | 中央经线的名称。 |
| primeMeridian.type | [PrimeMeridianType](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrimeMeridianType.html) | 中央经线的类型。PRIMEMERIDIAN_GREENWICH 表示格林威治本初子午线，即0°经线。 |
| distanceUnit | [Unit](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Unit.html) | 地图的距离量度单位。 |
| projectionParam | PrjParameter | 投影坐标系统对象的投影参数。 |
| epsgCode | int | 投影坐标系对应的 EPSG 代码。 |
| coordUnit | [Unit](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Unit.html) | 地图的坐标单位。 |
| projection | Projection | 投影 |
#### 响应示例1
对 prjCoordSys 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/prjCoordSys.rjson，执行 GET 请求，返回 rjson 格式的资源描述如下：
{
"coordSystem": {
"datum": {
"name": "D_WGS_1984",
"spheroid": {
"axis": 6378137,
"flatten": 0.0033528107,
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
"coordUnit": "DEGREE",
"distanceUnit": "METER",
"epsgCode": 1,
"name": "经纬坐标系---GCS_WGS_1984",
"projection": null,
"projectionParam": null,
"type": "PCS_EARTH_LONGITUDE_LATITUDE"
}
#### 响应示例2
对 prjCoordSys 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/prjCoordSys.wkt，执行 GET 请求，返回 WKT 格式的二进制文件，保存并打开后文件内容如下：
GEOGCS["GCS_WGS_1984",DATUM["D_WGS_1984",SPHEROID["WGS_1984",6378137.0,0.0033528107]],PRIMEM["Greenwich",0.0],UNIT["DEGREE",0.017453292519943295],AUTHORITY["EPSG","4326"]]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 prjCoordSys 资源是否存在，或者客户端是否有权限访问 prjCoordSys 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 prjCoordSys 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)