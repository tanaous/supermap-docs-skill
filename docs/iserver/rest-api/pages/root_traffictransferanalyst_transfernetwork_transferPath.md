# transferPath

## URI
<[transferNetwork_uri](transferNetwork.htm#URI)>/path[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[transferNetwork](transferNetwork.htm)
## 介绍
根据交通换乘分析结果，即由[transferSolutions](transferSolutions.htm)得到的乘车方案，获取某一条乘车路线的详细信息。
支持的方法：
- [GET](#GET 请求)：根据交通换乘分析结果，获取一条乘车路线。
- [HEAD](#HEAD 请求)：检查 transferPath 资源是否存在，或权限是否可以访问 transferPath 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
!\[](../../../../../assets/images/root/traffictransferanalyst/img/T_transferPath.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/path.rjson?points=[175,164]&transferLines=[{"lineID":27,"startStopIndex":7,"endStopIndex":9}]
### ](../../root.htm)GET 请求
根据交通换乘分析结果，获取一条乘车路线。
#### 请求参数
执行 GET 请求需要在 URI 中的“?”后传入相关参数，如下表所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| points | int[] [Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html)[] | 两种查询方式： 1. 按照公交站点的起止 ID 进行查询，则 points 参数的类型为 int[]，形如：[起点 ID、终点 ID]，公交站点的 ID 对应服务提供者配置中的 stopIDField； 2. 按照起止点的坐标进行查询，则 points 参数的类型为 Point2D[]，形如：[{"x":44,"y":39},{"x":45,"y":40}]。 |
| transferLines | [TransferLine](../../../../iServerJavadoc/com/supermap/services/rest/commontypes/TransferLine.html)[] | 当前换乘路线，包含路线 ID、起止点等。 |
#### 响应结构
服务端收到请求后会返回当前换乘路线中路段的总数和每个换乘路段的乘车信息，其类型为[TransferGuide](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransferGuide.html)，具体字段如下表所示：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| count | int | 返回公交换乘导引对象中子项的个数，即当前换乘路线中换乘路段的总数。 |
| items | [TransferGuideItem](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransferGuideItem.html)[] | 根据指定的序号返回公交换乘导引中的子项对象，即某换乘路段的详细信息。 |
| totalDistance | double | 返回公交换乘导引的总距离，即当前换乘路线的总距离。 |
| transferCount | int | 返回当前路线中的换乘次数。 |
#### 响应示例
对 transferPath 资源执行 GET 请求如下：
http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/path.rjson?points=[175,164]&transferLines=[{"lineID":27,"startStopIndex":7,"endStopIndex":9}]
则返回的 rjson 格式表述如下：
{
"count": 2,
"items": [
{
"distance": 164.13197759812664,
"endIndex": -1,
"endPosition": {
"x": 4860.528613808599,
"y": -3709.63189169167
},
"endStopName": "金都饭店",
"isWalking": true,
"lineName": "",
"lineType": -1,
"passStopCount": 0,
"route": {
"center": {
"x": 4900.979064952089,
"y": -3638.227497430139
},
"id": 0,
"parts": [2],
"points": [
{
"x": 4941.429516095579,
"y": -3566.823103168608
},
{
"x": 4860.528613808599,
"y": -3709.63189169167
}
],
"style": null,
"type": "LINE"
},
"startIndex": -1,
"startPosition": {
"x": 4941.429516095579,
"y": -3566.823103168608
},
"startStopName": "儿童医院"
},
{
"distance": 501.84750942032434,
"endIndex": 9,
"endPosition": {
"x": 5308.614037099708,
"y": -3935.573639156803
},
"endStopName": "人民广场",
"isWalking": false,
"lineName": "22路",
"lineType": 0,
"passStopCount": 3,
"route": {
"center": {
"x": 5188.294666306223,
"y": -3872.653816371269
},
"id": 0,
"parts": [5],
"points": [
{
"x": 4860.528613808599,
"y": -3709.63189169167
},
{
"x": 5046.587544561529,
"y": -3801.937705219916
},
{
"x": 5188.294666306223,
"y": -3872.653816371269
},
{
"x": 5188.294666306223,
"y": -3872.653816371269
},
{
"x": 5308.614037099708,
"y": -3935.573639156803
}
],
"style": null,
"type": "LINE"
},
"startIndex": 7,
"startPosition": {
"x": 4860.528613808599,
"y": -3709.63189169167
},
"startStopName": "金都饭店"
}
],
"totalDistance": 665.979487018451,
"transferCount": 0
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 transferPath 资源是否存在，或者客户端是否有权限访问 transferPath 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 transferPath 资源是否支持<format>格式的表述。
## 请参见
- [transferNetwork](transferNetwork.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)