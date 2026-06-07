# queryResult

## URI
[<queryResults_uri>](queryResults.htm#URI)/{resultID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[queryResults](queryResults.htm)
## 介绍
queryResult 资源表示对地图查询的一个结果，在对 [queryResults](queryResults.htm) 执行 [POST 请求](queryResults.htm#POST 请求)的时候被创建。对 queryResult 资源（{resultID}）执行 GET 请求，可以获取该查询结果的表述。
查询结果可以[叠加在 map 资源上显示](../map.htm#地图查询结果_queryResult_可以借助_map_资源的_JavaScript_表述叠加在地图上进行显示_如_queryResultID_eiicoeik_889fa578956b4c90bb8aa841e5abfb7d_)（目前地图的 JavaScript 表述中支持该功能），便于可视化的查看查询结果的具体信息。
支持的方法：
- [GET](#GET 请求)：获取查询结果资源的表述。查询分属性查询、空间查询、距离查询、范围查询等。
- [HEAD](#HEAD 请求)：获取查询结果资源的元数据信息。检查 queryResult 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、PNG、JSONP、FASTJSON、GeoJSON、FlatGeobuf。
注：查询的图层为点、线、面数据集类型时，GeoJSON表述可用。
## 资源层次
!\[](../../../../../../assets/images/root/maps/map/queryResults/queryresult.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，"世界地图"是地图名（{mapName}），ID 为1是对父资源 queryResults 进行距离查询后的结果资源，URI 表示"世界地图"的一个 ID 为 1的查询结果。
"http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/queryResults/1.json
### ](../../../root.htm)GET 请求
获取查询结果资源的表述。可能是 SQL 查询、距离查询、空间查询、最近地物查询、范围查询等查询的结果。
#### 请求参数
通过对 queryResult 资源执行 GET 请求，可以获取查询的结果，可以在 URI 中包含参数，如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| realtime | boolean | 【可选参数】 表示是否要求查询结果是实时的。如果为 true，则重新查询一次，返回结果。如果为 false，则直接从缓存中取出结果。默认为 false。 |
| withIndex | boolean | 当使用 FlatGeobuf 表述时该参数可选。表示返回的表述为 FlatGeobuf 的结果是否包含空间索引，默认为true。 |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
当对 queryResult 资源执行 GET 请求，获取图片格式的查询结果时，URI 中还可包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| useGeoCoordSys | boolean | 出图时投影坐标系统是否转为能够加载在三维场景中的地理经纬坐标。 |
| rectifyViewer | boolean | 出图时是否自动校正图片大小，使之与查询结果的出图范围一致。如果为 true，则自动校正图片大小，false 则不自动校正，返回图片原始大小。 |
| style | [Style](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Style.html) | 查询结果中高亮目标的风格。 |
| center | [Point2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 指定地图显示的中心点。 |
| scale | double | 指定地图显示的比例尺。 |
| viewer | [Rectangle](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle.html) | 指定用户显示视窗，即产生的图片的大小。 |
| transparent | boolean | 地图图片是否透明。 |
| viewBounds | [Rectangle2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 指定地图的出图范围。如果不设置此参数，则出图范围为查询结果对象的 Bounds。 |
| foreColor | Color | 指定地图的前景颜色。 |
| backColor | Color | 指定地图的背景颜色。 |
| layersID | String | 地图中要出图的临时图层集合的 ID。临时图层集通过 tempLayersSet 资源创建。 |
| prjCoordSys | [PrjCoordSys](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 当前地图的坐标参考系统。 |
| cacheEnabled | boolean | 是否使用缓存。 |
| customParams | String | 自定义定义参数。 可以是任何形式组织的字符串。用户可以通过该属性传入自定义的参数。 |
| rectifyType | [RectifyType](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/RectifyType.html) | 校验方式。 |
| clipRegion | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 地图显示裁剪的区域。 |
| clipRegionEnabled | boolean | 地图显示裁剪的区域是否有效。 |
| customEntireBounds | [Rectangle2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 地图自定义边界，customEntireBoundsEnabled 为 true 时有效。 |
| customEntireBoundsEnabled | boolean | 自定义地图边界是否有效。 |
| angle | double | 当前地图的旋转角度。 |
| antialias | boolean | 是否反走样地图。 |
| backgroundStyle | [Style](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Style.html) | 地图的背景风格。 |
| colorMode | [MapColorMode](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/MapColorMode.html) | 地图的颜色模式。 |
| markerAngleFixed | boolean | 指定点状符号的角度是否固定。 |
| dynamicProjection | boolean | 是否允许地图动态投影显示。 |
| maxVisibleTextSize | double | 文本的最大可见尺寸，单位为像素。 |
| maxVisibleVertex | int | 最大几何对象可见节点数。 如果几何对象的节点数超过指定的个数，则超过的那部分节点不显示。 |
| minVisibleTextSize | double | 文本的最小可见尺寸，单位为像素。 |
| overlapDisplayed | boolean | 重叠时是否显示对象。 |
| paintBackground | boolean | 是否绘制地图背景。 |
| textAngleFixed | boolean | 文本角度是否固定。 |
| textOrientationFixed | boolean | 文本朝向是否固定。 |
#### 响应结构
对 queryResult 资源执行 GET 请求，返回操作结果的表述如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| currentCount | int | 当次查询返回的记录数。 |
| customResponse | String | 自定义操作处理的结果。 |
| recordsets | Recodset[] | 查询记录集。 注意，查询记录集中的字段信息由 Recordset 中的 fields 字段记录。每个 Feature 中的 fieldNames 字段均为 null。 |
| totalCount | int | 根据查询条件查询到的记录的总数。 |
如果指定图片表述格式，还可返回图片。
#### 示例
对 queryResult 资源（SQL 查询结果）："http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/queryResults/1.rjson?realTime=true 执行 GET 请求，返回 rjson 格式的资源描述如下：
{
"recordsets": [{
"datasetName": "ContinentLabel@World",
"features": [{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 1,
"fieldValues": ["1", "0"],
"geometry": {
"id": 1,
"center": {
"y": 52.35440367763858,
"x": -119.53556537446983
},
"style": null,
"parts": [],
"points": [{
"y": 52.35440367763858,
"x": -119.53556537446983
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 2,
"fieldValues": ["2", "0"],
"geometry": {
"id": 2,
"center": {
"y": -6.225178716825866,
"x": -76.00486090111063
},
"style": null,
"parts": [],
"points": [{
"y": -6.225178716825866,
"x": -76.00486090111063
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 3,
"fieldValues": ["3", "0"],
"geometry": {
"id": 3,
"center": {
"y": 17.681298949489047,
"x": -4.845100172111557
},
"style": null,
"parts": [],
"points": [{
"y": 17.681298949489047,
"x": -4.845100172111557
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 4,
"fieldValues": ["4", "0"],
"geometry": {
"id": 4,
"center": {
"y": 55.52556242684099,
"x": 3.6266225414812094
},
"style": null,
"parts": [],
"points": [{
"y": 55.52556242684099,
"x": 3.6266225414812094
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 5,
"fieldValues": ["5", "0"],
"geometry": {
"id": 5,
"center": {
"y": 55.98430295074347,
"x": 75.90685445411283
},
"style": null,
"parts": [],
"points": [{
"y": 55.98430295074347,
"x": 75.90685445411283
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 6,
"fieldValues": ["6", "0"],
"geometry": {
"id": 6,
"center": {
"y": -15.215635485103824,
"x": 119.40153557283776
},
"style": null,
"parts": [],
"points": [{
"y": -15.215635485103824,
"x": 119.40153557283776
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 7,
"fieldValues": ["7", "0"],
"geometry": {
"id": 7,
"center": {
"y": 44.107602426144325,
"x": -115.86185628842777
},
"style": null,
"parts": [],
"points": [{
"y": 44.107602426144325,
"x": -115.86185628842777
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 8,
"fieldValues": ["8", "0"],
"geometry": {
"id": 8,
"center": {
"y": -13.579317239458987,
"x": -77.28893905844586
},
"style": null,
"parts": [],
"points": [{
"y": -13.579317239458987,
"x": -77.28893905844586
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 9,
"fieldValues": ["9", "0"],
"geometry": {
"id": 9,
"center": {
"y": 9.870021380388806,
"x": 4.978392169619212
},
"style": null,
"parts": [],
"points": [{
"y": 9.870021380388806,
"x": 4.978392169619212
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 10,
"fieldValues": ["10", "0"],
"geometry": {
"id": 10,
"center": {
"y": 47.802775030142584,
"x": 85.25789262109808
},
"style": null,
"parts": [],
"points": [{
"y": 47.802775030142584,
"x": 85.25789262109808
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 11,
"fieldValues": ["11", "0"],
"geometry": {
"id": 11,
"center": {
"y": 48.49246146013812,
"x": 8.834942131480886
},
"style": null,
"parts": [],
"points": [{
"y": 48.49246146013812,
"x": 8.834942131480886
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 12,
"fieldValues": ["12", "0"],
"geometry": {
"id": 12,
"center": {
"y": -23.92950049332333,
"x": 140.7362260537166
},
"style": null,
"parts": [],
"points": [{
"y": -23.92950049332333,
"x": 140.7362260537166
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 13,
"fieldValues": ["13", "0"],
"geometry": {
"id": 13,
"center": {
"y": -74.6247529762955,
"x": -18.72609062674553
},
"style": null,
"parts": [],
"points": [{
"y": -74.6247529762955,
"x": -18.72609062674553
}],
"type": "TEXT"
}
},
{
"fieldNames": ["SMID", "SMUSERID"],
"ID": 14,
"fieldValues": ["14", "0"],
"geometry": {
"id": 14,
"center": {
"y": -82.49592439558907,
"x": 20.83813963589205
},
"style": null,
"parts": [],
"points": [{
"y": -82.49592439558907,
"x": 20.83813963589205
}],
"type": "TEXT"
}
}],
"fieldCaptions": ["SmID", "SmUserID"],
"fieldTypes": ["INT32", "INT32"],
"fields": ["SMID", "SMUSERID"]
}],
"totalCount": 14,
"currentCount": 14,
"customResponse": null
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
获取 queryResult 资源的元数据信息。检查该 queryResult 资源是否存在，权限是否可以访问。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 queryResult 资源是否支持<format>格式的表述。
## 请参见
- [queryResults](queryResults.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)