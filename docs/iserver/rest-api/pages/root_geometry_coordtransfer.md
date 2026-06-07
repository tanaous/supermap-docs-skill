# coordTransfer

## URI
[<geometry_uri>](geometry.htm)/coordTransfer[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[geometry](geometry.htm)
## 介绍
coordTransfer 资源表示投影坐标系转换结果。通过对该资源执行 POST 请求，可以对点数组或一组几何对象进行投影坐标系转换。
支持的方法：
- [GET](#GET 请求)：获取执行 POST 请求的表单 。
- [POST](#POST 请求)：根据给定的条件，对点数组或一组几何对象进行投影坐标系转换。
- [HEAD](#HEAD 请求)：检查 coordTransfer 
资源是否存在，或权限是否可以访问 coordTransfer 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/root/geometry/coordtransfer.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/coordtransfer.rjson
### ](../root.htm)GET 请求
获取执行 POST 请求的表单 。
### POST 请求
根据给定条件，对点数组或一组几何对象进行投影坐标系转换。
#### 请求参数
在请求体中需要包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sourcePoints | [Point2D](../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html)[] | 源点数组。例如：[{"x":113.98533886568,"y":4.39179640504},{"x":112.98533886568,"y":3.39179640504}] 
。与 sourceGeometry 必填一项。 |
| sourceGeometries | [Geometry](../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html)[] | 源几何对象。当要转换的几何对象为线、面时，可使用此参数。可同时传入不同类型的几何对象。例如：[{"type":"LINE","points":[{"x": 
113.98533886568,"y": 4.39179640504},{"x": 
114.98533886568,"y": 5.39179640504}]},{"type":"REGION","points":[{"x": 
115.98533886568,"y": 5.39179640504},{"x": 
116.98533886568,"y": 6.39179640504},{"x": 
117.98533886568,"y": 7.39179640504},{"x": 
115.98533886568,"y": 5.39179640504}]}]。与 
sourcePoints 必填一项。 |
| sourceEpsgCode | int | 源点数组或几何对象的坐标系对应的[EPSG 
Code](../../../../Appendix/CoordSystem/EPSGCode.htm)。与 sourcePrj 必填一项。 |
| sourcePrj | [PrjCoordSys](../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 源点数组或几何对象的坐标系 json 描述。当坐标系无对应的EpsgCode时，可使用此参数。与sourceEpsgCode 
必填一项。 |
| targetPrj | [PrjCoordSys](../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 目标坐标系。 
将转换的目标投影坐标系。当目标坐标系无对应的EpsgCode时，可使用此参数。 参数使用时，需按照[PrjCoordSys](../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建。与 targetEpsgCode 必填一项。 |
| targetEpsgCode | int | 目标坐标系对应的[EPSG 
Code](../../../../Appendix/CoordSystem/EPSGCode.htm)。与 targetPrj 必填一项。 |
#### 响应结构
对 coordTransfer 资源执行 POST 请求，在响应消息的实体主体里是一个转换结果描述集 
[Geometry](../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html)[]，其中单个结果描述的结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| center | Point2D[] | 几何对象中心点。 |
| parts | int[] | 描述几何对象中各个子对象所包含的节点的个数。 |
| style | [Style](../../../iServerJavadoc/com/supermap/services/components/commontypes/Style.html) | 几何对象的风格。 |
| prjCoordSy | [PrjCoordSys](../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 几何对象的投影坐标系。 |
| id | int | 几何对象唯一标识符。 |
| pointTopo | int[] | part的拓补结构,目前仅当 GeometryType = REGION 时，此字段有值，1代表为岛,-1代表为洞。 |
| points | Point2D[] | 组成几何对象的节点的二维坐标对数组。 |
#### 示例
对 coordTransfer 资源执行 POST 请求，对传入的点数组进行投影坐标系转换：http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/coordtransfer.rjson，源坐标系通过 
epsgcode 表示，目标坐标系通过坐标系的 json 描述进行设置。请求体参数如下：
{
"sourcePoints":[{"x":113.98533886568, 
"y":4.39179640504}, {"x":112.98533886568, "y":3.39179640504}],
"sourceEpsgCode":4326, 
"targetPrj":
{
"distanceUnit":"METER", 
"projectionParam":
{
"centralParallel":0,
"firstPointLongitude":0, 
"rectifiedAngle":0,
"scaleFactor":1, 
"falseNorthing":0, 
"centralMeridian":0,
"secondStandardParallel":0,
"secondPointLongitude":0,
"azimuth":0, 
"falseEasting":0, 
"firstStandardParallel":0
}, 
"epsgCode":3857,
"coordUnit":"METER", 
"name":"User 
Define", 
"projection":
{
"name":"SPHERE_MERCATOR",
"type":"PRJ_SPHERE_MERCATOR"
}, 
"type":"PCS_USER_DEFINED", 
"coordSystem":
{
"datum":
{
"name":"D_WGS_1984", 
"type":"DATUM_WGS_1984", 
"spheroid":
{
"flatten":0.00335281066474748,
"name":"WGS_1984", 
"axis":6378137, 
"type":"SPHEROID_WGS_1984"
}
} , 
"unit":"DEGREE", 
"spatialRefType":"SPATIALREF_EARTH_LONGITUDE_LATITUDE", 
"name":"GCS_WGS_1984", 
"type":"GCS_WGS_1984",
"primeMeridian":
{
"longitudeValue":0,
"name":"Greenwich",
"type":"PRIMEMERIDIAN_GREENWICH"
}
}
}
}
返回操作结果表述如下：
[
{
"center":
{
"x":1.2688789880426234E7,
"y":489371.98562014854
},
"parts":[1],
"style":null,
"prjCoordSys":null,
"id":0,
"type":"POINT",
"partTopo":null,
"points":
[
{
"x":1.2688789880426234E7,
"y":489371.98562014854
}
]
},
{
"center":
{
"x":1.257747038963296E7,
"y":377793.7702294255
},
"parts":[1],
"style":null,
"prjCoordSys":null,
"id":0,
"type":"POINT",
"partTopo":null,
"points":
[
{
"x":1.257747038963296E7,
"y":377793.7702294255
}
]
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 coordTransfer 资源是否存在，或者客户端是否有权限访问 coordTransfer 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 coordTransfer 资源是否支持<format>格式的表述。
## 请参见
- [geometry](geometry.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)