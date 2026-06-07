# feature

## URI
- [<features_uri>](../features.htm#URI)/{featureID}[.<format>]
- [<data_uri>](../../../../../../data.htm#URI)/feature/{datasourceIndex}-{datasetIndex}-{featureIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[DELETE](#DELETE 请求)、[HEAD](#HEAD 请求)
## 父资源
[features](../features.htm)
## 子资源
[attachments](attachment.htm)、[metadata](metadata.htm)
## 介绍
feature 资源表示一个要素。通过 feature 资源可以完成对要素信息的获取，修改和删除（当要素类型为点、线、面、文本、CAD数据集或纯属性表数据集时才能修改和删除）。
feature 资源可以通过要素的 ID 号（{featureId}） 来获取（URI1），也可以通过要素的索引号来获取（URI2）。
注意：URI2 是一种简化的访问 feature 的 URI，直接在最后把数据源、数据集、要素的索引用“-”连接，快速地确定一个要素。在示意 URI 中，{datasourceIndex}表示数据源索引，{datasetIndex}表示数据集索引，{featureIndex}表示要素索引。例如：http://supermapiserver:8090/iserver/services/data-world/rest/data/feature/0-2-7，就表示索引为0的数据源中，索引为2的数据集下，索引为7的要素，该 URI 同样有 rjson、json、html、xml、kml 五种表述格式。
支持的方法：
- [GET](#GET 请求)：获取一个要素的信息。
- [PUT](#PUT 请求)：修改一个要素（当要素类型为点、线、面、文本、CAD数据集或纯属性表数据集时）。
- [DELETE](#DELETE 请求)：删除一个要素（当要素类型为点、线、面、文本、CAD数据集或纯属性表数据集时）。
- [HEAD](#HEAD 请求)：检查 feature 资源是否存在，或权限是否可以访问 feature 资源。
支持的表述格式：RJSON、JSON、HTML、XML、KML、GeoRSS、GeoJSON。
注：当要素类型为点、线、面时，GeoJSON表述可用。
## 资源层次
!\[](../../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/features/D_feature.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features/featureid.rjson
### ](../../../../../../../root.htm)GET 请求
获取一个要素的信息，包括属性字段名称列表、属性字段值列表，以及要素对应的几何对象。
#### 请求参数
对 feature 资源执行 GET 请求，获取要素的信息，可以在 URI 中包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| hasGeometry | boolean | 是否获取几何对象的信息，true 表示获取在表述中包含几何对象的信息，false 表示不包含几何对象的信息。默认为 true。 |
当不传参数时，默认地，对 feature 资源执行 GET 请求，得到的表述中会包含几何对象的信息。
#### 响应结构
对 feature 资源执行 GET 请求，返回的资源表述的结构如下（资源表述在响应消息的实体主体里）：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| ID | int | 要素的 ID。 |
| fieldNames | String[] | 要素的属性字段名集合。 |
| fieldValues | String[] | 要素的属性字段值集合。 |
| stringID | String | 要素ID 。 |
| geometry | Geometry | 要素对应的几何对象。 具体包括[几何对象的类型](../../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/GeometryType.html)、几何对象的样式信息、组成要素的几何点的坐标等。 |
注：视频数据集中的 feature 资源执行 GET 请求，返回的资源表述的结构如下（资源表述在响应消息的实体主体里）：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| ID | int | 要素的 ID。 |
| fieldNames | String[] | 要素的属性字段名集合。 |
| fieldValues | String[] | 要素的属性字段值集合。 |
| stringID | String | 要素ID 。 |
| address | Sting | 视频流的获取地址。 |
| videoParameters | videoParameters | 相机参数。 |
| name | Sting | 视频名称。 |
| startTime | Sting | 视频开始时间。 |
| cameraLocation | cameraLocation | 相机外参。包括拍摄视频的摄像头的x、y、z坐标及侧偏角、俯仰角和偏航角等值。 |
| endTime | String | 视频结束时间。 |
| geometry | Geometry | 当前视频参数对应的的视频视角空间范围。 具体包括几何对象类型（只支持矩形 REGION）、几何对象的样式信息、组成要素的几何点的坐标、中心点坐标等。 |
#### 示例1
对示例 feature 资源执行 GET 请求，以 URI1 为例，不返回几何对象的信息，构建 URI 如下：
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features/247.rjson?hasGeometry=false
则返回 ID 为247的要素的资源表述如下：
{
"ID": 247,
"fieldNames": [
"SMID",
"SMSDRIW",
"SMSDRIN",
"SMSDRIE",
"SMSDRIS",
"SMUSERID",
"SMAREA",
"SMPERIMETER",
"SMGEOMETRYSIZE",
"SQKM",
"SQMI",
"COLOR_MAP",
"CAPITAL",
"COUNTRY",
"POP_1994",
"CONTINENT"
],
"fieldValues": [
"247",
"73.62005",
"53.55374",
"134.76846",
"3.8537261",
"0",
"960.4537031350538",
"6.685997649733246E7",
"147412",
"9367281.0",
"3616707.25",
"1",
"北京",
"中华人民共和国",
"1.128139689E9",
"亚洲"
],
"geometry": null
}
#### 示例2：EPS数据集类型
当要素所在数据集的类型为EPS，对 feature 资源执行 GET 请求后，将返回组成几何对象的点的属性信息。以 URI1 为例，构建 URI 如下：
http://supermapiserver:8090/iserver/services/data-EPS/rest/data/datasources/EPS_all/datasets/PointEPS/features/1.rjson
则返回 ID 为1的要素的资源表述如下：
{
"ID": 1,
"fieldNames": [
"SMID",
"SMSDRIW",
"SMSDRIN",
"SMSDRIE",
"SMSDRIS",
"SMUSERID",
"SMGEOMETRYSIZE",
"SMGEOPOSITION"
],
"fieldValues": [
"1",
"525.26154",
"460.002",
"525.26154",
"460.002",
"0",
"0",
"0"
],
"geometry": {
"center": null,
"id": 1,
"parts": [1],
"points": [{
"name": "",
"type": "None",
"x": 525.261530541407,
"y": 460.00202477444,
"z": 0
}],
"prjCoordSys": null,
"style": null,
"type": "POINTEPS"
}
}
#### 示例3：VIDEO数据集类型
当要素所在数据集的类型为VIDEO，对 feature 资源执行 GET 请求后，将返回视频要素的信息。以 URI1 为例，构建 URI 如下：
http://localhost:8090/iserver/services/data-uavRegistration/rest/data/feature/0-3-0.rjson?hasGeometry=true
则返回 ID 为1的要素的资源表述如下:
{
"stringID": null,
"address": "http://172.16.120.153:8099/iserver/services/uavRegistration/restjsr/hls/stream/uavRegistration-DJI_09304/1/index.m3u8",
"videoParameters": {
"auxiliaryCalibrationParameter": {
"tiltGrowsUp": true,
"iterationCount": 1000,
"samplesCount": 200,
"supportHeight": false,
"panGrowsClockwise": true,
"cameraIteratorParameters": [
{
"minValue": "NaN",
"cameraParameterType": "X",
"maxValue": "NaN",
"value": "NaN"
},
{
"minValue": "NaN",
"cameraParameterType": "Y",
"maxValue": "NaN",
"value": "NaN"
},
{
"minValue": "NaN",
"cameraParameterType": "Z",
"maxValue": "NaN",
"value": "NaN"
},
{
"minValue": "NaN",
"cameraParameterType": "FOV_X",
"maxValue": "NaN",
"value": "NaN"
},
{
"minValue": "NaN",
"cameraParameterType": "FOV_Y",
"maxValue": "NaN",
"value": "NaN"
}
]
},
"videoParameterList": [
{
"videoWidth": 1920,
"calibrationModel": {
"isRansac": true,
"centerY": 540,
"centerX": 960,
"calibrationModelType": 0,
"calibrationPoints": [],
"fovX": 76.2475,
"fovY": 47.6365,
"isIntrinsic": true,
"isExtrinsic": true,
"cameraLocation": {
"cameraRoll": 0,
"cameraYaw": -93,
"cameraY": 3567101.3214154504,
"cameraZ": 108.99648,
"cameraX": 1.1584819042904502E7,
"cameraPitch": -89.9
}
},
"extent": {
"center": {
"x": 1.1584818819349185E7,
"y": 3567101.2437075903
},
"parts": [5],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "REGION",
"partTopo": [1],
"points": [
{
"x": 1.1584871338027894E7,
"y": 3567018.4733718876
},
{
"x": 1.158486239157106E7,
"y": 3567189.181937648
},
{
"x": 1.1584766286896346E7,
"y": 3567184.2772898683
},
{
"x": 1.158477524714935E7,
"y": 3567013.3054775326
},
{
"x": 1.1584871338027894E7,
"y": 3567018.4733718876
}
]
},
"clipRegion": {
"center": {
"x": 960,
"y": 540
},
"parts": [5],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "REGION",
"partTopo": [1],
"points": [
{
"x": 0,
"y": 0
},
{
"x": 1920,
"y": 0
},
{
"x": 1920,
"y": 1080
},
{
"x": 0,
"y": 1080
},
{
"x": 0,
"y": 0
}
]
},
"zoom": 1,
"time": 0,
"validBounds": {
"OUT_TOP": 2,
"OUT_RIGHT": 4,
"size": {
"width": 1920,
"height": 1080
},
"x": 0,
"width": 1920,
"y": 0,
"OUT_BOTTOM": 8,
"location": {
"x": 0,
"y": 0
},
"OUT_LEFT": 1,
"height": 1080
},
"tilt": 0,
"pan": 0,
"videoHeight": 1080
},
......
{
"videoWidth": 1920,
"calibrationModel": {
"isRansac": true,
"centerY": 540,
"centerX": 960,
"calibrationModelType": 0,
"calibrationPoints": [],
"fovX": 76.2475,
"fovY": 47.6365,
"isIntrinsic": true,
"isExtrinsic": true,
"cameraLocation": {
"cameraRoll": 0,
"cameraYaw": -93,
"cameraY": 3566725.0220802366,
"cameraZ": 108.90504,
"cameraX": 1.1584843009990871E7,
"cameraPitch": -90
}
},
"extent": {    //当前视频参数对应的空间范围对象
"center": {
"x": 1.1584843009989087E7,
"y": 3566725.022080237
},
"parts": [5],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "REGION",
"partTopo": [1],
"points": [
{
"x": 1.1584895491307365E7,
"y": 3566642.1898413673
},
{
"x": 1.1584886545482585E7,
"y": 3566812.8863467993
},
{
"x": 1.1584790528674377E7,
"y": 3566807.8543191077
},
{
"x": 1.1584799474499157E7,
"y": 3566637.157813675
},
{
"x": 1.1584895491307365E7,
"y": 3566642.1898413673
}
]
},
"clipRegion": {
"center": {
"x": 960,
"y": 540
},
"parts": [5],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "REGION",
"partTopo": [1],
"points": [
{
"x": 0,
"y": 0
},
{
"x": 1920,
"y": 0
},
{
"x": 1920,
"y": 1080
},
{
"x": 0,
"y": 1080
},
{
"x": 0,
"y": 0
}
]
},
"zoom": 1,
"time": 94.6,    //距离视频开始的时间，即视频播放时长。
"validBounds": {
"OUT_TOP": 2,
"OUT_RIGHT": 4,
"size": {
"width": 1920,
"height": 1080
},
"x": 0,
"width": 1920,
"y": 0,
"OUT_BOTTOM": 8,
"location": {
"x": 0,
"y": 0
},
"OUT_LEFT": 1,
"height": 1080
},
"tilt": 0,
"pan": 0,
"videoHeight": 1080
},
{
"videoWidth": 1920,
"calibrationModel": {
"isRansac": true,
"centerY": 540,
"centerX": 960,
"calibrationModelType": 0,
"calibrationPoints": [],
"fovX": 76.2475,
"fovY": 47.6365,
"isIntrinsic": true,
"isExtrinsic": true,
"cameraLocation": {
"cameraRoll": 0,
"cameraYaw": -93,
"cameraY": 3566725.053084298,
"cameraZ": 108.90504,
"cameraX": 1.1584843009990871E7,
"cameraPitch": -90
}
},
"extent": {//当前视频参数对应的空间范围对象
"center": {
"x": 1.1584843010011971E7,
"y": 3566725.053084298
},
"parts": [5],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "REGION",
"partTopo": [1],
"points": [
{
"x": 1.1584895491307367E7,
"y": 3566642.2208454283
},
{
"x": 1.1584886545482585E7,
"y": 3566812.9173508603
},
{
"x": 1.1584790528674377E7,
"y": 3566807.8853231687
},
{
"x": 1.1584799474499159E7,
"y": 3566637.1888177358
},
{
"x": 1.1584895491307367E7,
"y": 3566642.2208454283
}
]
},
"clipRegion": {
"center": {
"x": 960,
"y": 540
},
"parts": [5],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "REGION",
"partTopo": [1],
"points": [
{
"x": 0,
"y": 0
},
{
"x": 1920,
"y": 0
},
{
"x": 1920,
"y": 1080
},
{
"x": 0,
"y": 1080
},
{
"x": 0,
"y": 0
}
]
},
"zoom": 1,
"time": 94.7,//距离视频开始的时间，即视频播放时长。
"validBounds": {
"OUT_TOP": 2,
"OUT_RIGHT": 4,
"size": {
"width": 1920,
"height": 1080
},
"x": 0,
"width": 1920,
"y": 0,
"OUT_BOTTOM": 8,
"location": {
"x": 0,
"y": 0
},
"OUT_LEFT": 1,
"height": 1080
},
"tilt": 0,
"pan": 0,
"videoHeight": 1080
}
],
"parameterInterpolation": true
},
"fieldNames": [
"SMID",
"SMUSERID"
],
"name": "DJI_0930.MP4",
"startTime": null,
"geometry": {
"center": {
"x": 1.1584818819349185E7,
"y": 3567101.2437075903
},
"parts": [5],
"style": null,
"prjCoordSys": null,
"id": 1,
"type": "REGION",
"partTopo": [1],
"points": [
{
"x": 1.1584871338027894E7,
"y": 3567018.4733718876
},
{
"x": 1.158486239157106E7,
"y": 3567189.181937648
},
{
"x": 1.1584766286896346E7,
"y": 3567184.2772898683
},
{
"x": 1.158477524714935E7,
"y": 3567013.3054775326
},
{
"x": 1.1584871338027894E7,
"y": 3567018.4733718876
}
]
},
"endTime": null,
"fieldValues": [
"1",
"0"
],
"ID": 1,
"cameraLocation": {
"cameraRoll": 0,
"cameraYaw": -93,
"cameraY": 3567101.3214154504,
"cameraZ": 108.99648,
"cameraX": 1.1584819042904502E7,
"cameraPitch": -89.9
}
### 
#### 示例4：含 M 值数据集类型
当要素含 M 值时，对 feature 资源执行 GET 请求后，将返回含 M 值的要素几何及属性信息。以 URI1 为例，构建 URI 如下：
http://supermapiserver:8090/iserver/services/data-testM/rest/data/datasources/Mtest/datasets/Dataset_2dPoint/features/1.rjson
则返回 ID 为1的要素的资源表述如下：
{
"stringID": null,
"fieldNames": [
"SMID",
"SMUSERID",
"NAME"
],
"geometry": {
"center": {
"x": 87.90276518568365,
"y": 369.04859913856114,
"m": null
},
"parts": [1],
"style": null,
"prjCoordSys": null,
"id": 1,
"type": "POINT",
"partTopo": null,
"points": [{
"x": 87.90276518568365,
"y": 369.04859913856114,
"m": null
}]
},
"fieldValues": [
"1",
"0",
"面包店"
],
"ID": 1
}
#### 示例5：多点数据集类型
当要素所在数据集的类型为 MULTIPOINT，对 feature 资源执行 GET 请求后，将返回多点要素的信息。以 URI1 为例，构建 URI 如下：
http://supermapiserver:8090/iserver/services/data-WorkSpace/rest/data/datasources/DataSource/datasets/arc_pro_datasetgroup/features/1.rjson
则返回 ID 为1的要素的资源表述如下：
{
"stringID": null,
"fieldNames": [
"SMID",
"SMUSERID",
"学校"
],
"geometry": {
"center": null,
"parts": [
1,
1,
1,
1,
1,
1,
1,
1,
1
],
"style": null,
"prjCoordSys": null,
"id": 1,
"type": "MULTIPOINT",
"partTopo": null,
"points": [
{
"x": -4252063.865700001,
"y": 8797373.515199997,
"z": 0,
"m": null
},
{
"x": -6158161.4606,
"y": 6084850.014700003,
"z": 0,
"m": null
},
{
"x": -4398686.7576,
"y": 4985178.325300001,
"z": 0,
"m": null
},
{
"x": 2785834.9464999996,
"y": 5425047.001000002,
"z": 0,
"m": null
},
{
"x": 659803.0135999992,
"y": 9677110.866700001,
"z": 0,
"m": null
},
{
"x": -2639212.0546000004,
"y": 6744653.028300002,
"z": 0,
"m": null
},
{
"x": -2126031.9327999987,
"y": 4618621.0955,
"z": 0,
"m": null
},
{
"x": -953048.7974999994,
"y": 3225703.622200001,
"z": 0,
"m": null
},
{
"x": 439868.6757999994,
"y": 3592260.851999998,
"z": 0,
"m": null
}
]
},
"fieldValues": [
"1",
"0",
"小学"
],
"ID": 1
}
### PUT 请求
修改一个要素（当要素类型为点、线、面、文本、CAD数据集或纯属性表数据集、三维模型数据集和视频数据集时)。需要注意的是，SuperMap 系统字段，即字段名以 SM、sm 开头的字段，是只读字段，不允许被修改。
此外，若您修改的要素在当前数据集中不存在，当您传入的请求体参数与当前数据集的要素类型对应时，将创建一个新的要素；当请求体参数与当前数据集的要素类型不对应时，将返回出错信息。
对于视频要素，当前仅支持修改视频地址 address 参数和视频名称 name 参数。若您修改的要素在当前数据集中不存在，将返回出错信息。
请注意：当您更新的要素中包含中文字段时，需在请求头中添加编码，即 Content-Type application/json;charset=UTF-8。
#### 请求参数
对 feature 资源执行 PUT 请求，对本要素进行修改，需要在请求体中包含修改后的要素的描述，请求体结构如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| fieldNames | String[] | 预修订的要素属性字段名集合。SuperMap 系统字段，即字段名以 SM、sm 开头的字段，是只读字段，不允许被修改。 |
| fieldValues | String[] | 预修订的要素的属性字段值集合，与 fieldNames 对应。 |
| geometry | Geometry | 要素对应的几何对象。 |
URI 中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| rollbackOnFailure | boolean | 表示此次更新操作是否支持[回退事务](../../../../../../../../../../Appendix/Glossary.htm#rollbackOnFailure)，默认为 true。若设置为 false，则将按照常规方式请求，即本次请求中失败前的编辑操作将应用于数据。要素所在数据集若不支持数据库事务能力，请求方式不受此参数影响，仍按常规方式请求。 |
#### 响应结构
对 feature 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 操作是否成功。 |
| error | HttpError | 出错信息，如果操作成功，则没有本字段。 |
#### 示例
对示例 feature 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features/247.rjson 执行 PUT 请求，修改 POP_1994 字段的值为 1,600,000,000，即1.6E9，请求体中包含参数如下：
{
"ID": 247,
"fieldNames": [
"POP_1994"
],
"fieldValues": [
"1.6E9"
]
}
则操作成功时，返回 rjson 的操作结果的表述如下：
{"succeed": true}
### DELETE 请求
删除 feature 资源所标识的要素（当要素类型为点、线、面、文本、CAD数据集或纯属性表数据集时）。
#### 请求参数
URI 中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| rollbackOnFailure | boolean | 表示此次删除操作是否支持[回退事务](../../../../../../../../../../Appendix/Glossary.htm#rollbackOnFailure)，默认为 true。若设置为 false，则将按照常规方式请求，即本次请求中失败前的编辑操作将应用于数据。要素所在数据集若不支持数据库事务能力，请求方式不受此参数影响，仍按常规方式请求。 |
#### 响应结构
对 feature 资源执行 DELETE 请求，删除该 feature 资源（也就是一个要素），返回的操作结果的表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 删除要素是否成功 |
| error | HttpError | 出错信息，如果操作成功，则没有本字段。 |
#### 示例
对示例 feature 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features/247.rjson 执行 DELETE 请求，删除 World 数据源 Countries 数据集中 ID 为 247 的要素，在删除成功的情况下，返回的操作结果的表述如下：
{"succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 feature 资源是否存在，或者客户端是否有权限访问 feature 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 feature 资源是否支持<format>格式的表述。
## 请参见
- [features](../features.htm)
- [客户端构建 REST 请求](../../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../../../../resource_hierarchy.htm)