# path

##  URI
[<networkDataName_uri>](networkDataName.htm#URI)/path[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[networkDataName](networkDataName.htm)
## 介绍
path 资源表示最佳路径分析功能，设置参数后，对 path 资源执行 GET 请求，可以获取一个最佳路径分析的结果。有关最佳路径分析的详细介绍，请参见：[最佳路径分析](../../../../iServerJavadoc/com/supermap/services/components/TransportationAnalyst.html#findPath(int[], boolean, java.lang.String, com.supermap.services.components.commontypes.analyst.TransportationAnalystParameter))。
支持的方法：
- [GET](#GET 请求)：获取最佳路径分析的结果。
- [HEAD](#HEAD 请求)：检查 path 资源是否存在，或权限是否可以访问 path 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/path.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，RoadNet@Changchun 为可进行最佳路径分析的网络数据名称。[2,8]为要进行路径分析的网络结点数组，即求的是结点2到结点8之间的最佳路径。
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/path.rjson?nodes=[2,8]
### ](../../root.htm)GET 请求
获取最佳路径分析的结果。
**请求参数**
对 path 资源执行 GET 请求，需要在 URI 中包含一些参数，数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| nodes | int[]/[Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html)[] | 【必选参数】 进行最佳路径分析的点集合。
注意：只有当传入结点坐标时才会启用 SSC 分析模式；若传入的为结点 ID 数组，则仍然使用普通分析模式 |
| hasLeastEdgeCount | boolean | 是否按弧段数最少的模式查询。 |
| parameter | [TransportationAnalystParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransportationAnalystParameter.html) | 交通网络分析通用参数，有以下参数可供设置：
- barrierEdgeIDs：障碍弧段 ID 列表。
- barrierNodeIDs：障碍结点 ID 的集合。
- barrierPoints：障碍坐标数组。您可以用坐标的形式设置障碍。
- resultSetting：分析结果内应包含内容的设置，包括：
1）returnEdgeFeatures：是否在分析结果中包含弧段要素集合。 2）returnEdgeGeometry：是否在分析结果中返回的弧段要素集合中包含几何对象信息。 3）returnEdgeIDs：返回分析结果中是否包含经过弧段 ID 的集合。 4）returnNodeFeatures：是否在分析结果中包含结点要素集合。 5）returnNodeGeometry：是否在分析结果中返回的结点要素集合中包含几何对象信息。 6）returnNodeIDs：返回分析结果中是否包含经过的结点 ID 集合。 7）returnPathGuides：返回分析结果中是否包含行驶导引集合。 8）returnRoutes：返回分析结果中是否包含路径对象的集合，即 Route 集合。 请注意：1）设置以上参数后不影响结分析结果，但设置后将导致分析耗时增加。2）当启用 SSC 分析模型并以结点坐标作为输入值时，以上参数除路径对象外均不会在结果中返回。
- turnWeightField：转向权值字段的名称。
- uCross：U型道路禁行限制字段。
- weightFieldName：权值字段信息的名称，标识了进行网络分析时所使用的权值字段。默认为环境中设置的第一个字段。 |
**响应结构**
执行最佳路径分析功能，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| pathList | List<[Path](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Path.html)> | 最佳路径分析结果集合（目前集合中只有一个元素）。 |
**响应示例**
对 RoadNet@Changchun 数据集执行最佳路径分析并返回路径信息（不包含行驶导引），即对如下 URI 执行 GET 请求：
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/path.rjson?nodes=[2,8]&parameter={"resultSetting":{"returnRoutes":true,"returnPathGuides":false}}
获取的响应内容如下：
{"pathList": [{
"pathGuideItems": null,
"nodeIDs": [],
"route": {
"line": {
"center": {
"x": 367.8222323193189,
"y": -87.52241984006864
},
"parts": [17],
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
"id": 0,
"type": "LINE",
"partTopo": null,
"points": [
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
"x": 183.92964788392953,
"y": -117.96821196513312
},
{
"x": 199.15254394646175,
"y": -120.86056221701423
},
{
"x": 231.88177048090608,
"y": -119.9471884532623
},
{
"x": 299.3192000379238,
"y": -106.55103991823394
},
{
"x": 363.1031345399339,
"y": -88.43579360382057
},
{
"x": 367.8222323193189,
"y": -87.52241984006864
},
{
"x": 376.9559699568382,
"y": -86.6090460763167
},
{
"x": 401.61706157814046,
"y": -83.86892478506093
},
{
"x": 413.03423362503963,
"y": -82.3466351788077
},
{
"x": 425.3647794356907,
"y": -78.54091116317464
},
{
"x": 434.3462881125848,
"y": -76.2574767537948
},
{
"x": 458.0940059701351,
"y": -75.19187402941755
},
{
"x": 510.15631050399526,
"y": -73.51735546253899
},
{
"x": 525.7717933539819,
"y": -72.03388459179025
}
]
},
"center": null,
"length": 413.7061664752896,
"minM": 0,
"type": "LINEM",
"points": [
{
"measure": 0,
"x": 119.61003975513272,
"y": -122.62783944590828
},
{
"measure": 42.562450381061815,
"x": 161.09530379013117,
"y": -112.79242730387216
},
{
"measure": 53.36188522478594,
"x": 171.90355999452908,
"y": -113.24911418574811
},
{
"measure": 66.25868323695329,
"x": 183.92964788392953,
"y": -117.96821196513312
},
{
"measure": 81.72746727904337,
"x": 199.15254394646175,
"y": -120.86056221701423
},
{
"measure": 114.41354791290019,
"x": 231.88177048090608,
"y": -119.9471884532623
},
{
"measure": 183.05128738904173,
"x": 299.3192000379238,
"y": -106.55103991823394
},
{
"measure": 249.2446108130785,
"x": 363.1031345399339,
"y": -88.43579360382057
},
{
"measure": 254.0430823016606,
"x": 367.8222323193189,
"y": -87.52241984006864
},
{
"measure": 263.20670663483605,
"x": 376.9559699568382,
"y": -86.6090460763167
},
{
"measure": 287.97720650760675,
"x": 401.61706157814046,
"y": -83.86892478506093
},
{
"measure": 299.4757566926139,
"x": 413.03423362503963,
"y": -82.3466351788077
},
{
"measure": 312.35822094318405,
"x": 425.3647794356907,
"y": -78.54091116317464
},
{
"measure": 321.6096334727417,
"x": 434.3462881125848,
"y": -76.2574767537948
},
{
"measure": 345.3406706379762,
"x": 458.0940059701351,
"y": -75.19187402941755
},
{
"measure": 397.34098506358634,
"x": 510.15631050399526,
"y": -73.51735546253899
},
{
"measure": 413,
"x": 525.7717933539819,
"y": -72.03388459179025
}
],
"parts": [17],
"maxM": 413,
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
"id": 0,
"region": {
"center": {
"x": 327.23722022835057,
"y": -97.33086201884927
},
"parts": [18],
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
"id": 0,
"type": "REGION",
"partTopo": [1],
"points": [
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
"x": 183.92964788392953,
"y": -117.96821196513312
},
{
"x": 199.15254394646175,
"y": -120.86056221701423
},
{
"x": 231.88177048090608,
"y": -119.9471884532623
},
{
"x": 299.3192000379238,
"y": -106.55103991823394
},
{
"x": 363.1031345399339,
"y": -88.43579360382057
},
{
"x": 367.8222323193189,
"y": -87.52241984006864
},
{
"x": 376.9559699568382,
"y": -86.6090460763167
},
{
"x": 401.61706157814046,
"y": -83.86892478506093
},
{
"x": 413.03423362503963,
"y": -82.3466351788077
},
{
"x": 425.3647794356907,
"y": -78.54091116317464
},
{
"x": 434.3462881125848,
"y": -76.2574767537948
},
{
"x": 458.0940059701351,
"y": -75.19187402941755
},
{
"x": 510.15631050399526,
"y": -73.51735546253899
},
{
"x": 525.7717933539819,
"y": -72.03388459179025
},
{
"x": 119.61003975513272,
"y": -122.62783944590828
}
]
},
"partTopo": null
},
"edgeFeatures": null,
"weight": 413,
"nodeFeatures": null,
"stopWeights": [413],
"edgeIDs": []
}]}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 path 资源是否存在，或者客户端是否有权限访问 path 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 path 资源是否支持<format>格式的表述。
## 请参见
- [networkDataName](networkDataName.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)