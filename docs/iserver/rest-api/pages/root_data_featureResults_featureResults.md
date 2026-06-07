# featureResults

## URI
[<data_uri>](../data.htm#URI)/featureResults[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[data](../data.htm)
## 子资源
[featureResult](featureResult.htm)
## 介绍
featureResults 资源表示数据查询结果的集合，通过对该资源执行 POST 请求，可以对数据源中的数据进行查询（可跨数据源），获取符合条件的要素集合，对数据进行查询的的步骤如下：
- 对 featureResults 执行 POST 请求，在请求体中包含必要的参数，返回一个确定的结果资源（featureResult 资源）的 URI；
- 对返回的 URI 进行 GET 操作，得到需要的结果。
进行数据查询，获取要素集合的方式有多种： ID 模式、几何对象的缓冲区模式、缓冲区加属性过滤器模式、空间查询模式、空间查询加属性过滤器的模式、SQL 模式等。若数据来源为ElasticSearch 服务，则获取要素的方式还包括：聚合查询模式。
关于本资源的使用方法，可参考开发指南：[数据要素的缓冲区查询](../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Data_Opr/QueryFeature.htm)。
支持的方法：
- [GET](#GET 请求)：获取子资源（数据查询结果资源）集合。
- [POST](#POST 请求)：根据给定条件，创建一个数据查询结果资源。
- [HEAD](#HEAD 请求)：检查 featureResults 资源是否存在，或权限是否可以访问 featureResults 资源。
支持的表述格式：RJSON、JSON、HTML、XML、GeoJSON、FlatGeobuf。
注：当查询结果要素的类型为点、线、面时，GeoJSON表述可用。此时若对多个数据集进行查询请求，则返回的 CRS 坐标系信息为第一个数据集的坐标系。
## 资源层次
!\[](../../../../../assets/images/root/data/featureResults/D_featureResults.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/data-China400/rest/data/featureResults.rjson
### ](../../root.htm)GET 请求
对 featureResults 资源执行 GET 请求，可以获取数据查询结果资源的集合。
#### 请求参数
无。
#### 响应结构
对 featureResults 资源执行 GET 请求，得到的是 featureResult 资源信息的集合，其中单个 featureResult 资源信息的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | featureResult 资源的名称。 |
| path | String | featureResult 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 数据源资源支持的表述的媒体类型。 |
#### 示例
在一次成功的数据查询（即对 featureResults 成功执行 [POST 请求](#POST 请求)）后，featureResults 资源里保存了查询结果的信息，对 featureResults 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"name": "c97763682c0f4eebb392a704ab8273b2_8fe12768e9244972bd4c051fde8b53ee",
"path": "http://supermapiserver:8090/iserver/services/data-China400/rest/data/featureResults/c97763682c0f4eebb392a704ab8273b2_8fe12768e9244972bd4c051fde8b53ee.rjson",
"resourceConfigID": null,
"resourceType": "ArithResultResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/fastjson",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object"
]
}
]
### POST 请求
根据给定条件，创建一个数据查询结果资源。
若查询性能较低，建议：1） 给数据集创建空间索引或字段索引；2）查询时设置参数 returnFeaturesOnly=true。
#### 请求参数
对 featureResults 资源执行 POST 请求，对数据进行查询（即创建一个 featureResult 资源），需传递参数如下：
URI 中的参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| returnContent | boolean | true 表示直接返回查询结果，即元素类型为 Feature 的数组;false 表示返回创建的 featureResult 资源的 URI。默认不传时为 false。 |
| fromIndex | int | 查询结果的最小索引号。
默认值是0，如果该值大于预期查询结果的最大索引号，则查询结果为空。 |
| toIndex | int | 查询结果的最大索引号。
如果该值大于预期查询结果的最大索引号，则以预期查询结果的最大索引号为实际查询结果的最大索引号。
例如：预期需要查询索引为0-9的要素，而 toIndex 参数值为10，则返回的查询结果中最大索引号为9。 |
| returnDatasetInfoOnly | boolean | 表示是否仅返回要素的数据集信息，默认为false。 |
| returnFeaturesOnly | boolean | 表示是否仅返回要素信息，默认为false。当 returnContent 为 true 时生效。 |
| returnCountOnly | boolean | 表示是否仅返回查询结果的要素数量，默认为false。当 returnContent 为 true 时生效。 |
| withIndex | boolean | 当使用 FlatGeobuf 表述时该参数可选。表示返回的表述为 FlatGeobuf 的结果是否包含空间索引，默认为true。 |
注：其中参数优先级：returnCountOnly > returnFeaturesOnly > returnDatasetInfoOnly。
请求体参数
在请求体中包含查询参数，如下所示。其中，getFeatureMode 标识了数据查询的模式，数据查询模式不同，所需要的参数也不同。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| getFeatureMode | [GetFeatureMode](../../../../iServerJavadoc/com/supermap/services/rest/commontypes/GetFeatureMode.html) | 【必选参数】
数据查询的模式。有 ID、SQL、BOUNDS、BOUNDS_ATTRIBUTEFILTER、BUFFER、BUFFER_ATTRIBUTEFILTER、SPATIAL、SPATIAL_ATTRIBUTEFILTER 等。
如果对三维点、线、面、模型数据集进行查询，则目前支持的查询模式有 ID、SQL、BOUNDS、BOUNDS_ATTRIBUTEFILTER。 |
| datasetNames | String[] | 【必选参数】
数据集名称数组(datasourceName:datasetName)。
数据集名称由数据源名和数据集名构成，例如 World 数据源下的 Ocean 数据集，这里的数据集名称就是“World:Ocean”。 |
| ids | int[] | 要获取的资源的 ID 数组。
当 getFeatureMode（查询模式）为ID时，此参数必选。
Elasticsearch数据查询支持的数据类型：Geo_Point、Geo_Shape。
对于Elasticsearch数据，当数据为字符串类型，需加引号。
请注意：对于 ArcSDE for Oracle 数据源，若需进行 ID 查询，仅支持 id 数小于等于 200 的查询 |
| bounds | [Rectangle2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 进行范围查询时，需要设置的矩形坐标范围。
当 getFeatureMode（查询模式）为BOUNDS、BOUNDS_ATTRIBUTEFILTER时，此参数必选。
Elasticsearch数据查询支持的数据类型：Geo_Point、Geo_Shape。 |
| geometry | [Geometry](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 几何对象。
当 getFeatureMode（查询模式）为BUFFER、BUFFER_ATTRIBUTEFILTER、SPATIAL、SPATIAL_ATTRIBUTEFILTER时，此参数必选。 |
| bufferDistance | double | 缓冲区半径，单位和数据集坐标单位一致。
当 getFeatureMode（查询模式）为BUFFER、BUFFER_ATTRIBUTEFILTER时，此参数必选。
不支持Elasticsearch数据来源。 |
| attributeFilter | String | 属性查询过滤器。
当 getFeatureMode（查询模式）为BUFFER_ATTRIBUTEFILTER、SPATIAL_ATTRIBUTEFILTER、BOUNDS_ATTRIBUTEFILTER时，此参数必选。
注意：
1、当 getFeatureMode（查询模式）为 SQL 时，如果在系统配置文件（参见：[iServer 配置文件说明](../../../../../Appendix/iServer_configInfo.htm)）中设置了 SQL 查询表达式中需要屏蔽掉的字符串，那么在属性查询过滤器中一旦发现输入了已经设置的字符串，系统会认为该条查询表达式非法并返回400参数异常，防止 SQL 注入。如果在系统配置文件中没有设置 SQL 查询表达式中需要屏蔽掉的字符串，那么在属性查询过滤器中会默认屏蔽掉分号。
2、若您查询的数据量较大，且存储在 PostGIS、PostgreSQL、MySQL 等空间数据库中时，如果该数据库支持空间几何函数查询，您还可以将数据库几何函数作为查询条件，利用空间数据库进行计算，从而缓解 iServer 计算压力，提高返回结果的速度。请求体示例参见 [示例8：SQL查询-以空间几何函数为查询条件](#示例8_SQL查询_以空间几何函数为查询条件)
3、对于日期类型字段的查询，受数据库引擎影响，查询条件参数传递方式略有不同。当对 UDB 中的数据进行查询时，日期条件应写为 to_date("yyyy/mm/dd hh:mm:ss")，例如："date"=to_date("2025/09/25 00:00:00")；当对 Orcale 数据库中的数据进行查询时，日期条件应写为 TO_TIMESTAMP('yyyy-mm-dd hh:mm:ss')，例如"date"=TO_TIMESTAMP('yyyy-mm-dd hh:mm:ss')；当对其他引擎中的数据进行查询时，日期条件应写为 yyyy-mm-dd hh:mm:ss，例如："date"="2025-09-25 00:00:00" |
| groupBy | String | 查询结果分组字段。
当 getFeatureMode（查询模式）为 SPATIAL、SPATIAL_ATTRIBUTEFILTER、BOUNDS、BOUNDS_ATTRIBUTEFILTER 时，此参数可选。
注意：
1、该参数仅对含 PostGIS（含其他 PostGIS 系数据库）、Yukon、Oracle Spatial、DM Spatial、XUGU DB 数据库数据源的工作空间数据生效。
2、结合 fields（查询字段）使用，fields 需设置为分组字段或其他统计字段，具体请参见 [FAQ](../../../../../FAQ/FAQ.htm#带groupBy_结果分组条件的字段_时_返回结果为空)
3、不支持在 iServer 前端 REST API页面进行分组条件（groupBy）查询，可以通过调用 REST API接口方式（例如：Fiddler、Postman）进行分组条件（groupBy）查询。 |
| fields | String[] | 查询字段数组。
当 getFeatureMode（查询模式）为 SPATIAL、SPATIAL_ATTRIBUTEFILTER、BOUNDS、BOUNDS_ATTRIBUTEFILTER 时，此参数可选。 |
| spatialQueryMode | [SpatialQueryMode](../../../../iServerJavadoc/com/supermap/services/components/commontypes/SpatialQueryMode.html) | 空间查询模式。
当 getFeatureMode（查询模式）为SPATIAL、SPATIAL_ATTRIBUTEFILTER时，此参数必选。
Elasticsearch数据查询支持的数据类型：Geo_Point、Geo_Shape。
当数据类型为Geo_Point时，支持的空间查询模式仅为CONTAIN。
当数据类型为Geo_Shape时，支持的空间查询模式CONTAIN、WITHIN、INTERSECT、DISJOINT。 |
| maxFeatures | int | 进行 SQL 查询时，用于设置服务端返回查询结果条目的数量，默认为1000。
当该值大于fromIndex与toIndex区间内查询结果的个数，则返回索引区间内所有结果
当该值小于等于fromIndex与toIndex区间内查询结果的个数，则返回索引区间内从fromIndex起，指定数量的结果
当该值等于-1， 将返回全部结果（不受默认1000的限制），但优先级低于fromIndex和toIndex |
| queryParameter | [QueryParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 查询参数。
这里已包含设置获取的结果字段名。
当 getFeatureMode（查询模式）为SQL时，此参数必选。 注意：当使用分组条件（groupBy）查询参数时，只支持属性查询，针对非 udb 或 udbx 的数据库型数据源需设置查询字段为分组字段或其他统计字段，具体请参见[FAQ](../../../../../FAQ/FAQ.htm#带groupBy_结果分组条件的字段_时_返回结果为空)，并且不支持在 iServer 前端 REST API页面进行分组条件（groupBy）查询，可以通过调用 REST API接口方式（例如：Fiddler、Postman）进行分组条件（groupBy）查询。
Elasticsearch数据查询支持的数据类型：Geo_Point、Geo_Shape。
对于Elasticsearch数据，当字段值包含大写时，查询条件不加引号。
对于Elasticsearch数据，查询条件暂不支持区分大小写。例如：当查询条件为NAME=G12时 ，NAME=G12或NAME=g12符合条件的结果均会查询。
对于Elasticsearch数据，SQL查询仅支持常见操作符，如“>”、“< ”、“=” 等，其中“=”匹配内容仅支持数字；一些函数运算如：max()，min()，以及like操作符等尚不支持。 |
| targetPrj | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 动态投影的目标坐标系。
当此参数设置的坐标系统不同于数据的原有坐标系统时， 系统会进行动态投影，并返回动态投影后的查询结果。 参数使用时，需按照[PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 epsgCode 的方式传入坐标参考系。
建议当目标投坐标系无对应的EpsgCode时，使用此参数。
使用时，需在请求url中添加returnContent参数，并设值为true |
| targetEpsgCode | int | 动态投影的目标坐标系对应的[EPSG Code](../../../../../Appendix/CoordSystem/EPSGCode.htm)。 使用时，需在请求url中添加returnContent参数，并设值为true
targetEpsgCode和targetPrj均可设置动态投影的目标坐标系，当两者都设置时，以targetEpsgCode为准。 |
| aggregations | [AggregationParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/AggregationParameter.html) | 聚合查询参数（仅支持Elasticsearch数据源）。
使用聚合查询时，首先需要通过数据查询获得需要进行聚合查询的点数据集。目前支持的数据查询模式有BOUNDS、BOUNDS_ATTRIBUTEFILTER、SPATIAL、SPATIAL_ATTRIBUTEFILTER、ID、SQL等六种，您可根据需求进行选择。 请注意，在聚合查询中使用BOUNDS查询时，需将bounds参数中的坐标设置在x=[-180,180]，y=[-90,90]的范围内。
目前聚合查询支持以下两种聚合模式：
- 格网聚合查询（[GeoHashGridAggParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/GeoHashGridAggParameter.html)），是实现基于格网划分对点要素数量count进行统计的聚合查询模式。具体指通过格网对地图要素进行划分，然后计算每个网格内点要素的数量count，最后返回包含count字段的点集合。格网聚合查询字段结构中包含精度precision，参数范围为1-12，默认为5。其中12代表最高精度，此时一个网格仅可覆盖小于1平方米的面积。
- 指标聚合查询（[MetricsAggParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/MetricsAggParameter.html)），是实现对点要素的指定字段进行最大、最小、平均或求和统计的聚合查询模式。具体指根据最大（max）、最小（min）、平均（avg）、求和（sum）几种统计类型，对点要素的指定属性字段进行统计，最后返回包括统计值字段的点。通常情况下使用指标聚合查询时，建议您与网格聚合查询结合，从而实现返回包括 统计值字段的聚合结果点数据集。如果您仅使用使用指标聚合查询，则将返回包含统计值的单个点。
请注意，在使用聚合查询参数时，需在请求url中添加returnContent参数，并设值为true。例如：http://supermapiserver:8090/iserver/services/data-es/rest/data/featureResults.rjson?returnContent=true |
| hasGeometry | boolean | 是否返回空间几何对象信息。默认为true。当 getFeatureMode 不为 ID 时，且 URL 参数 returnContent=true 时，hasGeometry 有效。 |
#### 响应结构
对 featureResults 资源执行 POST 请求，返回的创建结果的结构如下：
| 字段 | 类型 | 含义 |
| --- | --- | --- |
| succeed | boolean | 数据查询是否成功。 |
| newResourceID | String | 创建的 featureResult 资源的 ID。 |
| newResourceLocation | String | 创建的 featureResult 资源的 URI。 |
如果 URI 参数 returnContent 为 true，则返回查询结果，其结构如下：
| 字段 | 类型 | 含义 |
| --- | --- | --- |
| featureCount | int | 返回的要素个数。 |
| features | String[] | 返回的要素列表。 |
| totalCount | int | 要素总个数。 |
| featureUriList | String[] | 返回的要素子资源地址。 |
| datasetInfos | [datasetInfos](../../../../iServerJavadoc/com/supermap/services/rest/commontypes/FeatureDatasetInfo.html) | 返回的数据集信息，包括数据集名称、数据集字段信息（字段名、字段别名和字段类型）以及数据集查询出的要素在 features 字段中的索引范围 |
其中要素集合，即 features 字段中单个元素的描述结构如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| ID | int | 要素的 ID。 |
| fieldNames | String[] | 要素的属性字段名集合。 |
| fieldValues | String[] | 要素的属性字段值集合。 |
| geometry | Geometry | 要素对应的几何对象。当hasGeometry为false时，返回的geometry的值为null。 |
#### 示例1
对示例 featureResults 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/featureResults.rjson 执行 POST 请求（returnContent 默认不传，则为 false），对 supermapiserver 服务器上的数据进行查询，根据 ID 来获取要素，请求体中的参数如下：
{
"getFeatureMode":"ID",
"datasetNames":["World:Capitals"],
"ids":[1, 2, 3]
}
返回 rjson 格式的操作结果表述如下：
{
"newResourceID": "48ba8fa1144640939a944f75e1682265_99dabf94794248c38776711d859164af",
"newResourceLocation": "http://localhost:8080/iserver/services/data-world/rest/data/featureResults/48ba8fa1144640939a944f75e1682265_99dabf94794248c38776711d859164af.rjson",
"postResultType": "CreateChild",
"succeed": true
}
#### 示例2
对示例 featureResults 资源：http://supermapiserver:8090/iserver/services/data-World/rest/data/featureResults.geojson?returnContent=true 执行 POST 请求，对 supermapiserver 服务器上的数据进行查询，根据 ID 来获取要素，请求体中的参数如下：
{
"getFeatureMode":"ID",
"datasetNames":["World:capital"],
"ids":[1]
}
返回 geojson 格式的操作结果表述如下：
{
"features":[
{
"geometry":{
"coordinates":[-47.8977476573595,-15.792110943058866],
"type":"Point"
},
"id":"1",
"type":"Feature",
"properties":{
"SMLIBTILEID":"1",
"COUNTRY_CH":"巴西",
"CAPITAL_EN":"Brasilia",
"POP":"2207718.0",
"CAPITAL_CH":"巴西利亚",
"SMID":"1",
"CAPITAL_LO":"Brasília",
"COUNTRY_EN":"Brazil",
"USERID":"0",
"SMGEOPOSITION":"266502144",
"SMGEOMETRYSIZE":"20",
"SMY":"-15.792110943058866",
"SMX":"-47.8977476573595",
"SMUSERID":"0"
}
}],
"type":"FeatureCollection"
}
#### 示例3：查询并返回动态投影后的要素（设置 targetEpsgCode 参数）
对示例 featureResults 资源：http://supermapiservert:8090/iserver/services/data-world/rest/data/featureResults.rjson?returnContent=true 执行 POST 请求，对 supermapiserver 服务器上的数据进行查询，根据 SQL来获取要素，并转换投影坐标系。请求体中的参数如下：
{
"getFeatureMode":"SQL",
"datasetNames":["World:Capitals"],
"targetEpsgCode":3857,
"maxFeatures":1000,
"queryParameter":{
"sortClause":null,
"ids":null, "name":"Capital",
"attributeFilter":"SMID%26lt;5",
"groupClause":null,
"linkItems":null,
"joinItems":null,
"fields":null
},
hasGeometry:true
}
返回 rjson 格式的操作结果表述如下：
{
"featureCount": 1,
"featureUriList": [],
"features": [{
"ID": 1,
"fieldNames": [
"SMID",
"SMX",
"SMY",
"SMLIBTILEID",
"SMUSERID",
"SMGEOMETRYSIZE",
"USERID",
"POP",
"CAPITAL_LO",
"CAPITAL_CH",
"COUNTRY_CH",
"CAPITAL_EN",
"COUNTRY_EN",
"COUNTRY",
"CAP_POP",
"CAPITAL"
],
"fieldValues": [
"1",
"-47.8977476573595",
"-15.792110943058866",
"1",
"0",
"16",
"0",
"2207718.0",
"Brasília",
"巴西利亚",
"巴西",
"Brasilia",
"Brazil",
"巴西",
"2207718.0",
"巴西利亚"
],
"geometry": {
"center": {
"x": -5331952.879361972,
"y": -1780660.5109428319
},
"id": 1,
"parts": [1],
"points": [{
"x": -5331952.879361972,
"y": -1780660.5109428319
}],
"prjCoordSys": null,
"style": null,
"type": "POINT"
}
}],
"totalCount": 1
}
#### 示例4：通过 SQL 查询条件获取Elasticsearch数据要素
对示例 featureResults 资源：http://supermapiservert:8090/iserver/services/data-es/rest/data/featureResults.json?returnContent=true 执行 POST 请求，对 supermapiserver 服务器上的数据进行查询，根据 SQL来获取要素。请求体中的参数如下：
{
"getFeatureMode": "SQL",
"datasetNames": [
"居民点:supermap"
],
"maxFeatures": 1000,
"queryParameter": {
"sortClause": null,
"ids": null,
"name": null,
"attributeFilter": "MAPTN = G4805200250",
"groupClause": null,
"linkItems": null,
"joinItems": null,
"fields": null
}
}
返回 rjson 格式的操作结果表述如下：
{
"features": [],
"featureUriList": [
{
"stringID": "AWTJ_JNbQGqPLMwBycPm",
"fieldNames": [
"AREA",
"CODE",
"COVERAGE",
"COVERAGE_ID",
"GB",
"MAPTN",
"PERIMETER",
"RNAME",
"SmID",
"TN",
"ZValue"
],
"geometry": {
"center": {
"x": 102.09679,
"y": 26.921792
},
"parts": [
1
],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "POINT",
"partTopo": null,
"points": [
{
"x": 102.09679,
"y": 26.921792
}
]
},
"fieldValues": [
"0.0",
"211",
"25",
"25",
"31091",
"G4805200250",
"0.0",
"新林村",
"4139",
"200250",
"1200.0"
],
"ID": 0
},
{
"stringID": "AWXNF_e10qCuSb4ZYqo-",
"fieldNames": [
"AREA",
"CODE",
"COVERAGE",
"COVERAGE_ID",
"GB",
"MAPTN",
"PERIMETER",
"RNAME",
"SmID",
"TN",
"ZValue"
],
"geometry": {
"center": {
"x": 102.09679,
"y": 26.921792
},
"parts": [
1
],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "POINT",
"partTopo": null,
"points": [
{
"x": 102.09679,
"y": 26.921792
}
]
},
"fieldValues": [
"0.0",
"211",
"25",
"25",
"31091",
"g4805200250",
"0.0",
"新林村",
"4139",
"200250",
"1200.0"
],
"ID": 0
}
],
"totalCount": 2,
"featureCount": 2
}
#### 示例5：查询并返回动态投影后的要素（设置 targetPrj 参数）
对示例 featureResults 资源：http://supermapiservert:8090/iserver/services/data-world/rest/data/featureResults.rjson?returnContent=true 执行 POST 请求，对 supermapiserver 服务器上的数据进行查询，根据 SQL来获取要素，通过设置 targetPrj 参数转换投影坐标系，targetPrj 参数的构造参考[PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)。请求体中的参数示例如下：
{
"getFeatureMode":"SQL",
"targetPrj": {
"coordSystem": {
"datum": {
"name": "D_Timbalai_1948",
"spheroid": {
"axis": 6377298.556,
"flatten": 0.003324448999999486,
"name": "Everest_Definition_1967",
"type": "SPHEROID_EVEREST_DEF_1967"
},
"type": "DATUM_TIMBALAI_1948"
},
"name": "GCS_Timbalai_1948",
"primeMeridian": {
"longitudeValue": 0,
"name": "Greenwich",
"type": "PRIMEMERIDIAN_GREENWICH"
},
"spatialRefType": "SPATIALREF_EARTH_LONGITUDE_LATITUDE",
"type": "GCS_TIMBALAI_1948",
"unit": "DEGREE"
},
"coordUnit": "METER",
"distanceUnit": "METER",
"epsgCode": 29873,
"name": "Timbalai_1948_RSO_Borneo_Meters",
"projection": {
"name": "",
"type": "PRJ_RECTIFIED_SKEWED_ORTHOMORPHIC"
},
"projectionParam": {
"azimuth": 53.31582047908623,
"centralMeridian": 115,
"centralParallel": 4,
"falseEasting": 2000000,
"falseNorthing": 5000000,
"firstPointLongitude": 0,
"firstStandardParallel": 0,
"scaleFactor": 0.99984,
"secondPointLongitude": 0,
"secondStandardParallel": 0,
"rectifiedAngle":53.13010235415598
}},
"datasetNames":["World:Capitals"],
"maxFeatures":1000,
"queryParameter":{"sortClause":null, "ids":null, "name":"Capital", "attributeFilter":"SMID%26lt;2", "groupClause":null, "linkItems":null, "joinItems":null, "fields":null}
}
返回 rjson 格式的操作结果表述如下：
{
"featureCount": 1,
"featureUriList": [],
"features": [{
"ID": 1,
"fieldNames": [
"SMID",
"SMX",
"SMY",
"SMLIBTILEID",
"SMUSERID",
"SMGEOMETRYSIZE",
"USERID",
"POP",
"CAPITAL_LO",
"CAPITAL_CH",
"COUNTRY_CH",
"CAPITAL_EN",
"COUNTRY_EN",
"COUNTRY",
"CAP_POP",
"CAPITAL"
],
"fieldValues": [
"1",
"-47.8977476573595",
"-15.792110943058866",
"1",
"0",
"16",
"0",
"2207718.0",
"Brasília",
"巴西利亚",
"巴西",
"Brasilia",
"Brazil",
"巴西",
"2207718.0",
"巴西利亚"
],
"geometry": {
"center": {
"x": 4379183.5624869745,
"y": 6771032.568773773
},
"id": 1,
"parts": [1],
"points": [{
"x": 4379183.5624869745,
"y": 6771032.568773773
}],
"prjCoordSys": null,
"style": null,
"type": "POINT"
}
}],
"totalCount": 1
}
#### 示例6：基于格网的最大值聚合查询（设置 aggregations 参数）
对示例 featureResults 资源：http://supermapiserver:8090/iserver/services/data-es/rest/data/featureResults.rjson?returnContent=true 执行 POST 请求，对 ES 数据进行基于 BOUNDS 查询的格网-最大值聚合查询，首先通过设置 bounds 参数对 ES 数据进行 BOUNDS 查询获取数据集，然后设置 aggregations 参数实现对获取到的数据集进行格网划分并对 fee 字段进行最大值指标聚合查询，请求体中的参数如下：
{
"getFeatureMode": "BOUNDS",
"datasetNames": [
"test1100:_doc"
],
"bounds": {
"leftBottom": {
"x":-136.38671875,
"y":-54.345703125
},
"rightTop": {
"x":116.38671875,
"y":84.345703125
}
},
"spatialQueryMode": "CONTAIN",
"maxFeatures":10000,
"aggregations": {
"aggName": "test",
"aggType": "geohash_grid",
"aggFieldName": "location",
"precision": 3,
"subAggs": [{
"aggName":"test2",
"aggType":"max",
"aggFieldName":"fee",
"subAgg":null
}]
}
}
返回 rjson 格式的操作结果表述如下：
{
"featureCount": 215,
"featureUriList": [],
"features": [{
"ID": 0,
"fieldNames":[
"test",
"test2"
],
"fieldValues":[
"1996.52",
"1408"
],
"geometry": {
"center": {
"x": 115.3125,
"y": 39.375
},
"id": 0,
"parts": [1],
"partTopo": null,
"points": [{
"x": 115.3125,
"y": 39.375
}],
"prjCoordSys": null,
"style": null,
"type": "POINT"
}
}
......
],
"totalCount": 215
}
#### 示例7
对示例 featureResults 资源：http://supermapiserver:8090/iserver/services/data- testdatahbase /rest/data/featureResults.rjson?returnContent=true 执行 POST 请求，对分布式数据使用 ECQL 语言进行查询，获取要素，请求体中的参数示例如下：
{
"getFeatureMode": "SQL",
"datasetNames": ["testdatahbase:Muifa_4326"],
"maxFeatures": 1000,
"queryParameter": {
"sortClause": null,
"ids": null,
"name": null,
"attributeFilter": "BBOX(the_geom,131.03,23.35,132.87,24.97)",
"groupClause": null,
"linkItems": null,
"joinItems": null,
"fields": null
}
}
返回 rjson 格式的操作结果表述如下：
{
"features": [],
" featureUriList ": [
{
"stringID": "00a3e328-9ac0-4765-9ad7-d3b19f00fcda",
"fieldNames": [
"SmID",
"TIME",
"STRENGTH",
"LAT",
"LON",
"PRES",
"WND",
"NAME",
"RTime"
],
"geometry": {
"center": {
"x": 132.8,
"y": 24.1
},
"parts": [1],
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "POINT",
"partTopo": null,
"points": [{
"x": 132.8,
"y": 24.1
}]
},
"fieldValues": [
"29",
"2011080300",
"5.0",
"24.1",
"132.8",
"940.0",
"50.0",
"梅花",
"2011-08-02T16:00:00.000Z"
],
"ID": 0
}
{
"stringID": "70a3e328-9a8a-43fc-85b8-9301195874d0",
……
}
{
"stringID": "30a3e328-9a8b-436e-bda5-9142b3826a6a",
……
}
],
"totalCount": 3
"featureCount": 3
}
#### 示例8：SQL查询—以空间几何函数为查询条件
对示例 featureResults 资源：http://supermapiserver:8090/iserver/services/data-postgisMap/rest/data/featureResults.rjson?returnContent=true 执行 POST 请求，对 supermapiserver 服务器上的数据进行查询，根据以空间几何函数为条件的 SQL 查询来获取要素。请求体中的参数如下：
{
"getFeatureMode":"SQL",
"datasetNames":["postgisMap:basemap_p"],
"maxFeatures":2,
"queryParameter":{
"sortClause":null,
"ids":null,
"name":null,
"attributeFilter":"ST_Intersects(basemap_p.smgeometry,st_geomfromgeojson('{\"type\":\"Line\",\"coordinates\":[[[117.39993002089760,40.0590434404580],[117.39993002089765,40.0590434404588]]]}'))",
"groupClause":null,
"linkItems":null,
"joinItems":null,
"fields":null
},
hasGeometry:false
}
返回 rjson 格式的操作结果表述如下：
{
"featureCount": 1,
"featureUriList": [],
"features": [{
"ID": 1,
"fieldNames": [
"smuserid",
"userid",
"name",
"code",
"adclass",
"adclass_1"
],
"fieldValues": [
"0",
"21",
"蓟县",
"120225",
"4",
"0.0"
],
}],
"totalCount": 1
}
#### 示例9：对多个数据集进行查询并按组返回数据集信息（设置 returnDatasetInfoOnly 参数）
对示例 featureResults 资源： http://supermapiserver:8090/iserver/services/data-World/rest/data/featureResults.rjson?returnDatasetInfoOnly=true&returnContent=true 执行 POST 请求，对 supermapiserver 服务器上的数据集进行查询，请求体中的参数如下：
{
"getFeatureMode":"ID",
"datasetNames":["China:Airport_pt", "China:China_Island"],
"ids":[1,2,3]
}
返回 rjson 格式的操作结果表述如下：
[{
"fieldInfos": [
{
"name":"SmID",
"caption":"SmID",
"type":"INT32"
},
{
"name":"SmUserID",
"caption":"SmUserID",
"type":"INT32"
},
{
"name":"GB",
"caption":"GB",
"type":"DOUBLE"
},
{
"name":"RN",
"caption":"RN",
"type":"WTEXT"
},
{
"name":"NAME",
"caption":"NAME",
"type":"WTEXT"
},
{
"name":"PERIOD",
"caption":"PERIOD",
"type": "WTEXT"
},
{
"name":"BRGLEV",
"caption":"BRGLEV",
"type":"DOUBLE"
},
{
"name":"ANGLE",
"caption":"ANGLE",
"type":"DOUBLE"
}
],
"featureRange": {
"start": 0,
"end": 2
},
"datasetName":"China:Airport_pt"
},
{
"fieldInfos": [
{
"name":"SmID",
"caption":"SmID",
"type":"INT32"
},
{
"name":"SmUserID",
"caption":"SmUserID",
"type":"INT32"
},
{
"name":"SmArea",
"caption":"SmArea",
"type":"DOUBLE"
},
{
"name":"SmPerimeter",
"caption":"SmPerimeter",
"type":"DOUBLE"
},
{
"name":"GB",
"caption":"GB",
"type":"DOUBLE"
},
{
"name":"NAME",
"caption":"NAME",
"type":"WTEXT"
},
{
"name":"SHAPE_Leng",
"caption":"SHAPE_Leng",
"type": "DOUBLE"
},
{
"name":"SHAPE_Area",
"caption":"SHAPE_Area",
"type":"DOUBLE"
},
{
"name":"PAC",
"caption":"PAC",
"type":"DOUBLE"
},
{
"name":"CODE",
"caption":"CODE",
"type":"WTEXT"
},
{
"name":"PINYIN",
"caption":"PINYIN",
"type":"WTEXT"
},
],
"featureRange": {
"start": 3,
"end": 5
},
"datasetName":"China:China_Island"
}]
#### 示例10：BOUNDS查询以获取视频数据集中指定范围内的视频要素
对示例 featureResults 资源：http://supermapiserver:8090/iserver/services/data-test0104/rest/data/featureResults.rjson?returnContent=true 执行 POST请求，根据地理范围获取视频要素，请求体中的参数如下：
{
"getFeatureMode":"BOUNDS",
"datasetNames":["NewDatasource:ptz旋转画面_2"],
"bounds":{
"leftBottom":{
"x":12929007,
"y":3279156
},
"rightTop":{
"x":12929466,
"y":3279656
}
}
}
返回的 rjsonn 格式的操作结果表述如下：
{
"features": [{
"stringID": null,
"address": "http://192.168.113.1:8090/iserver/services/video-test0104/restjsr/hls/stream/NewDatasource-ptz旋转画面_2/1/index.m3u8",
"videoParameters": {
"auxiliaryCalibrationParameter": {
"tiltGrowsUp": false,
"iterationCount": 1000,
"samplesCount": 200,
"supportHeight": false,
"panGrowsClockwise": false,
"cameraIteratorParameters": [
{
"minValue": "NaN",
"cameraParameterType": "X",
"maxValue": "NaN",
"value": 1.29295170697E7
},
{
"minValue": "NaN",
"cameraParameterType": "Y",
"maxValue": "NaN",
"value": 3279448.7247
},
{
"minValue": 0,
"cameraParameterType": "Z",
"maxValue": 80,
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
"videoWidth": 1540,
"calibrationModel": {
"isRansac": false,
"centerY": 0,
"centerX": 0,
"calibrationModelType": 0,
"calibrationPoints": [
{
"spatialPoint": {
"x": 1.2929429979064863E7,
"y": 3279405.072826336,
"z": 0
},
"videoPoint": {
"x": 546,
"y": 196
}
},
{
"spatialPoint": {
"x": 1.2929372108815093E7,
"y": 3279432.230745163,
"z": 0
},
"videoPoint": {
"x": 855,
"y": 445
}
},
{
"spatialPoint": {
"x": 1.2929376742628248E7,
"y": 3279481.6986007923,
"z": 0
},
"videoPoint": {
"x": 1281,
"y": 414
}
},
{
"spatialPoint": {
"x": 1.2929298549258841E7,
"y": 3279409.595201617,
"z": 0
},
"videoPoint": {
"x": 694,
"y": 590
}
},
{
"spatialPoint": {
"x": 1.2929325804647576E7,
"y": 3279495.6764664766,
"z": 0
},
"videoPoint": {
"x": 1244,
"y": 534
}
},
{
"spatialPoint": {
"x": 1.2929358878926704E7,
"y": 3279505.9148433916,
"z": 0
},
"videoPoint": {
"x": 1409,
"y": 456
}
},
{
"spatialPoint": {
"x": 1.2929424599934718E7,
"y": 3279463.9504835536,
"z": 0
},
"videoPoint": {
"x": 1273,
"y": 217
}
},
{
"spatialPoint": {
"x": 1.2929371030474676E7,
"y": 3279383.6257988643,
"z": 0
},
"videoPoint": {
"x": 432,
"y": 448
}
}
],
"fovX": 0,
"fovY": 0,
"isIntrinsic": false,
"isExtrinsic": false,
"cameraLocation": {
"cameraRoll": -0.7656412825751551,
"cameraYaw": -90.89065135311759,
"cameraY": 3279448.7247,
"cameraZ": 65.78334160898069,
"cameraX": 1.29295170697E7,
"cameraPitch": -39.80838777192129
}
},
"clipRegion": {
"center": {
"x": 770,
"y": 385
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
"x": 1540,
"y": 0
},
{
"x": 1540,
"y": 770
},
{
"x": 0,
"y": 770
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
"width": 1540,
"height": 770
},
"x": 0,
"width": 1540,
"y": 0,
"OUT_BOTTOM": 8,
"location": {
"x": 0,
"y": 0
},
"OUT_LEFT": 1,
"height": 770
},
"tilt": 23.9,
"pan": 156,
"videoHeight": 770
},
{
"videoWidth": 1540,
"calibrationModel": {
"isRansac": false,
"centerY": 0,
"centerX": 0,
"calibrationModelType": 0,
"calibrationPoints": [
{
"spatialPoint": {
"x": 1.2929429979064863E7,
"y": 3279405.072826336,
"z": 0
},
"videoPoint": {
"x": 120,
"y": 126
}
},
{
"spatialPoint": {
"x": 1.2929371395548986E7,
"y": 3279432.6098156744,
"z": 0
},
"videoPoint": {
"x": 410,
"y": 442
}
},
{
"spatialPoint": {
"x": 1.2929377985228604E7,
"y": 3279478.5103589036,
"z": 0
},
"videoPoint": {
"x": 820,
"y": 444
}
},
{
"spatialPoint": {
"x": 1.2929298549258841E7,
"y": 3279409.595201617,
"z": 0
},
"videoPoint": {
"x": 228,
"y": 564
}
},
{
"spatialPoint": {
"x": 1.292926073318682E7,
"y": 3279503.7847872227,
"z": 0
},
"videoPoint": {
"x": 735,
"y": 641
}
},
{
"spatialPoint": {
"x": 1.2929358878926704E7,
"y": 3279505.9148433916,
"z": 0
},
"videoPoint": {
"x": 947,
"y": 504
}
},
{
"spatialPoint": {
"x": 1.2929424599934718E7,
"y": 3279463.9504835536,
"z": 0
},
"videoPoint": {
"x": 859,
"y": 262
}
},
{
"spatialPoint": {
"x": 1.2929388108285695E7,
"y": 3279545.695535939,
"z": 0
},
"videoPoint": {
"x": 1324,
"y": 465
}
},
{
"spatialPoint": {
"x": 1.2929322376055904E7,
"y": 3279573.704751997,
"z": 0
},
"videoPoint": {
"x": 1183,
"y": 579
}
}
],
"fovX": 0,
"fovY": 0,
"isIntrinsic": false,
"isExtrinsic": false,
"cameraLocation": {
"cameraRoll": -0.7656412825751551,
"cameraYaw": -70.89065135311759,
"cameraY": 3279448.7247,
"cameraZ": 65.78334160898069,
"cameraX": 1.29295170697E7,
"cameraPitch": -39.80838777192129
}
},
"clipRegion": {
"center": {
"x": 770,
"y": 385
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
"x": 1540,
"y": 0
},
{
"x": 1540,
"y": 770
},
{
"x": 0,
"y": 770
},
{
"x": 0,
"y": 0
}
]
},
"zoom": 1,
"time": 12.733333333333333,
"validBounds": {
"OUT_TOP": 2,
"OUT_RIGHT": 4,
"size": {
"width": 1540,
"height": 770
},
"x": 0,
"width": 1540,
"y": 0,
"OUT_BOTTOM": 8,
"location": {
"x": 0,
"y": 0
},
"OUT_LEFT": 1,
"height": 770
},
"tilt": 23.9,
"pan": 136,
"videoHeight": 770
},
{
"videoWidth": 1540,
"calibrationModel": {
"isRansac": false,
"centerY": 0,
"centerX": 0,
"calibrationModelType": 0,
"calibrationPoints": [
{
"spatialPoint": {
"x": 1.292947775352481E7,
"y": 3279486.5758288642,
"z": 0
},
"videoPoint": {
"x": 1111,
"y": 52
}
},
{
"spatialPoint": {
"x": 1.2929377985228604E7,
"y": 3279478.5103589036,
"z": 0
},
"videoPoint": {
"x": 374,
"y": 420
}
},
{
"spatialPoint": {
"x": 1.292926073318682E7,
"y": 3279503.7847872227,
"z": 0
},
"videoPoint": {
"x": 263,
"y": 611
}
},
{
"spatialPoint": {
"x": 1.2929358878926704E7,
"y": 3279505.9148433916,
"z": 0
},
"videoPoint": {
"x": 491,
"y": 499
}
},
{
"spatialPoint": {
"x": 1.2929424599934718E7,
"y": 3279463.9504835536,
"z": 0
},
"videoPoint": {
"x": 448,
"y": 248
}
},
{
"spatialPoint": {
"x": 1.2929388108285695E7,
"y": 3279545.695535939,
"z": 0
},
"videoPoint": {
"x": 860,
"y": 506
}
},
{
"spatialPoint": {
"x": 1.2929407825861763E7,
"y": 3279565.077638886,
"z": 0
},
"videoPoint": {
"x": 1046,
"y": 497
}
},
{
"spatialPoint": {
"x": 1.2929445928769993E7,
"y": 3279564.7923564096,
"z": 0
},
"videoPoint": {
"x": 1269,
"y": 418
}
}
],
"fovX": 0,
"fovY": 0,
"isIntrinsic": false,
"isExtrinsic": false,
"cameraLocation": {
"cameraRoll": -0.7656412825751551,
"cameraYaw": -50.89065135311759,
"cameraY": 3279448.7247,
"cameraZ": 65.78334160898069,
"cameraX": 1.29295170697E7,
"cameraPitch": -39.80838777192129
}
},
"clipRegion": {
"center": {
"x": 770,
"y": 385
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
"x": 1540,
"y": 0
},
{
"x": 1540,
"y": 770
},
{
"x": 0,
"y": 770
},
{
"x": 0,
"y": 0
}
]
},
"zoom": 1,
"time": 23.266666666666666,
"validBounds": {
"OUT_TOP": 2,
"OUT_RIGHT": 4,
"size": {
"width": 1540,
"height": 770
},
"x": 0,
"width": 1540,
"y": 0,
"OUT_BOTTOM": 8,
"location": {
"x": 0,
"y": 0
},
"OUT_LEFT": 1,
"height": 770
},
"tilt": 23.9,
"pan": 116,
"videoHeight": 770
}
],
"parameterInterpolation": false
},
"fieldNames": [
"SMID",
"SMUSERID"
],
"name": "ptz旋转画面.mp4",
"startTime": "2023/11/22 09:16:51",
"geometry": {
"center": {
"x": 1.292926198036702E7,
"y": 3279399.5618885513
},
"parts": [5],
"style": null,
"prjCoordSys": null,
"id": 1,
"type": "REGION",
"partTopo": [1],
"points": [
{
"x": 1.2929466274270147E7,
"y": 3279386.794475903
},
{
"x": 1.2929463599646807E7,
"y": 3279488.8953134995
},
{
"x": 1.2929031336155694E7,
"y": 3279642.3491254174
},
{
"x": 1.292908470565614E7,
"y": 3279156.774651685
},
{
"x": 1.2929466274270147E7,
"y": 3279386.794475903
}
]
},
"endTime": "2023/11/22 09:16:58",
"fieldValues": [
"1",
"0"
],
"ID": 1,
"cameraLocation": {
"cameraRoll": -0.7656412825751551,
"cameraYaw": -90.89065135311759,
"cameraY": 3279448.7247,
"cameraZ": 65.78334160898069,
"cameraX": 1.29295170697E7,
"cameraPitch": -39.80838777192129
}
}],
"featureUriList": [],
"datasetInfos": [{
"fieldInfos": [
{
"name":
"SmID",
"caption": "SmID",
"type": "INT32"
},
{
"name": "SmUserID",
"caption": "SmUserID",
"type": "INT32"
}
],
"featureRange": {
"start": 0,
"end": 0
},
"datasetName": "NewDatasource:ptz旋转画面_2"
}],
"totalCount": 1,
"featureCount": 1
}
### 
#### 示例11 空间查询结果支持分组统计（以 BOUNDS_ATTRIBUTEFILTER 查询模式为例)
对示例 featureResults 资源：http://supermapiserver:8090/iserver/services/data-China_pgis/rest/data/featureResults.rjson?returnContent=true 执行 POST 请求，对 PostGIS 数据源中的数据进行范围查询，并对结果进行分组统计，请求体中的参数示例如下：
{
"getFeatureMode": "BOUNDS_ATTRIBUTEFILTER",
"maxFeatures": "100",
"datasetNames": [
"testdata:购物服务BF"
],
"attributeFilter": "SMID > 2000000",
"groupBy": "province",
"fields": [
"province",
"COUNT(province) as countmall"
],
"bounds": {
"leftBottom": {
"x": 100.84,
"y": 23.09
},
"rightTop": {
"x": 120.86,
"y": 23.11
}
}
}
返回 rjson 格式的操作结果表述如下：
{
"features": [
{
"stringID": null,
"fieldNames": [
"province",
"countmall"
],
"geometry": null,
"fieldValues": [
"GUANGDONG",
"18"
],
"ID": -1
},
{
"stringID": null,
"fieldNames": [
"province",
"countmall"
],
"geometry": null,
"fieldValues": [
"GUANGXI",
"1143"
],
"ID": -1
},
{
"stringID": null,
"fieldNames": [
"province",
"countmall"
],
"geometry": null,
"fieldValues": [
"YUNNAN",
"4"
],
"ID": -1
}
],
"featureUriList": [],
"datasetInfos": [
{
"fieldInfos": [
{
"name": "province",
"caption": "province",
"type": "WTEXT"
},
{
"name": null,
"caption": null,
"type": null
}
],
"featureRange": {
"start": 0,
"end": 2
},
"datasetName": "testdata:购物服务BF"
}
],
"totalCount": 3,
"featureCount": 3
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 featureResults 资源是否存在，或者客户端是否有权限访问 featureResults 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 featureResults 资源是否支持<format>格式的表述。
## 请参见
- [featureResult](featureResult.htm)，[data](../data.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)