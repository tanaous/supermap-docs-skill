# location

## URI
[<networkDataName_uri>](networkDataName.htm#URI)/location[.<format>]
## 支持的方法
[GET](#GET 请求)
[HEAD](#HEAD_请求)
## 父资源
[networkDataName](networkDataName.htm)
## 介绍
location 资源表示选址分区分析功能，设置参数后，对 location 资源执行 GET 请求，可以获取选址分区分析的结果。有关选址分区分析的详细介绍，请参见：[选址分区分析](../../../../iServerJavadoc/com/supermap/services/components/TransportationAnalyst.html#findLocation(com.supermap.services.components.commontypes.analyst.LocationAnalystParameter, java.lang.String))。
支持的方法：
- [GET](#GET 请求)：获取选址分区分析的结果。
- [HEAD](#HEAD_请求)：检查 location 资源是否存在，或权限是否可以访问 location 资源。
支持的表述格式：rjson、json、jsonp、html、xml。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/location.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，RoadNet@Changchun 为待进行分析的网络数据名称。
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/location.rjson?supplyCenters=[{"nodeID":7,"maxWeight":3,"resourceValue":100,"type":"OPTIONALCENTER"},{"nodeID":8,"maxWeight":3,"resourceValue":100,"type":"OPTIONALCENTER"}]&expectedSupplyCenterCount=1
### ](../../root.htm)GET 请求
获取选址分区分析的结果。
**请求参数**
对 location 资源执行 GET 请求，需要在 URI 中包含一些参数，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| supplyCenters | [SupplyCenter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/SupplyCenter.html)[] | 【必选参数】 资源供给中心集合。 |
| isFromCenter | boolean | 是否从资源供给中心开始分配资源。 |
| expectedSupplyCenterCount | int | 【必选参数】 期望用于最终设施选址的资源供给中心数量。 |
| weightName | String | 表示权值信息的字段名称。 |
| turnWeightField | String | 转向权值字段的名称。 |
| returnEdgeFeatures | boolean | 是否返回弧段要素集合。 |
| returnEdgeGeometry | boolean | 是否在返回的弧段要素集合中包含几何对象信息。 |
| returnNodeFeatures | boolean | 是否返回结点要素集合。 |
**响应结构**
执行选址分区分析功能，获取的结果响应结构是 [LocationAnalystResult](../../../../iServerJavadoc/com/supermap/services/components/commontypes/LocationAnalystResult.html) 类型的表述。具体的字段信息请参见在线的 JavaDoc。
**响应示例**
对 RoadNet@Changchun 数据集执行选址分区分析，即对如下 URI 执行 GET 请求：
http://localhost:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/location.rjson?supplyCenters=[{"nodeID":7,"maxWeight":3,"resourceValue":100,"type":"OPTIONALCENTER"},{"nodeID":8,"maxWeight":3,"resourceValue":100,"type":"OPTIONALCENTER"}]&expectedSupplyCenterCount=1
获取的响应内容如下：
{
"demandResults": [{
"actualResourceValue": 0,
"demandID": 7,
"fieldNames": [
"SMID",
"SMX",
"SMY",
"SMLIBTILEID",
"SMUSERID",
"SMNODEID",
"SMGEOMETRYSIZE",
"NODEID",
"ARC_",
"COVERAGE",
"COVERAGE_ID",
"GAS",
"DEMAND"
],
"fieldValues": [
"7",
"6.2698002",
"22.1457",
"1",
"0",
"6",
"16",
"6",
"4",
"6",
"6",
"1",
"1"
],
"geometry": {
"id": 7,
"parts": null,
"points": [{
"x": 6.2698002,
"y": 22.1457
}],
"style": null,
"type": "POINT"
},
"isEdge": false,
"supplyCenter": null
}],
"mapImage": null,
"supplyResults": [{
"actualResourceValue": 7,
"averageWeight": 0,
"demandCount": 1,
"fieldNames": [
"SMID",
"SMX",
"SMY",
"SMLIBTILEID",
"SMUSERID",
"SMNODEID",
"SMGEOMETRYSIZE",
"NODEID",
"ARC_",
"COVERAGE",
"COVERAGE_ID",
"GAS",
"DEMAND"
],
"fieldValues": [
"7",
"6.2698002",
"22.1457",
"1",
"0",
"6",
"16",
"6",
"4",
"6",
"6",
"1",
"1"
],
"geometry": {
"id": 7,
"parts": null,
"points": [{
"x": 6.2698002,
"y": 22.1457
}],
"style": null,
"type": "POINT"
},
"maxWeight": 3,
"nodeID": 7,
"resourceValue": 100,
"totalWeights": 0,
"type": "OPTIONALCENTER"
}]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 location 资源是否存在，或者客户端是否有权限访问 location 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 location 资源是否支持<format>格式的表述。
## 请参见
- [networkDataName](networkDataName.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)