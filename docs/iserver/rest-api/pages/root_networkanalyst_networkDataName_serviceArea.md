# serviceArea

## URI
[<networkDataName_uri>](networkDataName.htm#URI)/servicearea[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[networkDataName](networkDataName.htm)
## 介绍
serviceArea 资源表示服务区分析功能，设置参数后，对 serviceArea 资源执行 GET 请求，可以获取服务区分析的结果。有关服务区分析的详细介绍，请参见：[服务区分析](../../../../iServerJavadoc/com/supermap/services/components/TransportationAnalyst.html#findServiceArea(int[], double[], boolean, boolean, java.lang.String, com.supermap.services.components.commontypes.analyst.TransportationAnalystParameter))。
支持的方法：
- [GET](#GET 请求)：获取服务区分析的结果。
- [HEAD](#HEAD 请求)：检查 serviceArea 资源是否存在，或权限是否可以访问 serviceArea 资源。
支持的表述格式：rjson、json、jsonp、html、xml。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/serviceArea.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，RoadNet@Changchun 为可进行分析的网络数据名称。[2,4]为要进行分析的服务中心点数组，[500,1000]为服务半径。
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/servicearea.rjson?centers=[2,4]&weights=[500,1000]
### ](../../root.htm)GET 请求
获取服务区分析的结果。
**请求参数**
对 serviceArea 资源执行 GET 请求，需要在 URI 中包含一些参数，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| centers | int[]/[Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html)[] | 【必选参数】 服务中心集合。 |
| weights | double [] | 【必选参数】 服务半径集合。该集合的大小跟服务中心个数一致， 标识了在对每个服务中心进行服务区分析时，所用的范围值。 |
| isFromCenter | boolean | 是否从中心点开始分析。 |
| isCenterMutuallyExclusive | boolean | 按照中心点的距离进行判断是否要进行互斥处理。 |
| parameter | [TransportationAnalystParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransportationAnalystParameter.html) | 交通网络分析通用参数。 |
| isReturnComplexArea | boolean | 是否返回详细服务区面。默认为false，返回默认服务区面，不返回详细服务区面。
- 默认服务区面，能覆盖结果路由的凸面做为的结果服务区面。
- 详细服务区面，严格按照生成路由生成的面轮廓结果，分析结果较默认服务区面更准确，但分析时间更长。 |
| serviceBufferRadius | double | 服务区缓冲半径，单位为米，默认值为 100。仅当 isReturnComplexArea 为 true 时此参数生效。 |
**响应结构**
执行服务区分析功能，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| serviceAreaList | List<[ServiceAreaResult](../../../../iServerJavadoc/com/supermap/services/components/commontypes/ServiceAreaResult.html)> | 服务区集合，集合中的第 i 个元素对应第 i 个服务中心的服务区。 |
**响应示例**
对 RoadNet@Changchun 数据集执行服务器分析，即对如下 URI 执行 GET 请求：
http://supermapiserver:8090/iserver/services/transportationAnalyst-Changchun/rest/networkanalyst/RoadNet@Changchun/servicearea.rjson?centers=[2,4]&weights=[500,1000]&isReturnComplexArea=true
获取的响应内容如下：
{"serviceAreaList": [
{
"nodeIDs": [],
"routes": null,
"edgeFeatures": null,
"serviceRegion": {
"center": {
"x": 539.4359256472071,
"y": -346.768701108465
},
"parts": [7],
"style": null,
"prjCoordSys": {
"distanceUnit": "METER",
"projectionParam": null,
"epsgCode": -1000,
"coordUnit": "METER",
"name": "Planar Coordinate System---m",
"projection": null,
"type": "PCS_NON_EARTH",
"coordSystem": null
},
"id": 1,
"type": "REGION",
"partTopo": null,
"points": [
{
"x": 807.8129256274714,
"y": -638.7967667715142
},
{
"x": 718.8573024004489,
"y": -90.67745939303335
},
{
"x": 644.6426001116747,
"y": -56.3684221475969
},
{
"x": 70.1515638200593,
"y": -54.7406354454158
},
{
"x": 51.24697567265779,
"y": -143.5445914099502
},
{
"x": 51.214357235925725,
"y": -187.29277488685227
},
{
"x": 807.8129256274714,
"y": -638.7967667715142
}
]
},
"nodeFeatures": null,
"edgeIDs": []
},
{
"nodeIDs": [],
"routes": null,
"edgeFeatures": null,
"serviceRegion": {
"center": {
"x": 692.3220659470384,
"y": -672.3272409177129
},
"parts": [11],
"style": null,
"prjCoordSys": {
"distanceUnit": "METER",
"projectionParam": null,
"epsgCode": -1000,
"coordUnit": "METER",
"name": "Planar Coordinate System---m",
"projection": null,
"type": "PCS_NON_EARTH",
"coordSystem": null
},
"id": 2,
"type": "REGION",
"partTopo": null,
"points": [
{
"x": 283.27162882499226,
"y": -1289.91384639001
},
{
"x": 969.0134108428755,
"y": -1067.888376620211
},
{
"x": 997.2203541988224,
"y": -1041.5399300224415
},
{
"x": 1376.1193321396074,
"y": -444.03096583216876
},
{
"x": 1294.774446104217,
"y": -58.420491670593066
},
{
"x": 1169.4632181338036,
"y": -57.97813949467999
},
{
"x": 644.6426001116747,
"y": -56.3684221475969
},
{
"x": 70.1515638200593,
"y": -54.7406354454158
},
{
"x": 51.24697567265779,
"y": -143.5445914099502
},
{
"x": 51.214357235925725,
"y": -187.29277488685227
},
{
"x": 283.27162882499226,
"y": -1289.91384639001
}
]
},
"nodeFeatures": null,
"edgeIDs": []
}
]}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 serviceArea 资源是否存在，或者客户端是否有权限访问 serviceArea 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 serviceArea 资源是否支持<format>格式的表述。
## 请参见
- [networkDataName](networkDataName.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)