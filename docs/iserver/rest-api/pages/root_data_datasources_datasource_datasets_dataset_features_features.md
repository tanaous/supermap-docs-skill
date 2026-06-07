# features

## URI
[<dataset_uri>](../dataset.htm#URI)/features[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[feature](feature/feature.htm)
## 介绍
features 资源表示一个数据集中所有要素（feature）的集合。通过对 features 资源执行 GET 请求可以获取数据集中的要素列表，当数据集为点、线、面数据集、文本数据集、CAD数据集或纯属性表数据集时，对 features 资源执行 POST 请求可以完成对数据集中的要素进行添加、删除或修改。
关于本资源的使用方法，可参考开发指南：[要素的添加](../../../../../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Data_Opr/AddFeature.htm)。
支持的方法：
- [GET](#GET 请求)：获取要素（feature）信息集合。
- [POST](#POST 请求)：添加、删除、修改要素集中的要素。
- [HEAD](#HEAD 请求)：检查 features 资源是否存在，或权限是否可以访问 features 资源。
支持的表述格式：RJSON、JSON、HTML、XML、KML、GeoRSS、GeoJSON。
注：当要素类型为点、线、面时，GeoJSON表述可用。
## 资源层次
!\[](../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/features/D_features.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features.rjson
### ](../../../../../../root.htm)GET 请求
获取要素（feature）信息集合。包括数据集中要素的个数、要素对应的几何对象的类型、各个要素的 URI 等信息。
#### 请求参数
对 features 资源执行 GET 请求，获取数据集中的要素信息集合，可以在 URI 中包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| fromIndex | int | 要素信息集合的起始索引号，默认值是0 |
| toIndex | int | 要素信息集合的终止索引号，默认值是19 |
当然，也可以不传任何参数，默认地，对 features 资源执行 GET 请求，将返回索引号范围为 0-19 的要素信息集合。
#### 响应结构
对 features 资源执行 GET 请求，返回的资源表述的结构如下（资源表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| featureCount | int | 数据集中要素的总数量。 |
| geometryType | GeometryType | 要素的类型。 |
| childUriList | List<String> | 要素（feature 资源）的 URI 列表。 |
| startIndex | int | 要素集合中要素的起始位置，其值与请求时设置的 fromIndex 相等。 |
#### 示例
对示例 features 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features.rjson 执行 GET 请求，在 URI 中传入 fromIndex 和 toIndex 参数如下：
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features.rjson?fromIndex=50&toIndex=55
则返回 rjson 格式的资源表述如下：
{
"childUriList": [
"http://supermapiserver:8090/iserver/services/data-world/rest/data/feature/0-13-50",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/feature/0-13-51",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/feature/0-13-52",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/feature/0-13-53",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/feature/0-13-54",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/feature/0-13-55"
],
"featureCount": 247,
"geometryType": "REGION"
}
对示例 features 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Capitals/features.kml 执行 GET 请求，返回 kml 格式表述。在 GoogleEarth 中访问此 kml 服务，默认显示效果如下图：
!\[](../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/features/D_feature_kml.png)
### POST 请求
对要素集中的要素进行添加、删除（_method=DELETE）、修改（_method=PUT）操作（当所在数据集为点/线/面数据集、文本数据集、CAD数据集或纯属性表数据集时）。iServer支持采用异步提交的方式处理要素编辑操作，可不用阻塞当前线程来等待操作完成，而是允许后续操作。可在服务配置文件中[设置异步提交](../../../../../../../../../Server_Service_Management/GISService_Config/Service_Config/Config_Provider/ConfigProviderXML/configDataProviderXML.htm)。
此外，iServer 还支持创建 GeoJSON 格式的几何对象，请求示例参见：[创建 GeoJSON 格式的几何对象](#创建_geojson_格式的几何对象)
#### 请求参数
features 资源表示的是数据集中的要素集合。默认地，对 features 资源执行 POST 请求，是在创建新的要素。但可以在 features 资源的 URI 中包含如下参数来控制 POST 请求的预期是删除要素还是修改要素。
注：三维模型数据集不支持创建要素。
URI 中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| isUseBatch | boolean | 【可选参数】 是否使用批量添加要素功能，要素添加时有效。 批量添加能够提高要素编辑效率。 true 表示批量添加；false 表示不使用批量添加。默认不传时为 false。 |
| returnContent | boolean | 【可选参数】 要素添加时，isUseBatch 不传或传为 false 的情况下有效。 true 表示直接返回新创建的要素的 ID 数组;false 表示返回创建的 featureResult 资源的 URI。默认不传时为 false。 |
| _method | String | POST 请求应实现的功能。 可能的值有：GET、PUT、POST、DELETE、HEAD，分别表示实现对应 HTTP 请求的功能。 这里，_method 可取 DELETE 或 PUT，分别表示删除要素或修改要素。 |
| rollbackOnFailure | boolean | 表示此次操作是否支持[回退事务](../../../../../../../../../Appendix/Glossary.htm#rollbackOnFailure)，默认为 true。若设置为 false，则将按照常规方式请求，即本次请求中失败前的编辑操作将应用于数据。要素集合所在数据集若不支持数据库事务能力，请求方式不受此参数影响，仍按常规方式请求。 |
对 features 资源执行 POST 请求，对要素进行添加（无 _method 参数）或修改（_method=PUT）时，需要在请求体中包含添加/修改的要素信息集合，其中单个要素信息的结构如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| fieldNames | String[] | 要素的属性字段名集合。其中，系统字段是创建数据集和要素时系统默认生成的字段，用户不能进行编辑，字段内容除了 SMUSERID 外都是不能修改的，关于不同数据集系统字段的介绍，请参考[fields](../fields/fields.htm)资源。 |
| fieldValues | String[] | 要素的属性字段值集合。 |
| geometry | [Geometry](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 要素对应的几何对象。 暂不支持Elasticsearch数据源中既有Geo_Point类型，又有Geo_Shape类型的数据。 |
对要素进行删除时（_method=DELETE），需要在请求体中包含欲删除要素的 ID 数组或SQL查询条件，这时，请求体结构如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| IDs | int[] | 以ID 数组方式删除要素时，需传入要素的 ID 数组。 对于字符串和数值类型的数据，是否加引号均可。 |
| attributeFilter | String | 以SQL条件方式删除要素时，需传入 SQL查询条件。 对于Elasticsearch数据，当字段值包含大写时，查询条件不加引号。例如：MAPTN = G12 对于Elasticsearch数据，查询条件暂不支持区分大小写。 |
#### 响应结构
对 features 资源执行 POST 请求，对要素集中的要素进行添加、修改或删除，返回操作结果的表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 操作是否成功。 |
| newResourceID | String | 创建的 featureResult 资源的 ID。 |
| newResourceLocation | String | 创建的 featureResult 资源的 URI。 isUseBatch 为 true 时无效。 |
| error | HttpError | 出错信息，如果操作成功，则没有本字段。 |
#### 示例
对示例 features 资源，即 World 数据源的 Countries 数据集中的要素集合，执行 POST 请求。
- 创建新的要素
对 URI：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features.rjson?isUseBatch=true 执行 POST 请求，在请求体中包含如下参数：
[
{
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
"22",
"-7.433472633361816",
"62.35749816894531",
"-6.38972282409668",
"61.388328552246094",
"6",
"0.25430895154659083",
"5.743731026651685",
"4500",
"1474.69",
"569.38",
"5",
"示例首都 a",
"示例国家 a",
"47067.0",
"亚洲"
],
"geometry": {
"id": 22,
"parts": [
3
],
"points": [
{
"x": -40,
"y": 60
},
{
"x": -45,
"y": 62
},
{
"x": -40,
"y": 55
},
{
"x": -40,
"y": 60
}
],
"style": null,
"type": "REGION"
}
}
],
[
{
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
"23",
"-7.433472633361816",
"62.35749816894531",
"-6.38972282409668",
"61.388328552246094",
"6",
"0.25430895154659083",
"5.743731026651685",
"4500",
"1474.69",
"569.38",
"5",
"示例首都 b",
"示例国家 b",
"47067.0",
"亚洲"
],
"geometry": {
"id": 23,
"parts": [
3
],
"points": [
{
"x": -40,
"y": 60
},
{
"x": -45,
"y": 62
},
{
"x": -40,
"y": 55
},
{
"x": -40,
"y": 60
}
],
"style":
{
"fillGradientOffsetRatioX":0,
"markerSize":2.4,
"fillForeColor":
{
"red":224,
"green":207,
"blue":226,
"alpha":255
},
"fillGradientOffsetRatioY":0,
"markerWidth":0,
"markerAngle":0,
"fillSymbolID":1,
"lineColor":
{
"red":167,
"green":170,
"blue":164,
"alpha":255
},
"markerSymbolID":0,
"lineWidth":0.1,
"markerHeight":0,
"fillOpaqueRate":100,
"fillBackOpaque":true,
"fillBackColor":
{
"red":255,
"green":255,
"blue":255,
"alpha":255
},
"fillGradientMode":"NONE",
"lineSymbolID":0,
"fillGradientAngle":0
},
"type": "REGION",
"prjCoordSys":null
}
}
]
创建成功的情况下，得到 rjson 格式的操作结果表述如下：
{
"newResourceLocation": "null.rjson",
"postResultType": "CreateChild",
"succeed": true
}
对 URI：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features.rjson 执行 POST 请求，在请求体中包含如下参数：
[
{
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
"22",
"-7.433472633361816",
"62.35749816894531",
"-6.38972282409668",
"61.388328552246094",
"6",
"0.25430895154659083",
"5.743731026651685",
"4500",
"1474.69",
"569.38",
"5",
"示例首都",
"示例国家",
"47067.0",
"亚洲"
],
"geometry": {
"id": 22,
"parts": [
3
],
"points": [
{
"x": -40,
"y": 60
},
{
"x": -45,
"y": 62
},
{
"x": -40,
"y": 55
},
{
"x": -40,
"y": 60
}
],
"style": null,
"type": "REGION",
"prjCoordSys":null
}
}
]
创建成功的情况下，得到 rjson 格式的操作结果表述如下：
{
"newResourceID": "1",
"newResourceLocation": "http://supermapiserver:8090/iserver/services/data-world/rest/data/featureResults/1.rjson",
"succeed": true
}
当创建 GeoJSON 格式的几何对象时，请求体中参数书写与创建 JSON 格式的几何对象有所不同，需要添加请求头 X-RequestEntity-ContentType:application/geojson，相关信息请参考：[GeoJSON 请求体参数](../../../../../../../clientBuildREST/REST_ParamsTransfer.htm)，下面给出具体示例。对示例 features 资源执行 POST 请求：http://supermapiserver:8090/iserver/services/data-World/rest/data/datasources/name/World/datasets/name/Countries/features.rjson。在请求体中包含如下参数：
[
{
"geometry": {
"coordinates": [
[
[
[
10.781665802002,
79.6502685546875
],
[
10.7558326721191,
79.6597137451172
],
[
10.7383308410645,
79.6794281005859
],
[
10.7122192382813,
79.7136077880859
],
[
10.7263870239258,
79.7177581787109
],
[
10.760555267334,
79.7188720703125
],
[
10.8866653442383,
79.7222137451172
],
[
10.9177761077881,
79.7210998535156
],
[
10.945276260376,
79.7191467285156
],
[
10.9819412231445,
79.7119293212891
],
[
11.0349979400635,
79.7008209228516
],
[
11.0716648101807,
79.6727600097656
],
[
11.0761089324951,
79.6627655029297
],
[
10.9527759552002,
79.6527709960938
],
[
10.9227752685547,
79.6510925292969
],
[
10.781665802002,
79.6502685546875
]
]
]
],
"type": "MultiPolygon"
},
"properties": {
"SQKM": "61909.1",
"SMSDRIW": "10.487914",
"SMSDRIS": "74.34305",
"POP_1994": "3148.0",
"SMSDRIN": "80.76416",
"SMID": "1",
"COUNTRY": "",
"CONTINENT": "欧洲1",
"SMAREA": "6.243427603572511E10",
"SMGEOPOSITION": "290488320",
"COLORID": "1",
"SMPERIMETER": "5196430.901327391",
"SQMI": "23903.1",
"SMGEOMETRYSIZE": "35816",
"CAPITAL": "",
"COLOR_MAP": "1",
"SMSDRIE": "33.637497",
"SMUSERID": "0"
},
"type": "Feature"
}
]
创建成功的情况下，得到 rjson 格式的操作结果表述如下：
{
"newResourceID"=669c50d3b25f4ea4a04bbd7a65ec8395_02d0affdd55547dfb5fa2cd5e43cf33e,
"newResourceLocation"=http://localhost:8090/iserver/services/data-World/rest/data/featureResults/669c50d3b25f4ea4a04bbd7a65ec8395_02d0affdd55547dfb5fa2cd5e43cf33e.rjson,
"postResultType=CreateChild,
"succeed": true
}
当创建含 M 值的要素时，需要在点几何对象中包含 M 值字段，下面给出具体示例。对示例 features 资源执行 POST 请求：http://supermapiserver:8090/iserver/services/data-testM/rest/data/datasources/Mtest/datasets/Dataset_2dPoint/features.rjson。在请求体中包含如下参数：
[
{
"stringID": null,
"fieldNames": [
"SMID",
"SMUSERID",
"NAME"
],
"geometry": {
"center": {
"x": 369.02432697217614,
"y": 339.8047448216948,
"m": null
},
"parts": [1],
"style": null,
"prjCoordSys": null,
"id": 7,
"type": "POINT",
"partTopo": null,
"points": [{
"x": 369.02432697217614,
"y": 339.8047448216948,
"m": 250903
}]
},
"fieldValues": [
"7",
"0",
"通天河test"
],
"ID": 22
}
]
创建成功的情况下，得到 rjson 格式的操作结果表述如下：
{
"newResourceID": "1",
"newResourceLocation": "http://supermapiserver:8090/iserver/services/data-testM/rest/data/featureResults/1.rjson",
"postResultType=CreateChild,
"succeed": true
}
当数据集为EPS类型，对features要素执行POST请求时，需要为每个点添加属性信息，包括"name"和“type”。例如：对示例 features 资源执行 POST 请求：http://supermapiserver:8090/iserver/services/data-EPS/rest/data/datasources/EPS_all/datasets/PointEPS/features.rjson。在请求体中包含如下参数：
[
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
"name": "point1",
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
]
注：当创建点要素时，可不填入“type"的值。当创建线要素和面要素时，则需要填入每个点的“type”值。详细请参考：[PointEPSType](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/PointEPSType.html)
创建成功的情况下，得到 rjson 格式的操作结果表述如下：
{
"newResourceID": "1",
"newResourceLocation": "http://supermapiserver:8090/iserver/services/data-EPS/rest/data/featureResults/1.rjson",
"succeed": true
}
- 修改要素
对 URI：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name//datasets/name/Countries/features.rjson?_method=PUT 执行POST 请求，修改几何对象，在请求体中包含如下参数：
[
{
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
"22",
"-7.433472633361816",
"62.35749816894531",
"-6.38972282409668",
"61.388328552246094",
"6",
"0.25430895154659083",
"5.743731026651685",
"4500",
"1474.69",
"569.38",
"5",
"示例首都",
"示例国家",
"47067.0",
"欧洲"
],
"geometry": {
"id": 22,
"parts": [
3
],
"points": [
{
"x": -40,
"y": 60
},
{
"x": -45,
"y": 70
},
{
"x": -40,
"y": 55
},
{
"x": -40,
"y": 60
}
],
"style": null,
"type": "REGION",
"prjCoordSys":null
}
}
]
修改成功的情况下，得到 rjson 格式的操作结果表述如下：
{"succeed": true}
对于含 M 值的数据集，也可通过PUT请求修改几何对象。对 URI：http://supermapiserver:8090/iserver/services/data-testM/rest/data/datasources/Mtest/datasets/Dataset_2dPoint/features.json?_method=PUT 执行POST 请求，修改几何对象，在请求体中包含如下参数：
[
{
"stringID": null,
"fieldNames": [
"SMID",
"SMUSERID",
"NAME"
],
"geometry": {
"center": {
"x": 365.02432697217614,
"y": 334.8047448216948,
"m": null
},
"parts": [1],
"style": null,
"prjCoordSys": null,
"id": 7,
"type": "POINT",
"partTopo": null,
"points": [{
"x": 365.02432697217614,
"y": 334.8047448216948,
"m": 20.65869
}]
},
"fieldValues": [
"7",
"0",
"通天河"
],
"ID": 7
}
]
修改成功的情况下，得到 rjson 格式的操作结果表述如下：
{"succeed": true}
对于EPS类型的数据集，也可通过PUT请求修改几何对象。对URI：http://supermapiserver:8090/iserver/services/data-EPS/rest/data/datasources/EPS_all/datasets/PointEPS/features.rjson?_method=PUT 执行 POST 请求，在请求体中包含如下参数：
[
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
"name": "point1",
"type": "None",
"x": 515.261530541407,
"y": 436.00202477444,
"z": 0
}],
"prjCoordSys": null,
"style": null,
"type": "POINTEPS"
}
}
]
修改成功的情况下，得到 rjson 格式的操作结果表述如下：
{"succeed": true}
- 通过ID数组删除要素
对 URI：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features.rjson?_method=DELETE &deleteMode=IDS执行 POST 请求，在请求体中包含如下参数，删除 ID 为51、52的参数：
[51,52]
删除成功，返回 rjson 格式的操作结果表述如下：
{"succeed": true}
此时，对 ID 为51或52的 feature 资源执行 GET 请求（参见 [feature 资源](feature/feature.htm)），可以发现 ID 为51和52的 feature 资源都已经不存在。
- 通过 SQL 查询条件删除要素
对 URI：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features.rjson?_method=DELETE &deleteMode=SQL执行 POST 请求，在请求体中包含如下参数，删除 SmID<10 的参数：
- 若在抓包工具（如 fiddler）中进行请求，则具体如下：
{"attributeFilter":"SmID %26lt; 10"}
- 若在 SuperMap iServer 提供的前端页面中进行请求参数设置，则请输入如下信息：
SmID < 10
删除成功，得到 rjson 格式的操作结果表述如下：
{"succeed": true}
- 通过 SQL 查询条件删除Elasticsearch数据要素
对 URI：http://supermapiserver:8090/iserver/services/data-es/rest/data/datasources/name/location/datasets/supermap/features.json?_method=DELETE&deleteMode=SQL执行 POST 请求，在请求体中包含如下参数，删除 MAPTN = G4805200620 的参数：
{"attributeFilter":"MAPTN = G4805200620"}
删除成功，得到 rjson 格式的操作结果表述如下：
{"succeed": true}
###  
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 features 资源是否存在，或者客户端是否有权限访问 features 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 features 资源是否支持<format>格式的表述。
## 请参见
- [feature](feature/feature.htm)，[dataset](../dataset.htm)
- [客户端构建 REST 请求](../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../../../resource_hierarchy.htm)