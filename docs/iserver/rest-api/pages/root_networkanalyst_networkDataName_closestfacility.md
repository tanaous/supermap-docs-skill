# closestFacility

## URI
[<networkDataName_uri>](networkDataName.htm#URI)/closestfacility[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[networkDataName](networkDataName.htm)
## 介绍
closestFacility 资源表示最近设施查找分析功能，设置参数后，对 closestFacility 资源执行 GET 请求，可以获取一个最近设施查找分析的结果。有关最近设施查找分析的详细介绍，请参见：[最近设施查找分析](../../../../iServerJavadoc/com/supermap/services/components/TransportationAnalyst.html#findClosestFacility(int[], int, int, boolean, double, java.lang.String, com.supermap.services.components.commontypes.analyst.TransportationAnalystParameter))。
支持的方法：
- [GET](#GET 请求)：获取最近设施查找分析的结果。
- [HEAD](#HEAD 请求)：检查 closestFacility 资源是否存在，或权限是否可以访问 closestFacility 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/closestfacility.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名， RoadNet@Changchun 为可进行最近设施查找分析的网络数据名称。3为事件点所在位置，此处使用的是结点 ID 号，即事件点的位置在结点3所在的位置。[1,6,21] 为设施点的位置，此处使用的是结点 ID 数组，即设施点的位置在结点1，6，21所在的位置。
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/closestfacility.rjson?event=3&facilities=[1,6,21]
### ](../../root.htm)GET 请求
获取最近设施查找分析的结果。
**请求参数**
对 closestFacility 资源执行 GET 请求，需要在 URI 中包含一些参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| event | int/[Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 【必选参数】 事件点。可以用事件点的 ID 或坐标来表示，但必须与设施点保持一致，即二者都用 ID 表示或者都用坐标表示。 |
| facilities | int[]/[Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html)[] | 【必选参数】 设施点集合。可以用设施点的 ID 或坐标来表示，但必须与事件点保持一致，即二者都用 ID 表示或者都用坐标表示。 |
| expectFacilityCount | int | 要查找的设施点数量。 |
| fromEvent | boolean | 是否从事件点到设施点进行查找。 |
| maxWeight | double | 权值的最大限值。单位同 parameter（交通网络分析通用参数）中设置的权值字段一致。 |
| parameter | [TransportationAnalystParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransportationAnalystParameter.html) | 交通网络分析通用参数。 |
**响应结构**
执行最近设施查找分析功能，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| facilityPathList | List<[ClosestFacilityPath](../../../../iServerJavadoc/com/supermap/services/components/commontypes/ClosestFacilityPath.html)> | 事件点与该设施点之间的路径的集合。 |
**响应示例**
对 RoadNet@Network 数据集执行最近设施查找分析，即对如下 URI 执行 GET 请求：
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/closestfacility.rjson?event=3&facilities=[1,6,21]
则返回的分析结果表述如下：
{"facilityPathList": [{
"edgeFeatures": null,
"edgeIDs": [
2027,
8366,
8367
],
"facility": 1,
"facilityIndex": 0,
"nodeFeatures": null,
"nodeIDs": [
1,
40,
2,
3
],
"pathGuideItems": null,
"route": {
"center": null,
"id": 0,
"length": 179.0081821588793,
"line": {
"center": {
"x": 119.61003975513272,
"y": -122.62783944590828
},
"id": 0,
"parts": [6],
"points": [
{
"x": 70.1515638200593,
"y": -54.7406354454158
},
{
"x": 76.18348947781757,
"y": -134.92485855116797
},
{
"x": 111.01197574440013,
"y": -124.66628623264731
},
{
"x": 119.61003975513272,
"y": -122.62783944590828
},
{
"x": 161.09530379013117,
"y": -112.79242730387216
},
{
"x": 171.90355999452908,
"y": -113.24911418574811
}
],
"style": null,
"type": "LINE"
},
"maxM": 178,
"minM": 0,
"parts": [6],
"points": [
{
"measure": 0,
"x": 70.1515638200593,
"y": -54.7406354454158
},
{
"measure": 79.95790423152616,
"x": 76.18348947781757,
"y": -134.92485855116797
},
{
"measure": 116.06129129375282,
"x": 111.01197574440013,
"y": -124.66628623264731
},
{
"measure": 124.8479245757973,
"x": 119.61003975513272,
"y": -122.62783944590828
},
{
"measure": 167.24302668591315,
"x": 161.09530379013117,
"y": -112.79242730387216
},
{
"measure": 178,
"x": 171.90355999452908,
"y": -113.24911418574811
}
],
"region": {
"center": {
"x": 106.52160684662661,
"y": -94.83274699829188
},
"id": 0,
"parts": [7],
"points": [
{
"x": 70.1515638200593,
"y": -54.7406354454158
},
{
"x": 76.18348947781757,
"y": -134.92485855116797
},
{
"x": 111.01197574440013,
"y": -124.66628623264731
},
{
"x": 119.61003975513272,
"y": -122.62783944590828
},
{
"x": 161.09530379013117,
"y": -112.79242730387216
},
{
"x": 171.90355999452908,
"y": -113.24911418574811
},
{
"x": 70.1515638200593,
"y": -54.7406354454158
}
],
"style": null,
"type": "REGION"
},
"style": null,
"type": "LINEM"
},
"stopWeights": [178],
"weight": 178
}]}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 closestFacility 资源是否存在，或者客户端是否有权限访问 closestFacility 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 closestFacility 资源是否支持<format>格式的表述。
## 请参见
- [networkDataName](networkDataName.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)