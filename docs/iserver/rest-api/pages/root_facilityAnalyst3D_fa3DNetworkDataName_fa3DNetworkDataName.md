# fa3DNetworkDataName

## URI
<[facilityAnalyst3D_uri](../facilityAnalyst3D.htm#URI)>/{networkDataName}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[facilityAnalyst3D](../facilityAnalyst3D.htm)
## 子资源
[sinks](sinks.htm)、[sources](sources.htm)、[traceDownResult](TraceDownResult.htm)、[traceUpResult](traceUpResult.htm)、[upstreamCirticalFaclilities](upstreamCirticalFaclilities.htm)
## 介绍
fa3DNetworkDataName 资源表示一个可用于三维设施网络分析的三维网络数据，通过对 fa3DNetworkDataName 资源执行 GET 请求，可以获取本三维网络数据集的描述信息，如：投影信息、标识弧段 ID 的字段、标识节点 ID 的字段、流向字段名称等，以及所支持的所有三维设施网络分析功能。
支持的方法：
- [GET](#GET 请求)：获取本三维网络数据集的描述信息，以及所支持的所有三维设施网络分析功能。
- [HEAD](#HEAD 请求)：检查 fa3DNetworkDataName 资源是否存在，或权限是否可以访问 fa3DNetworkDataName 资源。
支持的表述格式：RJSON、JSON、XML、HTML、JSONP。
## 资源层次
![](../../../../../assets/images/root/facilityAnalyst3D/fa3DNetworkDataName/fa3DNetworkDataName.png) 
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/networkAnalyst3D-Pipe3D/rest/facilityanalyst3d/Network@Pipe3D.rjson
### ](../../root.htm)GET 请求
获取本三维网络数据集的描述信息，以及所支持的所有三维设施网络分析功能。
#### 响应结构
对 fa3DNetworkDataName 资源执行 GET 请求，在响应消息的实体主体里包括本三维网络数据集的描述信息，以及所支持的所有三维设施网络分析功能，具体描述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| barrierEdges | int[] | 障碍弧段。 |
| barrierNodes | int[] | 障碍点。 |
| directionField | String | 三维网络数据集的流向字段。 |
| edgeIDField | String | 三维网络数据集中标识弧段 ID 的字段。 |
| fNodeIDfield | String | 三维网络数据集中标识弧段起始结点 ID 的字段。 |
| nodeIDField | String | 三维网络数据集中标识结点 ID 的字段。 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 三维网络数据投影信息。 |
| tNodeIDField | String | 三维网络数据集中标识弧段终止结点 ID 的字段。 |
| tolerance | int | 点到弧段的距离容限。 |
| weightFieldInfos | [WeightFieldInfo3D[]](../../../../iServerJavaDoc/com/supermap/services/components/commontypes/WeightFieldInfo3D.html) | 权值字段信息集合对象。 |
#### 响应示例
对 fa3DNetworkDataName 资源执行 GET 请求（http://localhost:8090/iserver/services/networkAnalyst3D-Pipe3D/rest/facilityanalyst3d/Network@Pipe3D.rjson），返回 rjson 格式的资源描述如下：
{
"barrierEdges": null,
"barrierNodes": null,
"directionField": null,
"edgeIDField": "SMEDGEID",
"fNodeIDfield": "SMFNODE",
"nodeIDField": "SMNODEID",
"prjCoordSys": {
"coordSystem": {
"datum": {
"name": "D_WGS_1984",
"spheroid": {
"axis": 6378137,
"flatten": 0.00335281066474748,
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
"epsgCode": 4326,
"name": "Longitude / Latitude Coordinate System---GCS_WGS_1984",
"projection": null,
"projectionParam": null,
"type": "PCS_EARTH_LONGITUDE_LATITUDE"
},
"tNodeIDField": "SMTNODE",
"tolerance": 0,
"weightFieldInfos": [{
"ftWeightField": "SMLENGTH",
"name": "SMLENGTH",
"tfWeightField": "SMLENGTH"
}]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 fa3DNetworkDataName 资源是否存在，或者客户端是否有权限访问 fa3DNetworkDataName 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 fa3DNetworkDataName 资源是否支持<format>格式的表述。
## 请参见
- [facilityAnalyst3D](../facilityAnalyst3D.htm)、[sinks](sinks.htm)、[sources](sources.htm)、[traceDownResult](TraceDownResult.htm)、[traceUpResult](traceUpResult.htm)、[upstreamCirticalFaclilities](upstreamCirticalFaclilities.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)