# transferSolutions

## URI
<[transferNetwork_uri](transferNetwork.htm#URI)>/solutions[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[transferNetwork](transferNetwork.htm)
## 介绍
用于进行交通换乘分析，返回所有的乘车方案，根据方案中的介绍信息可以获取具体的乘车路线。
支持的方法：
- [GET](#GET 请求)：获取所有的乘车方案。
- [HEAD](#HEAD 请求)：检查 transferSolutions 
资源是否存在，或权限是否可以访问 transferSolutions 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
![](../../../../../assets/images/root/traffictransferanalyst/img/transferSolutions.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/solutions.rjson?solutionCount=5&transferTactic=LESS_TIME&transferPreference=NONE&walkingRatio=10&points=[175,164]
### ](../../root.htm)GET 请求
获取所有的乘车方案，相当于进行了一次交通换乘分析。
#### 请求参数
在 URI 中的“？”之后，传入如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| points | int[] 
[Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html)[] | 【必选参数】 
两种查询方式： 
1. 按照公交站点的起止 ID 进行查询，则 points 参数的类型为 int[]，形如：[起点 
ID、终点 ID]，公交站点的 ID 对应服务提供者配置中的 stopIDField； 
2. 按照起止点的坐标进行查询，则 points 参数的类型为 Point2D[]，形如：[{"x":44,"y":39},{"x":45,"y":40}]。 |
| transferTactic | [TransferTactic](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransferTactic.html) | 公交换乘策略类型，包括时间最短、距离最短、最少换乘、少步行四种选择，默认为时间最短。 |
| transferPreference | [TransferPreference](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransferPreference.html) | 乘车偏好，默认无偏好。 |
| solutionCount | int | 乘车方案的数量，默认值为5。 |
| walkingRatio | double | 步行与公交的消耗权重比，默认值为 10。此值越大，则步行因素对于方案选择的影响越大。 
例如现在有两种换乘方案（在仅考虑消耗因素的情况下）： 
方案1：坐车10公里，走路1公里； 
方案2：坐车15公里，走路0.5公里； 
1. 假设权重比为15： 
- 方案1的总消耗为：10 + 1*15 = 25
- 方案2的总消耗为：15 + 0.5*15 = 22.5
此时方案2消耗更低。 
2. 假设权重比为2： 
- 方案1的总消耗为：10+1*2 = 12
- 方案2的总消耗为：15+0.5*2 = 17
此时方案1消耗更低。 |
| priorStops | long[] | 优先站点的 ID 集合。 
如果设置某些线路为优先站点，则进行换乘分析时会优先考虑这些站点，但最优换乘方案是由多个参数共同决定的，因此并不一定会包含这些站点。另外，优先的站点必须是线路上的站点，例如，某站点在位置上位于某条线路上，但在关系表中不存在二者的对应关系，那么设置该站点为优先站点是无效的，换乘分析时可能不会包含通过该站点的线路。 |
| priorLines | long[] | 优先线路的 ID 集合。 
如果设置某些线路为优先线路，则进行换乘分析时会优先考虑这些线路，但最优换乘方案是由多个参数共同决定的，因此并不一定会包含这些线路。 |
| evadeLines | long[] | 避让线路的 ID 集合。 
如果设置某些线路避让线路，则进行换乘分析时不会使用这些线路，例如，设置123路为避让线路，进行公交换乘分析，即使乘坐该线路可以到达目的地，换乘方案中也不会包含乘坐该线路的方案。
注意：如果将某线路同时设置为优先或者避让的线路，系统将以避让线路来处理。 |
| evadeStops | long[] | 避让站点的 ID 集合。 
如果设置某些线路避让站点，则进行换乘分析方案中不会包含这些站点，例如，设置天安门西站为避让站点，那么公交换乘方案中就不会包含该站点，也就是不会在该站点换乘或下车。
注意：如果将某站点同时设置为优先或者避让的站点，系统将以避让站点来处理。另外，避让的站点必须是线路上的站点，例如，某站点在位置上位于某条线路上，但在关系表中不存在二者的对应关系，那么设置该站点为避让站点是无效的，换乘分析的结果中仍有可能包含该站点。 |
| returnGuides | boolean | 是否返回所有换乘路线。默认为 false，此时只返回默认的换乘路线，即 defaultGuide。当设置为 true 
时，将额外返回交通换乘车方案集合对应的换乘路线集合，即 transferGuides， |
| travelTime | Date | 出行的时间。 
如果设置了该参数，在分析时，则会考虑线路的首末班车时间的限制，即在返回的结果中会提示公交的首末班发车时间。 |
#### 响应结构
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| solutionItems | [TransferSolution](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransferSolution.html)[] | 返回的乘车方案集合 |
| defaultGuide | [TransferGuide](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransferGuide.html) | 默认的乘车方案及相关信息 |
| transferGuides | [TransferGuide](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransferGuide.html)[] | 交通换乘方案集合对应的换乘路线集合 |
| suggestWalking | boolean | 是否建议步行 |
#### 响应示例
对 transferSolutions 资源执行如下 GET 请求：
http://localhost:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/solutions.rjson?solutionCount=5&transferTactic=LESS_TIME&transferPreference=NONE&walkingRatio=10&evadeLines=&evadeStops=&priorLines=&priorStops=&points=[175,179]&travelTime=15:30
则返回的 rjson 表述如下：
{
"solutionItems": [
{
"transferCount": 1,
"totalDistance": 8345.531682286684,
"linesItems": [
{"lineItems": [{
"endStopAliasName": "",
"startStopName": "西安桥",
"lineName": "长春轻轨(长春站-长影世纪城)",
"lineAliasName": "",
"lineID": 29,
"endStopName": "伊通河",
"startStopAliasName": "",
"endStopIndex": 19,
"startStopIndex": 3
}]},
{"lineItems": [{
"endStopAliasName": "",
"startStopName": "伊通河",
"lineName": "长春轻轨(长影世纪城-长春站)",
"lineAliasName": "",
"lineID": 30,
"endStopName": "亚泰大街",
"startStopAliasName": "",
"endStopIndex": 6,
"startStopIndex": 5
}]}
]
},
{
"transferCount": 1,
"totalDistance": 8267.55008152271,
"linesItems": [
{"lineItems": [{
"endStopAliasName": "",
"startStopName": "西安桥",
"lineName": "长春轻轨(长影世纪城-长春站)",
"lineAliasName": "",
"lineID": 30,
"endStopName": "芙蓉桥",
"startStopAliasName": "",
"endStopIndex": 22,
"startStopIndex": 21
}]},
{"lineItems": [{
"endStopAliasName": "",
"startStopName": "芙蓉桥",
"lineName": "长春轻轨(长春站-长影世纪城)",
"lineAliasName": "",
"lineID": 29,
"endStopName": "亚泰大街",
"startStopAliasName": "",
"endStopIndex": 18,
"startStopIndex": 2
}]}
]
},
{
"transferCount": 1,
"totalDistance": 7977.531831756825,
"linesItems": [
{"lineItems": [{
"endStopAliasName": "",
"startStopName": "西安桥",
"lineName": "长春轻轨(长春站-长影世纪城)",
"lineAliasName": "",
"lineID": 29,
"endStopName": "卫星广场",
"startStopAliasName": "",
"endStopIndex": 17,
"startStopIndex": 3
}]},
{"lineItems": [{
"endStopAliasName": "",
"startStopName": "卫星路",
"lineName": "30路",
"lineAliasName": "",
"lineID": 6,
"endStopName": "公交保养厂",
"startStopAliasName": "",
"endStopIndex": 4,
"startStopIndex": 2
}]}
]
},
{
"transferCount": 1,
"totalDistance": 7949.781049785786,
"linesItems": [
{"lineItems": [{
"endStopAliasName": "",
"startStopName": "西安桥",
"lineName": "长春轻轨(长春站-长影世纪城)",
"lineAliasName": "",
"lineID": 29,
"endStopName": "卫明街",
"startStopAliasName": "",
"endStopIndex": 15,
"startStopIndex": 3
}]},
{"lineItems": [
{
"endStopAliasName": "",
"startStopName": "林校",
"lineName": "13路",
"lineAliasName": "",
"lineID": 24,
"endStopName": "公交保养厂",
"startStopAliasName": "",
"endStopIndex": 5,
"startStopIndex": 1
},
{
"endStopAliasName": "",
"startStopName": "林校",
"lineName": "15路",
"lineAliasName": "",
"lineID": 16,
"endStopName": "公交保养厂",
"startStopAliasName": "",
"endStopIndex": 5,
"startStopIndex": 1
}
]}
]
},
{
"transferCount": 1,
"totalDistance": 7904.417802142189,
"linesItems": [
{"lineItems": [{
"endStopAliasName": "",
"startStopName": "百菊大厦",
"lineName": "25路",
"lineAliasName": "",
"lineID": 28,
"endStopName": "建设街",
"startStopAliasName": "",
"endStopIndex": 4,
"startStopIndex": 3
}]},
{"lineItems": [{
"endStopAliasName": "",
"startStopName": "西安桥",
"lineName": "长春轻轨(长春站-长影世纪城)",
"lineAliasName": "",
"lineID": 29,
"endStopName": "亚泰大街",
"startStopAliasName": "",
"endStopIndex": 18,
"startStopIndex": 3
}]}
]
}
],
"defaultGuide": {
"count": 5,
"totalDistance": 8345.531682286684,
"transferCount": 1,
"items": [
{
"lastTime": null,
"fare": 0,
"distance": 665.245572530393,
"lineName": "",
"lineAliasName": "",
"startStopName": "儿童医院",
"startPosition": {
"x": 4941.429516095579,
"y": -3566.823103168608
},
"isWalking": true,
"firstTime": null,
"startIndex": -1,
"route": {
"center": {
"x": 4634.639927736186,
"y": -3597.233315084902
},
"parts": [18],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "LINE",
"partTopo": null,
"points": [
{
"x": 4949.509600210931,
"y": -3551.5203072073978
},
{
"x": 4949.407127903948,
"y": -3551.466200437497
},
{
"x": 4924.247599450441,
"y": -3538.4711534470225
},
{
"x": 4879.17335530819,
"y": -3558.5799928023343
},
{
"x": 4874.480066291473,
"y": -3567.7280617670363
},
{
"x": 4780.851947997095,
"y": -3519.7101901170986
},
{
"x": 4762.259875126752,
"y": -3554.6570194919614
},
{
"x": 4734.397963238625,
"y": -3607.028021241049
},
{
"x": 4717.642405202904,
"y": -3638.522821839054
},
{
"x": 4634.639927736186,
"y": -3597.233315084902
},
{
"x": 4571.632384228743,
"y": -3565.811623344229
},
{
"x": 4559.81106799358,
"y": -3559.916364871465
},
{
"x": 4526.238298423384,
"y": -3542.8445686741716
},
{
"x": 4505.614206737966,
"y": -3532.357191716141
},
{
"x": 4484.104545778214,
"y": -3522.1612736864004
},
{
"x": 4471.53788269508,
"y": -3516.2044774847886
},
{
"x": 4424.076591556139,
"y": -3493.7070780630224
},
{
"x": 4415.048753602755,
"y": -3489.3779576409333
}
]
},
"endPosition": {
"x": 4418.211016555285,
"y": -3482.7834546662034
},
"endIndex": -1,
"endStopAliasName": "",
"lineType": -1,
"passStopCount": 0,
"endStopName": "西安桥",
"startStopAliasName": "",
"time": 665.245572530393
},
{
"lastTime": null,
"fare": 0,
"distance": 6629.214127087673,
"lineName": "长春轻轨(长春站-长影世纪城)",
"lineAliasName": "",
"startStopName": "西安桥",
"startPosition": {
"x": 4418.211016555285,
"y": -3482.7834546662034
},
"isWalking": false,
"firstTime": null,
"startIndex": 3,
"route": {
"center": {
"x": 2899.0347936021903,
"y": -5697.124076510769
},
"parts": [23],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "LINE",
"partTopo": null,
"points": [
{
"x": 4418.211016555285,
"y": -3482.7834546662034
},
{
"x": 4342.783383832161,
"y": -3606.63292666546
},
{
"x": 4287.147747788968,
"y": -3717.904198751845
},
{
"x": 4280.3858098153905,
"y": -3747.7422439351376
},
{
"x": 4142.9138398983805,
"y": -4005.3320704093085
},
{
"x": 3941.3218017881604,
"y": -4382.389670274902
},
{
"x": 3710.3959376990533,
"y": -4797.6119499336355
},
{
"x": 3482.60493037014,
"y": -5055.953208356819
},
{
"x": 3417.0576779101875,
"y": -5135.41251521294
},
{
"x": 3191.33284679606,
"y": -5359.056933137076
},
{
"x": 2914.7943838547853,
"y": -5637.680680031864
},
{
"x": 2899.0347936021903,
"y": -5697.124076510769
},
{
"x": 2878.6103784395914,
"y": -5785.200086724578
},
{
"x": 3070.663945643314,
"y": -6027.354584503185
},
{
"x": 3446.420924954946,
"y": -6609.08205617823
},
{
"x": 3512.550810427892,
"y": -6646.919381625014
},
{
"x": 3975.2640810231683,
"y": -6687.979180957802
},
{
"x": 4167.880965275359,
"y": -6705.170950944788
},
{
"x": 4401.927449149453,
"y": -6698.9297113748125
},
{
"x": 4955.015612265349,
"y": -6687.979180957802
},
{
"x": 5258.404580746592,
"y": -6687.979180957802
},
{
"x": 5855.096062358836,
"y": -6687.979180957802
},
{
"x": 6256.6158080272835,
"y": -6673.664061145143
}
]
},
"endPosition": {
"x": 6256.6158080272835,
"y": -6673.664061145143
},
"endIndex": 19,
"endStopAliasName": "",
"lineType": 1,
"passStopCount": 17,
"endStopName": "伊通河",
"startStopAliasName": "",
"time": 842.9214127087673
},
{
"lastTime": null,
"fare": 14.176443581771853,
"distance": 14.176443581771853,
"lineName": "",
"lineAliasName": "",
"startStopName": "伊通河",
"startPosition": {
"x": 6256.6158080272835,
"y": -6673.664061145143
},
"isWalking": true,
"firstTime": null,
"startIndex": -1,
"route": {
"center": {
"x": 6256.607836006582,
"y": -6666.575843837267
},
"parts": [2],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "LINE",
"partTopo": null,
"points": [
{
"x": 6256.6158080272835,
"y": -6673.664061145143
},
{
"x": 6256.59986398588,
"y": -6659.487626529391
}
]
},
"endPosition": {
"x": 6256.59986398588,
"y": -6659.487626529391
},
"endIndex": -1,
"endStopAliasName": "",
"lineType": -1,
"passStopCount": 0,
"endStopName": "伊通河",
"startStopAliasName": "",
"time": 0.021236493392505145
},
{
"lastTime": null,
"fare": 0.021236493392505145,
"distance": 404.7651902448352,
"lineName": "长春轻轨(长影世纪城-长春站)",
"lineAliasName": "",
"startStopName": "伊通河",
"startPosition": {
"x": 6256.59986398588,
"y": -6659.487626529391
},
"isWalking": false,
"firstTime": null,
"startIndex": 5,
"route": {
"center": {
"x": 6054.217268863462,
"y": -6659.487626529391
},
"parts": [2],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "LINE",
"partTopo": null,
"points": [
{
"x": 6256.59986398588,
"y": -6659.487626529391
},
{
"x": 5851.834673741045,
"y": -6659.487626529391
}
]
},
"endPosition": {
"x": 5851.834673741045,
"y": -6659.487626529391
},
"endIndex": 6,
"endStopAliasName": "",
"lineType": 1,
"passStopCount": 2,
"endStopName": "亚泰大街",
"startStopAliasName": "",
"time": 220.47651902448354
},
{
"lastTime": null,
"fare": 632.1303488420109,
"distance": 632.1303488420109,
"lineName": "",
"lineAliasName": "",
"startStopName": "亚泰大街",
"startPosition": {
"x": 5851.834673741045,
"y": -6659.487626529391
},
"isWalking": true,
"firstTime": null,
"startIndex": 5,
"route": {
"center": {
"x": 5772.229769069949,
"y": -6202.683141014275
},
"parts": [11],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "LINE",
"partTopo": null,
"points": [
{
"x": 5858.353037470891,
"y": -6658.192431320648
},
{
"x": 5832.722632688556,
"y": -6529.201604465568
},
{
"x": 5780.97451773789,
"y": -6252.208058256915
},
{
"x": 5780.268590850036,
"y": -6248.42942415175
},
{
"x": 5779.908071087006,
"y": -6246.377825098129
},
{
"x": 5772.229769069949,
"y": -6202.683141014275
},
{
"x": 5764.418824293608,
"y": -6158.233630739677
},
{
"x": 5753.104652254233,
"y": -6093.848409653991
},
{
"x": 5750.270754425143,
"y": -6077.721631872536
},
{
"x": 5746.455151549389,
"y": -6061.388173948254
},
{
"x": 5771.346297787511,
"y": -6061.326933614708
}
]
},
"endPosition": {
"x": 5771.370572784777,
"y": -6071.19351127508
},
"endIndex": 6,
"endStopAliasName": "",
"lineType": -1,
"passStopCount": 2,
"endStopName": "净水厂",
"startStopAliasName": "",
"time": 220.47651902448354
}
]
},
"suggestWalking": false
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 transferSolutions 资源是否存在，或者客户端是否有权限访问 
transferSolutions 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 transferSolutions 
资源是否支持<format>格式的表述。
## 请参见
- [transferNetwork](transferNetwork.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 
服务资源层次结构](../../../resource_hierarchy.htm)