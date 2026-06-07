# coordTransfer

## URI
<[data_uri](../data.htm#URI)>/coordtransfer[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[data](../data.htm)
## 子资源
[coordTransferResult](coordtransferResult/coordtransferResult.htm)
## 介绍
coordTransfer 资源表示投影坐标系转换结果。通过对该资源执行 POST 请求，可以对点数组或一组几何对象进行投影坐标系转换，步骤如下：
- 
对 coordTransfer 执行 POST 请求，在请求体中包含必要的参数，返回一个确定的结果资源（coordtransferResult 资源）的 URI；
- 
对返回的 URI 进行 GET 操作，得到转换结果。
支持的方法：
- [GET](#GET 请求)：获取执行 POST 请求的表单 。
- [POST](#POST 请求)：根据给定的条件，创建一个坐标系转换结果资源。
- [HEAD](#HEAD 请求)：检查 coordTransfer 资源是否存在，或权限是否可以访问 coordTransfer 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/data/coordTransfer/coordTransfer.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/data-world/rest/data/coordtransfer.rjson
### ](../../root.htm)GET 请求
获取执行 POST 请求的表单 。
### POST 请求
根据给定条件，创建一个数据查询结果资源。
#### 请求参数
在请求体中需要包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sourcePoints | Point2D[] | 源点数组。例如：[{"x":113.98533886568,"y":4.39179640504}]。与 sourceGeometry 必填一项。 |
| sourceGeometries | [Geometry](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html)[] | 源几何对象。当要转换的几何对象为线、面时，可使用此参数。可同时传入不同类型的几何对象。例如：[{"type":"REGION","points":[{"x":30,"y":60},{"x":60,"y":60},{"x":60,"y":30},{"x":30,"y":60}]},{"type":"LINE","points":[{"x":45,"y":70},{"x":80,"y":80},{"x":60,"y":30}]}]。与 sourcePoints 必填一项。 |
| sourceEpsgCode | int | 源点数组或几何对象的坐标系对应的[EPSG Code](../../../../../Appendix/CoordSystem/EPSGCode.htm)。与 sourcePrj 必填一项。 |
| sourcePrj | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 源点数组或几何对象的坐标系 json 描述。当坐标系无对应的EpsgCode时，可使用此参数。与sourceEpsgCode 必填一项。 |
| targetPrj | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 目标坐标系。 将转换的目标投影坐标系。当目标坐标系无对应的EpsgCode时，可使用此参数。 参数使用时，需按照[PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建。与 targetEpsgCode 必填一项。 |
| targetEpsgCode | int | 目标坐标系对应的[EPSG Code](../../../../../Appendix/CoordSystem/EPSGCode.htm)。与 targetPrj 必填一项。 |
#### 响应结构
对 coordTransfer 资源执行 POST 请求，返回的创建结果的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 数据查询是否成功。 |
| newResourceID | String | 创建的 coordTransferResult 资源的 ID。 |
| newResourceLocation | String | 创建的 coordTransferResult 资源的 URI。 |
#### 示例1
对 coordTransfer 资源执行 POST 请求，对传入的几何对象进行投影坐标系转换（即创建一个 coordTransferResult 资源）：http://supermapiserver:8090/iserver/services/data-world/rest/data/coordtransfer.rjson，源坐标系和目标坐标系都通过 Epsg Code 设置。请求体参数如下：
{
"sourcePoints":[{"x":113.98533886568,"y":4.39179640504}],
"sourceEpsgCode":4326,
"targetEpsgCode":3857
}
返回 rjson 格式的操作结果表述如下：
{
"newResourceID": "159790bc662f49579a938a5a52ca1415_eb5271f601aa4067905273c18fcc17a5",
"newResourceLocation": "http://localhost:8090/iserver/services/data-world/rest/data/coordtransfer/159790bc662f49579a938a5a52ca1415_eb5271f601aa4067905273c18fcc17a5.rjson",
"postResultType": "CreateChild",
"succeed": true
}
#### 示例2
对 coordTransfer 资源执行 POST 请求，对传入的几何对象进行投影坐标系转换（即创建一个 coordTransferResult 资源）：http://supermapiserver:8090/iserver/services/data-world/rest/data/coordtransfer.rjson，源坐标系和目标坐标系都通过坐标系的 json 描述进行设置。请求体参数如下：
{
"sourcePoints":[{"x":113.98533886568, "y":4.39179640504}],
"sourcePrj":{
"distanceUnit":"METER",
"projectionParam":null,
"epsgCode":4326,
"coordUnit":"DEGREE",
"name":"Longitude / Latitude Coordinate System---GCS_WGS_1984",
"projection":null,
"type":"PCS_EARTH_LONGITUDE_LATITUDE",
"coordSystem":{
"datum":{
"name":"D_WGS_1984",
"type":"DATUM_WGS_1984",
"spheroid":{
"flatten":0.00335281066474748,
"name":"WGS_1984", "axis":6378137,
"type":"SPHEROID_WGS_1984"
}
},
"unit":"DEGREE",
"spatialRefType":"SPATIALREF_EARTH_LONGITUDE_LATITUDE",
"name":"GCS_WGS_1984",
"type":"GCS_WGS_1984",
"primeMeridian":{
"longitudeValue":0,
"name":"Greenwich",
"type":"PRIMEMERIDIAN_GREENWICH"  
}
}
},
"targetPrj":{
"distanceUnit":"METER",
"projectionParam":{
"centralParallel":0,
"firstPointLongitude":0,
"rectifiedAngle":0,
"scaleFactor":1,
"falseNorthing":0,
"centralMeridian":0,
"secondStandardParallel":0,
"secondPointLongitude":0,
"azimuth":0, "falseEasting":0,
"firstStandardParallel":0
},
"epsgCode":3857,
"coordUnit":"METER",
"name":"User Define",
"projection":{
"name":"SPHERE_MERCATOR",
"type":"PRJ_SPHERE_MERCATOR"},
"type":"PCS_USER_DEFINED",
"coordSystem":{
"datum":{
"name":"D_WGS_1984",
"type":"DATUM_WGS_1984",
"spheroid":{
"flatten":0.00335281066474748,
"name":"WGS_1984",
"axis":6378137,
"type":"SPHEROID_WGS_1984"}},
"unit":"DEGREE",
"spatialRefType":"SPATIALREF_EARTH_LONGITUDE_LATITUDE",
"name":"GCS_WGS_1984",
"type":"GCS_WGS_1984",
"primeMeridian":{
"longitudeValue":0,
"name":"Greenwich",
"type":"PRIMEMERIDIAN_GREENWICH"
}
}
}
}
返回 rjson 格式的操作结果表述如下：
{
"newResourceID": "159790bc662f49579a938a5a52ca1415_e9d2badac8bf4be4a562a31e2103f7f4",
"newResourceLocation": "http://localhost:8090/iserver/services/data-World/rest/data/coordtransfer/159790bc662f49579a938a5a52ca1415_e9d2badac8bf4be4a562a31e2103f7f4.rjson",
"postResultType": "CreateChild",
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 coordTransfer 资源是否存在，或者客户端是否有权限访问 coordTransfer 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 coordTransfer 资源是否支持<format>格式的表述。
## 请参见
- [coordTransferResult](coordtransferResult/coordtransferResult.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)