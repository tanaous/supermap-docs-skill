# queryResults

## URI
[<map_uri>](../map.htm#URI)/queryresults[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](../map.htm)
## 子资源
[queryResult](queryResult.htm)
## 介绍
queryResults 资源表示查询结果的集合，通过该资源可以对地图（{mapName}）进行 SQL 查询、距离查询、空间查询、最近地物查询、范围查询以及海图查询等。
关于本资源的相关使用示例请参考：[SQL 查询](../../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Query_Opr/QueryBySQL.htm)、[关联表 SQL 查询](../../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Query_Opr/queryByLinkItem.htm)、[距离查询](../../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Query_Opr/QueryByDistance.htm)。
支持的方法：
- [GET](#GET 请求)：获取查询结果集合。
- [POST](#POST 请求)：按照给定参数创建一个地图查询的结果资源。
- [HEAD](#HEAD 请求)：获取查询结果集合资源的元数据信息。检查该 queryResults 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON、GeoJSON、FlatGeobuf。
注：查询的图层为点、线、面数据集类型时，GeoJSON表述可用。
## 资源层次
!\[](../../../../../../assets/images/root/maps/map/queryResults/queryresults.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}），URI 表示一个“世界地图” 的查询集合。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/queryResults.rjson
### ](../../../root.htm)GET 请求
获取查询结果的集合，即已创建的 queryResult 资源表述集合。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】
是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 queryResults 资源执行 GET 请求得到的是 queryResult 资源信息的集合，集合中的每一个元素的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | queryResult 资源的名称。 |
| path | String | queryResult 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 数据源资源支持的表述的媒体类型。 |
#### 示例
在一次成功的查询（即对 queryResults 成功执行 [POST 请求](#POST 请求)）后，queryResults 资源里保存了查询结果的信息，对 queryResults 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[{
"name": "1",
"path": "http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/queryResults/1.rjson",
"resourceConfigID": null,
"resourceType": "ArithResultResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html"
]
}]
### POST 请求
按照给定参数创建一个地图查询的结果资源，其中 returnContent 必须包含在 URI 中。
#### 请求参数
通过对 queryResults 资源执行 POST 请求，可以进行 SQL 查询、距离查询、空间查询、最近地物查询、范围查询等，由 queryMode 参数来指定进行的是哪种查询模式，不同查询模式用到的查询参数也不一样。其中，URI 中的参数为可选参数。
URI 中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| returnContent | boolean | 是否立即返回新创建资源的表述还是返回新资源的 URI，默认为 false。
如果为 true，则直接返回新创建资源，即查询结果的表述。如果为 false，则返回的是查询结果资源的 URI。 |
| withIndex | boolean | 当使用 FlatGeobuf 表述时该参数可选。表示返回的表述为 FlatGeobuf 的结果是否包含空间索引，默认为true。 |
| returnCustomResult | boolean | 是否返回查询结果的 Bounds 信息，当 returnContent=false 时有效。
如果为 true，返回查询结果的 Bounds 信息（响应结构中的 customResult 字段）。
如果为 false，则不返回 Bounds 信息。默认为 false。 |
其中，对 queryResults 执行 POST 请求时，如果 returnContent 为 true，将直接得到查询结果资源（queryResult）的表述；如果 returnContent 为 false，将得到结果资源（queryResult 资源）的 URI，对该结果资源执行 GET 操作，可得到需要的结果。
请求体中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| queryMode | [QueryMode](../../../../../iServerJavadoc/com/supermap/services/rest/commontypes/QueryMode.html) | 【必选参数】
查询的模式，有 SQL 查询、距离查询、空间查询、最近地物查找、范围查询以及海图查询等几种类型。其中：
- 对于三维点、线、面图层，目前只支持 SQL 查询和范围查询
- 对于 CAD 图层，目前只支持 SQL 查询和范围查询
- 对于海图服务，目前支持海图属性查询和海图范围查询两种模式，参数见[附表 海图查询参数](#附表_海图查询参数)。
- EPS数据目前仅支持SQL查询和范围查询
- 当查询的模式为最近地物查找时，会对查询结果按照距离进行升序排列。 |
| queryParameters | [QueryParameterSet](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameterSet.html) | 【必选参数】
属性查询的参数集合，包含了查询参数数组（[queryParams](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html)）、期望返回的结果记录数（expectCount）、查询起始记录位置（startRecord）、查询结果选项对象（queryOption）等，详情请参考 [QueryParameterSet](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameterSet.html)。
其中，查询参数数组（[queryParams](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html)）包含要查询的图层的名称（name）、查询字段数组（fields）、SQL 查询属性过滤条件（attributeFilter）、分组条件（groupBy）、查询 id 数组（ids）、连接查询项数组（joinItems）、关联外部表（linkItems）、SQL 查询排序的字段（orderBy）等信息。
注意：
1.部分查询模式，不支持所有的查询参数，详情如右单元格。
2.当设置关联查询（linkItems）参数时，如果设置的关联表中的字段不存在，则可能没有查询结果。
3.使用分组条件（groupBy）参数时，需设置查询字段为分组字段或其他统计字段。
4.对于期望返回的结果记录数（expectCount），当您设置为<0的值时，将默认返回 1000 条记录（您可通过修改服务配置文件iserver-service.xml文件中 UGCMapProviderSetting>>queryExpectCount 的参数值来设置其他默认返回记录数）；当您设置为0时，将返回所有查询结果；当您设置为>0的值时，将根据该值返回结果记录数。
5. 对于 ArcSDE for Oracle 数据源，若需进行 ID 查询，仅支持 id 数小于等于 200 的查询 | 距离查询：不支持查询参数数组（[queryParams](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html)）中的fields、ids、name、groupBy、orderBy、joinItems、linkItems等
注意：当查询模式为距离查询，且查询结果数大于期望返回的结果记录数（expectCount）时，距离查询结果为从查询总记录中随机抽取的 expectCount 个地物。 |
| 范围查询：不支持查询参数数组（[queryParams](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html)）中的fields、ids、name、groupBy、orderBy、joinItems、linkItems等 |
| 最近地物查找：不支持查询参数数组（[queryParams](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html)）中的fields、ids、name、groupBy、orderBy、joinItems、linkItems等，不支持查询起始记录位置（startRecord）参数。
注意：当查询模式为最近地物查找，且查询结果数大于期望返回的结果记录数（expectCount）时，最近地物查找结果为查询总记录中距离中心最近的 expectCount 个地物，这 expectCount 个地物为无序排列。 |
| 空间查询：不支持 groupBy 字段，否则可能导致空间查询的结果不正确。 |
| SQL 查询时：
注意：1.当查询模式为 SQL 查询时，如果在系统配置文件（参见：[iServer 配置文件说明](../../../../../../Appendix/iServer_configInfo.htm)）中设置了 SQL 查询表达式中需要屏蔽掉的字符串，那么在 SQL 查询过滤条件（attributeFilter）中一旦发现输入了已经设置的字符串，系统会认为该条查询表达式非法并返回400参数异常，防止 SQL 注入。如果在系统配置文件中没有设置 SQL 查询表达式中需要屏蔽掉的字符串，那么在 SQL 查询过滤条件（attributeFilter）中会默认屏蔽掉分号。
2.当查询模式为 SQL 查询，查询的数据量较大，且存储在 PostGIS、PostgreSQL、MySQL 等空间数据库中时，如果该数据库支持空间几何函数查询，您还可以在查询参数中，如：查询字段数组（fields）、SQL 查询属性过滤条件（attributeFilter）等写入空间几何函数，利用空间数据库进行计算，从而缓解 iServer 计算压力，提高返回结果的速度。请求体示例参见 [示例6 SQL查询-以空间几何函数为条件](#示例6_SQL查询_以空间几何函数为条件) |
| geometry | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | queryMode 为距离查询或空间查询时必选。
空间对象信息。geometry 的投影坐标系与地图坐标系相同。 |
| bounds | [Rectangle2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | queryMode 为范围查询时必选。
查询指定图层落在该范围内的记录。bounds 的投影坐标系与地图坐标系相同。 |
| spatialQueryMode | [SpatialQueryMode](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/SpatialQueryMode.html) | queryMode 为空间查询时必选。
空间查询操作模式。
有包含、交叉、分离、重合、相交、叠加、 邻接、被包含等。 |
| distance | double | queryMode 为距离查询或最近地物查询时必选。distance 的单位与地图坐标单位相同。
距离查询时，表示距离地物的距离。最近地物查询时，表示搜索的范围。 |
附表 海图查询参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| queryMode | [QueryMode](../../../../../iServerJavadoc/com/supermap/services/rest/commontypes/QueryMode.html) | 海图查询，有以下模式：海图属性查询（ChartAttributeQuery）、海图范围查询（ChartBoundsQuery）和海图要素范围查询模式（ChartFeatureBoundsQuery）。 |
| chartLayerNames | String[] | 待查询的图层名。若数组长度为 0，则查询全部图层。当查询模式为 ChartAttributeQuery、ChartBoundsQuery 时必填。 |
| chartQueryParameters | [ChartQueryParameterSet](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ChartQueryParameterSet.html) | 海图查询参数集合（数组）。当查询模式为 ChartAttributeQuery、ChartBoundsQuery 时必填。包含以下参数：
- 
[chartQueryParams](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ChartQueryParameter.html)，海图查询参数数组，详细参数见下表；
- 
startRecord，查询起始记录位置，默认为 0。当对多个海图数据集进行查询时，该参数对每个数据集分别生效。
- 
expectCount，查询记录期望返回结果记录，该值大于 0。当对多个海图数据集进行查询时，该参数对每个数据集分别生效。
- 
expectCount，查询记录期望返回结果记录，该值大于 0。 |
| bounds | [Rectangle2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 指定的查询范围，当查询模式为 ChartBoundsQuery、ChartFeatureBoundsQuery 时必填。 |
海图查询参数数组（chartQueryParams[]）
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| attributeFilter | String | 查询过滤条件。 |
| charFeatureInfoSpecCode | int | 查询物标代号，可通过 [chartFeatureInfoSpecs](../chartFeatureInfoSpecs.htm) 资源查看物标类对应的代号。 |
| isQueryLine | boolean | 是否查询线。 |
| isQueryPoint | boolean | 是否查询点。 |
| isQueryRegion | boolean | 是否查询面。 |
关键字查询
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| queryMode | [QueryMode](../../../../../iServerJavadoc/com/supermap/services/rest/commontypes/QueryMode.html) | 【必选参数】关键字查询（KeywordsQuery）。 |
| keywordsQueryParameters | [KeywordsQueryParameterSet](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/KeywordsQueryParameterSet.html) | 【必选参数】关键字查询参数集合。 |
####  
#### 响应结构
对 queryResults 资源执行 POST 请求，进行查询，创建查询结果资源。
在 returnContent=false 的情况下，返回操作结果的表述如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 查询是否成功。 |
| newResourceID | String | 查询结果资源的 ID。 |
| postResultType | [postResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型。
说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
| customResult | Object | 返回查询结果的 Bounds 信息。
如果地图设置了动态投影，返回的 Bounds 的投影坐标系与地图坐标系相同。
如果地图没有设置动态投影，返回的 Bounds 的投影坐标系与查询结果所在的数据集的投影坐标系相同。 |
在 returnContent=true 的情况下，返回的表述中没有 newResourceLocation 字段，取而代之的是 newResourceLocation 所标识的资源，即 queryResult 资源的表述。请参见 [queryResult 资源表述的结构](queryResult.htm#queryResult_表述)。
注意，queryResult 的表述中，查询记录集中的字段信息由 Recordset 中的 fields 字段记录。每个 Feature 中的 fieldNames 字段均为 null。
#### 示例1：SQL 查询
对 queryResults 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/queryResults.rjson?returnCustomResult=true，执行如下参数的 POST 请求，对 World 地图进行 SQL 查询：
{
"queryMode": "SqlQuery",
"bounds": {
"leftBottom": {
"x": 0,
"y": 0
},
"rightTop": {
"x": 100,
"y": 100
}
},
"distance": 1,
"queryParameters": {
"queryParams": [{
"attributeFilter": "SMID %26gt; 0",
"name": "ContinentLabel@World"
}],
"startRecord": 0,
"expectCount": 20,
"networkType": "LINE",
"queryOption": "ATTRIBUTEANDGEOMETRY"
},
"spatialQueryMode": "INTERSECT"
}
返回 rjson 格式的资源描述如下：
{
"succeed": true,
"newResourceID": "iypwfdzf_91c24c622e9641e18a808ae8a89f698b",
"postResultType": "CreateChild",
"customResult": {
"rightTop": {
"y": 55.98430295074347,
"x": 140.7362260537166
},
"leftBottom": {
"y": -82.49592439558907,
"x": -119.53556537446983
},
"bottom": -82.49592439558907,
"left": -119.53556537446983,
"right": 140.7362260537166,
"top": 55.98430295074347
},
"newResourceLocation": "http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/queryResults/iypwfdzf_91c24c622e9641e18a808ae8a89f698b.json"
}
对 "http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/queryResults/1.rjson” 执行 GET 请求，即获取查询的具体结果。请参见 [queryResult 的 GET 请求](queryResult.htm#GET 请求)。
#### 示例2：SQL 查询返回 GeoJSON 表述的结果
对 queryResults 资源：http://supermapiserver:8090/iserver/services/map-World/rest/maps/世界地图/queryResults.geojson?returnCustomResult=true，执行如下参数的 POST 请求，对 World 地图进行 SQL 查询：
{
"queryMode": "SqlQuery",
"bounds": {
"leftBottom": {
"x": 0,
"y": 0
},
"rightTop": {
"x": 100,
"y": 100
}
},
"distance": 1,
"queryParameters": {
"queryParams": [{
"attributeFilter": "SMID %26gt; 0",
"name": "Capitals@World"
}],
"startRecord": 0,
"expectCount": 1,
"networkType": "LINE",
"queryOption": "ATTRIBUTEANDGEOMETRY"
},
"spatialQueryMode": "INTERSECT"
}
返回 geojson 格式的资源描述如下：
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
"SmGeometrySize":"16",
"CAP_POP":"2207718.0",
"COUNTRY_CH":"巴西",
"CAPITAL_EN":"Brasilia",
"POP":"2207718.0",
"CAPITAL_CH":"巴西利亚",
"SMID":"1",
"COUNTRY":"巴西",
"CAPITAL_LO":"Brasília",
"COUNTRY_EN":"Brazil",
"SmUserID":"0",
"USERID":"0",
"SMY":"-15.792110943058866",
"SMX":"-47.8977476573595",
"SMUSERID":"0",
"CAPITAL":"巴西利亚",
"SmLibTileID":"1"
}
}],
"type":"FeatureCollection"
}
#### 示例3：SQL查询—多字段分组统计
对 queryResults 资源：http://localhost:8090/iserver/services/map-China100/rest/maps/China/queryResults.json，执行如下参数的 POST 请求，对 Airport_pt@China#1 图层进行多字段分组统计：
{
"queryMode": "SqlQuery",
"bounds": {
"leftBottom": {
"x": 0,
"y": 0
},
"rightTop": {
"x": 100,
"y": 100
}
},
"distance": 1,
"queryParameters": {
"queryParams": [
{
"name": "Airport_pt@China#1",
"fields":["min(GB) as minANGLE","max(ANGLE) as maxSmGeometrySize","SUM(GB) as SUMSmGeometrySize","SUM(ANGLE) as sumAngle"],
"groupBy":"NAME"
}
],
"startRecord": 0,
"expectCount": 40,
"networkType": "LINE",
"queryOption": "ATTRIBUTEANDGEOMETRY"
},
"keywords": "",
"spatialQueryMode": "INTERSECT"
}
其中，queryParams 查询参数数组包含要查询的图层的名称（name）、查询字段数组（fields）、分组条件（groupBy）。
返回 rjson 格式的资源描述如下：
{
"postResultType": "CreateChild",
"newResourceID": "6ea0d91a10224b6dbdbf0215df433e26_56f2a45c75d742d4a793255a6e1959fa",
"succeed": true,
"newResourceLocation": "http://localhost:8090/iserver/services/map-China100/rest/maps/China/queryResults/6ea0d91a10224b6dbdbf0215df433e26_56f2a45c75d742d4a793255a6e1959fa.json"
}
对 "http://localhost:8090/iserver/services/map-China100/rest/maps/China/queryResults/6ea0d91a10224b6dbdbf0215df433e26_56f2a45c75d742d4a793255a6e1959fa.json” 执行 GET 请求，即获取查询的具体结果。请参见 [queryResult 的 GET 请求](queryResult.htm#GET 请求)。
#### 示例4：对 CAD 图层进行范围查询
请求体示例：
{
"queryMode": "BoundsQuery",
"bounds": {
"leftBottom": {
"x": 112.35,
"y": 34.6
},
"rightTop": {
"x": 112.4,
"y": 34.62
}
},
"distance": 1,
"queryParameters": {
"queryParams": [{
"attributeFilter": "SMID &gt; 0",
"name": "testCAD@test1"
}],
"startRecord": 0,
"expectCount": 20,
"networkType": "LINE",
"queryOption": "ATTRIBUTEANDGEOMETRY"
},
"keywords": "",
"spatialQueryMode": "INTERSECT"
}
响应结果示例：
{
"customResult": {
"bottom": 34.54666099978054,
"left": 112.26249133678498,
"leftBottom": {
"x": 112.26249133678498,
"y": 34.54666099978054
},
"right": 112.48668999981291,
"rightTop": {
"x": 112.48668999981291,
"y": 34.72305325426654
},
"top": 34.72305325426654
},
"newResourceID": "62599fc42ee044c7acea57b5e8d9bc87_9bfbea897ac3473fa75728ed0880f8fb",
"newResourceLocation": "http://server:8090/iserver/services/map-henan/rest/maps/luoyang/queryResults/62599fc42ee044c7acea57b5e8d9bc87_9bfbea897ac3473fa75728ed0880f8fb.rjson",
"postResultType": "CreateChild",
"succeed": true
}
#### 示例5：ECQL查询
对 queryResults 资源：http://supermapiserver:8090/iserver/services/map-demo/rest/maps/map_hbase/queryResults.rjson?returnCustomResult=true，执行如下参数的 POST 请求，对分布式数据地图使用 ECQL 语言进行查询，请求体中的参数示例如下：
{
"queryMode": "SqlQuery",
"queryParameters": {
"queryParams": [{
"attributeFilter": "BBOX(the_geom,103 ,17 ,119 ,27)",
"name": "Muifa_4326@map_hbase"
}],
"startRecord": 0,
"expectCount": 20,
"queryOption": "ATTRIBUTEANDGEOMETRY"
},
}
返回 rjson 格式的操作结果表述如下：
[{
"resourceConfigID": null,
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/fastjson",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"image/bmp",
"image/gif",
"image/jpeg",
"image/jpg",
"image/png",
"image/webp",
"application/geojson"
],
"path": "http://localhost:8090/iserver/services/map-demo/rest/maps/ map_hbase/queryResults/3899fc437cd748e1b60b92aa87083f54_af3b0f0dcc1248a8b7c57029b783fbfc.rjson",
"name": "3899fc437cd748e1b60b92aa87083f54_af3b0f0dcc1248a8b7c57029b783fbfc",
"resourceType": "ArithResultResource"
}]
对 http://localhost:8090/iserver/services/map-demo/rest/maps/ map_hbase/queryResults/3899fc437cd748e1b60b92aa87083f54_af3b0f0dcc1248a8b7c57029b783fbfc.rjson 执行 GET 请求，即获取查询的具体结果:
{
"recordsets": [
{
"datasetName": "Muifa_4326",
"features": [
{
"fieldNames": [],
"ID": 0,
"fieldValues": [],
"geometry": {
"id": 0,
"center": {
"y": 24.1,
"x": 132.8
},
"style": null,
"parts": [
1
],
"partTopo": [],
"points": [
{
"y": 24.1,
"x": 132.8
}
],
"type": "POINT"
}
},
{
"fieldNames": [],
"ID": 0,
"fieldValues": [],
"geometry": {
"id": 0,
"center": {
"y": 24.4,
"x": 131.4
},
"style": null,
"parts": [
1
],
"partTopo": [],
"points": [
{
"y": 24.4,
"x": 131.4
}
],
"type": "POINT"
}
},
{
"fieldNames": [],
"ID": 0,
"fieldValues": [],
"geometry": {
"id": 0,
"center": {
"y": 24.3,
"x": 132.1
},
"style": null,
"parts": [
1
],
"partTopo": [],
"points": [
{
"y": 24.3,
"x": 132.1
}
],
"type": "POINT"
}
}
],
"fieldCaptions": [],
"fieldTypes": [],
"fields": []
}
],
"totalCount": 3,
"currentCount": 3,
"customResponse": null
}
返回 rjson 格式的资源描述如下：
{
"postResultType": "CreateChild",
"newResourceID": "3bd49e762198498aa7ce26d6dbde94bd_a17b2f68d6e949f88a2af296a36c70e9",
"succeed": true,
"customResult": {
"top": 0,
"left": 0,
"bottom": 0,
"leftBottom": {
"x": 0,
"y": 0
},
"right": 0,
"rightTop": {
"x": 0,
"y": 0
}},
"newResourceLocation": "http://lsupermapiserver:8090/iserver/services/map-postgisMap/rest/maps/postgisMap/queryResults/3bd49e762198498aa7ce26d6dbde94bd_a17b2f68d6e949f88a2af296a36c70e9.rjson"
}
### 示例6：海图物标查询
对 queryResults 资源：http://localhost:8090/iserver/services/map-ChartW/rest/maps/海图/queryResults.rjson，执行如下参数的 POST 请求，对海图进行物标查询，请求体中的参数示例如下：
{
"queryMode": "ChartAttributeQuery",
"chartLayerNames":[],
"chartQueryParameters":{
"startRecord":0,
"expectCount":20,
"chartQueryParams" :[{
"isQueryLine":true,
"isQueryRegion":true,
"isQueryPoint":true,
"chartFeatureInfoSpecCode":1,
"attributeFilter":"SMID &gt; 0",
}]
}
}
返回 rjson 格式的操作结果表述如下：
{
"postResultType": "CreateChild",
"newResourceID": "1c2fe8d95c3345ea8a1c58993c26cf60_5bff7f6ccdf84c958fb35a4009b185c7",
"succeed": true,
"newResourceLocation": "http://localhost:8099/iserver/services/map-Chart9FU/rest/maps/Chart9Fu/queryResults/1c2fe8d95c3345ea8a1c58993c26cf60_5bff7f6ccdf84c958fb35a4009b185c7.rjson"
}
### 示例7：海图要素范围查物标要素属性
对 queryResults 资源：http://localhost:8090/iserver/services/map-ChartW/rest/maps/海图/queryResults.rjson?returnContent=true，执行如下参数的 POST 请求，对海图进行范围查询物标要素属性，请求体中的参数示例如下：
{
"queryMode": "ChartFeatureBoundsQuery",
"bounds": {
"leftBottom": {
"x": -94.4657,
"y": 29.3078
},
"rightTop": {
"x": -94.4657,
"y": 29.3078
}
}
}
返回 rjson 格式的操作结果表述如下：
{
"recordsets": [
{
"chartFeatureRecordsets": [
{
"features": [
{
"stringID": null,
"fieldNames": [
"SmID",
"SmUserID",
"SmArea",
"SmPerimeter",
"SmGeoParam",
"OBJL",
"Acronym",
"RCID",
"AGEN",
"FIDN",
"FIDS",
"RVER",
"LNAM",
"EditLockMark",
"CATCOV",
"INFORM",
"NINFOM",
"SORDAT",
"SORIND"
],
"geometry": {
"center": {
"x": -94.80250174809055,
"y": 29.5730139
},
"parts": [
9,
190
],
"style": null,
"prjCoordSys": null,
"id": 1,
"type": "REGION",
"partTopo": [
1,
-1
],
"points": []
},
"fieldValues": [
"1",
"0",
"1.953887397850922E9",
"533230.5058583332",
"",
"302",
"M_COVR",
"7060",
"550",
"196166459",
"4696",
"1",
"US019616645904696",
"",
"2",
"",
"",
"20100614",
"US,US,grapg,Chart 11326"
],
"ID": 1
}
],
"acronym": "M_COVR",
"datasetName": "US4TX58M_80000_M_COVR_R@S57ChartReadOnly"
}
],
"datasetGroupName": "US4TX58M_80000"
}
],
"totalCount": 14
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 queryResults 地图资源是否存在，或者客户端是否有权限访问 queryResults 地图资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 queryResults 地图资源是否支持<format>格式的表述。
## 请参见
- 
[map](../map.htm)
，[queryResult](queryResult.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)