# layers

## URI
[<map_uri>](../map.htm#URI)/layers[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](../map.htm)
## 子资源
[layer](layer/layer.htm)
## 介绍
layers 资源对应的是某幅地图的图层集合，通过它可以获取地图中的图层信息。
关于本资源的使用方法，可参考开发指南：[获取图层列表](../../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Layer_Opr/layerList.htm)。
支持的方法：
- [GET](#GET 请求)：获取图层集合。
- [PUT](#PUT_请求)：修改图层信息。
- [HEAD](#HEAD_请求)：获取图层资源集合的元数据信息。检查 layers 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../assets/images/root/maps/map/layers/layers.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}），URI 表示的是“世界地图”包含的图层集合，即 layers 资源。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/layers.rjson
### ](../../../root.htm)GET 请求
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 layers 资源执行 GET 请求，返回 World 地图包含的图层信息，返回资源表述的是一个图层描述数组，数组中的元素所描述的图层，可能是 SuperMap 地图图层、WMS 图层或 WFS 图层，分别对应 Java 类：UGCMapLayer、WMSLayer 或 WFSLayer。其中 UGCMapLayer 中包含了地图中 SuperMap 数据所表示的所有图层，以 UGCMapLayer 的子图层（subLayers 字段内容）的形式存在。
以 UGCMapLayer 为例，响应集合中 UGCMapLayer 子元素的结构如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| name | String | 图层的名称。图层的名称在图层所在的地图中唯一标识此图层。该标识不区分大小写。 |
| bounds | double | 图层范围。 |
| caption | String | 图层的标题。默认情况下与 name 一致。在图例、图层控制列表中显示的图层的名称就是 caption 的值。注意与 name 相区别。 |
| description | String | 图层的描述信息。 |
| queryable | boolean | 图层中的对象是否可以被查询。true 表示可以被查询，false 表示不能被查询。 |
| visible | boolean | 图层是否可见，当图层不可见时，其他所有的属性的设置将无效。 |
| type | LayerType | 图层的类型。 目前支持的图层类型包括四种：SuperMap UGC 类型图层，WFS 图层，WMS 图层以及自定义图层。 |
| subLayers | LayerCollection | 子图层集。 UGCMapLayer 中即表示 SuperMap 数据表示的图层集合。 |
| completeLineSymbolDisplayed | boolean | 是否显示完整线型。true 表示显示，false 表示不显示。 |
| maxScale | double | 图层的最大可见比例尺。最大可见比例尺不可为负，当地图的当前显示比例尺大于图层最大可见比例尺时，此图层将不显示。 默认为0。 |
| minScale | double | 图层的最小可见比例尺。最小可见比例尺不可为负。当地图的当前显示比例尺小于图层最小可见比例尺时，此图层将不显示。 默认为0。 |
| minVisibleGeometrySize | double | 几何对象的最小可见大小，单位：像素。 |
| opaqueRate | int | 图层的不透明度，0-100。 |
| symbolScalable | boolean | 是否允许图层的符号大小随图缩放。 true 表示当图层被放大或缩小时，符号也随之放大或缩小；false 表示图层的符号大小不可随图缩放。 |
| symbolScale | double | 图层的符号缩放基准比例尺。 符号缩放基准比例尺在允许符号随图缩放时有效，指定了在随图缩放时，所设置的符号大小所对应的地图显示比例尺。 |
#### 示例
对示例 layers 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/layers.rjson，执行 GET 请求，返回 rjson 格式的资源描述如下：
[{
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 90
},
"top": 90
},
"caption": null,
"completeLineSymbolDisplayed": false,
"description": "",
"maxScale": 0,
"minScale": 0,
"minVisibleGeometrySize": 0,
"name": "世界地图",
"opaqueRate": 100,
"queryable": false,
"subLayers": {
"layers": [{
"bounds": {
"bottom": -86.09592439558905,
"left": -119.53556537446984,
"leftBottom": {
"x": -119.53556537446984,
"y": -86.09592439558905
},
"right": 154.3455355728378,
"rightTop": {
"x": 154.3455355728378,
"y": 55.98430295074346
},
"top": 55.98430295074346
},
"caption": "ContinentLabel@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -86.09592439558905,
"left": -119.53556537446984,
"leftBottom": {
"x": -119.53556537446984,
"y": -86.09592439558905
},
"right": 154.3455355728378,
"rightTop": {
"x": 154.3455355728378,
"y": 55.98430295074346
},
"top": 55.98430295074346
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "ContinentLabel",
"prjCoordSys": null,
"tableName": null,
"type": "TEXT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 1.35817417E-8,
"minScale": 4.3212921E-9,
"minVisibleGeometrySize": 0,
"name": "ContinentLabel@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 240,
"green": 255,
"red": 208
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 128,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
},
{
"bounds": {
"bottom": -27.664352011124283,
"left": -174.00222163542406,
"leftBottom": {
"x": -174.00222163542406,
"y": -27.664352011124283
},
"right": 167.01111285379795,
"rightTop": {
"x": 167.01111285379795,
"y": 86.79330098005532
},
"top": 86.79330098005532
},
"caption": "OceanLabel@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -27.664352011124283,
"left": -174.00222163542406,
"leftBottom": {
"x": -174.00222163542406,
"y": -27.664352011124283
},
"right": 167.01111285379795,
"rightTop": {
"x": 167.01111285379795,
"y": 86.79330098005532
},
"top": 86.79330098005532
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "OceanLabel",
"prjCoordSys": null,
"tableName": null,
"type": "TEXT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 7.56550553E-8,
"minScale": 3.0420561E-9,
"minVisibleGeometrySize": 0,
"name": "OceanLabel@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 240,
"green": 255,
"red": 208
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 128,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
},
{
"bounds": {
"bottom": -9.314728112497873,
"left": -165.95742956747793,
"leftBottom": {
"x": -165.95742956747793,
"y": -9.314728112497873
},
"right": 136.47574396746927,
"rightTop": {
"x": 136.47574396746927,
"y": 85.66307648003726
},
"top": 85.66307648003726
},
"caption": "标签专题图",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -9.314728112497873,
"left": -165.95742956747793,
"leftBottom": {
"x": -165.95742956747793,
"y": -9.314728112497873
},
"right": 136.47574396746927,
"rightTop": {
"x": 136.47574396746927,
"y": 85.66307648003726
},
"top": 85.66307648003726
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "OceanLabelP_C",
"prjCoordSys": null,
"tableName": null,
"type": "POINT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 7.56550553E-8,
"minScale": 3.0420561E-9,
"minVisibleGeometrySize": 0,
"name": "标签专题图",
"opaqueRate": 100,
"queryable": false,
"representationField": "",
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"theme": {
"alongLine": false,
"alongLineDirection": "LEFT_TOP_TO_RIGHT_BOTTOM",
"angleFixed": false,
"backStyle": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 204,
"green": 255,
"red": 255
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 0,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"flowEnabled": true,
"items": null,
"labelBackShape": "NONE",
"labelExpression": "OceanLabelP_C.ChineseName",
"labelOverLengthMode": "NONE",
"labelRepeatInterval": 0,
"leaderLineDisplayed": false,
"leaderLineStyle": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 196,
"green": 196,
"red": 196
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 0,
"red": 0
},
"lineSymbolID": 42,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"matrixCells": null,
"maxLabelLength": 0,
"maxTextHeight": 0,
"maxTextWidth": 0,
"memoryData": null,
"minTextHeight": 0,
"minTextWidth": 0,
"numericPrecision": -1,
"offsetFixed": false,
"offsetX": "0.0",
"offsetY": "0.0",
"overlapAvoided": false,
"rangeExpression": "",
"repeatIntervalFixed": false,
"repeatedLabelAvoided": false,
"smallGeometryLabeled": false,
"type": "LABEL",
"uniformMixedStyle": null,
"uniformStyle": {
"align": "TOPLEFT",
"backColor": {
"blue": 255,
"green": 255,
"red": 255
},
"backOpaque": false,
"bold": false,
"fontHeight": 6.397365,
"fontName": "微软雅黑",
"fontScale": 1,
"fontWeight": 0,
"fontWidth": 0,
"foreColor": {
"blue": 230,
"green": 170,
"red": 0
},
"italic": true,
"italicAngle": 0,
"opaqueRate": 0,
"outline": false,
"rotation": 0,
"shadow": false,
"sizeFixed": false,
"strikeout": false,
"underline": false
}
},
"themeElementPosition": null,
"type": "UGC",
"ugcLayerType": "THEME",
"visible": false
},
{
"bounds": {
"bottom": -9.314728112497873,
"left": -165.95742956747793,
"leftBottom": {
"x": -165.95742956747793,
"y": -9.314728112497873
},
"right": 136.47574396746927,
"rightTop": {
"x": 136.47574396746927,
"y": 85.66307648003726
},
"top": 85.66307648003726
},
"caption": "OceanLabelP_C@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -9.314728112497873,
"left": -165.95742956747793,
"leftBottom": {
"x": -165.95742956747793,
"y": -9.314728112497873
},
"right": 136.47574396746927,
"rightTop": {
"x": 136.47574396746927,
"y": 85.66307648003726
},
"top": 85.66307648003726
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "OceanLabelP_C",
"prjCoordSys": null,
"tableName": null,
"type": "POINT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 7.56550553E-8,
"minScale": 3.0420561E-9,
"minVisibleGeometrySize": 0,
"name": "OceanLabelP_C@World",
"opaqueRate": 100,
"queryable": false,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 0,
"green": 0,
"red": 0
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 0,
"green": 0,
"red": 0
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 152,
"green": 132,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 0,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": false
},
{
"bounds": {
"bottom": -19.7167779655572,
"left": -166.0513892339789,
"leftBottom": {
"x": -166.0513892339789,
"y": -19.7167779655572
},
"right": 136.70336123401063,
"rightTop": {
"x": 136.70336123401063,
"y": 78.35777582760446
},
"top": 78.35777582760446
},
"caption": "标签专题图#1",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -19.7167779655572,
"left": -166.0513892339789,
"leftBottom": {
"x": -166.0513892339789,
"y": -19.7167779655572
},
"right": 136.70336123401063,
"rightTop": {
"x": 136.70336123401063,
"y": 78.35777582760446
},
"top": 78.35777582760446
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "OceanLabelP_E",
"prjCoordSys": null,
"tableName": null,
"type": "POINT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 7.56550553E-8,
"minScale": 3.0420561E-9,
"minVisibleGeometrySize": 0,
"name": "标签专题图#1",
"opaqueRate": 100,
"queryable": false,
"representationField": "",
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"theme": {
"alongLine": false,
"alongLineDirection": "LEFT_TOP_TO_RIGHT_BOTTOM",
"angleFixed": false,
"backStyle": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 204,
"green": 255,
"red": 255
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 0,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"flowEnabled": true,
"items": null,
"labelBackShape": "NONE",
"labelExpression": "OceanLabelP_E.EnglishName",
"labelOverLengthMode": "NONE",
"labelRepeatInterval": 0,
"leaderLineDisplayed": false,
"leaderLineStyle": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 196,
"green": 196,
"red": 196
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 0,
"red": 0
},
"lineSymbolID": 42,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"matrixCells": null,
"maxLabelLength": 0,
"maxTextHeight": 0,
"maxTextWidth": 0,
"memoryData": null,
"minTextHeight": 0,
"minTextWidth": 0,
"numericPrecision": -1,
"offsetFixed": false,
"offsetX": "0.0",
"offsetY": "0.0",
"overlapAvoided": false,
"rangeExpression": "",
"repeatIntervalFixed": false,
"repeatedLabelAvoided": false,
"smallGeometryLabeled": false,
"type": "LABEL",
"uniformMixedStyle": null,
"uniformStyle": {
"align": "TOPLEFT",
"backColor": {
"blue": 255,
"green": 255,
"red": 255
},
"backOpaque": false,
"bold": false,
"fontHeight": 4.422653,
"fontName": "Verdana",
"fontScale": 1,
"fontWeight": 0,
"fontWidth": 0,
"foreColor": {
"blue": 230,
"green": 170,
"red": 0
},
"italic": true,
"italicAngle": 0,
"opaqueRate": 0,
"outline": false,
"rotation": 0,
"shadow": false,
"sizeFixed": false,
"strikeout": false,
"underline": false
}
},
"themeElementPosition": null,
"type": "UGC",
"ugcLayerType": "THEME",
"visible": false
},
{
"bounds": {
"bottom": -19.7167779655572,
"left": -166.0513892339789,
"leftBottom": {
"x": -166.0513892339789,
"y": -19.7167779655572
},
"right": 136.70336123401063,
"rightTop": {
"x": 136.70336123401063,
"y": 78.35777582760446
},
"top": 78.35777582760446
},
"caption": "OceanLabelP_E@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -19.7167779655572,
"left": -166.0513892339789,
"leftBottom": {
"x": -166.0513892339789,
"y": -19.7167779655572
},
"right": 136.70336123401063,
"rightTop": {
"x": 136.70336123401063,
"y": 78.35777582760446
},
"top": 78.35777582760446
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "OceanLabelP_E",
"prjCoordSys": null,
"tableName": null,
"type": "POINT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 7.56550553E-8,
"minScale": 3.0420561E-9,
"minVisibleGeometrySize": 0,
"name": "OceanLabelP_E@World",
"opaqueRate": 100,
"queryable": false,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 0,
"green": 0,
"red": 0
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 0,
"green": 0,
"red": 0
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 152,
"green": 132,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 0,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": false
},
{
"bounds": {
"bottom": -41.21039581298828,
"left": -99.12757110595705,
"leftBottom": {
"x": -99.12757110595705,
"y": -41.21039581298828
},
"right": 175.14494323730466,
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
},
"top": 64.31326293945314
},
"caption": "标签专题图#2",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -41.21039581298828,
"left": -99.12757110595705,
"leftBottom": {
"x": -99.12757110595705,
"y": -41.21039581298828
},
"right": 175.14494323730466,
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
},
"top": 64.31326293945314
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "Capitals",
"prjCoordSys": null,
"tableName": null,
"type": "POINT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 7.56550553E-8,
"minVisibleGeometrySize": 0.4,
"name": "标签专题图#2",
"opaqueRate": 100,
"queryable": false,
"representationField": "",
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"theme": {
"alongLine": false,
"alongLineDirection": "LEFT_TOP_TO_RIGHT_BOTTOM",
"angleFixed": false,
"backStyle": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 204,
"green": 255,
"red": 255
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 0,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"flowEnabled": true,
"items": null,
"labelBackShape": "NONE",
"labelExpression": "Capital",
"labelOverLengthMode": "NONE",
"labelRepeatInterval": 0,
"leaderLineDisplayed": false,
"leaderLineStyle": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 196,
"green": 196,
"red": 196
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 0,
"red": 0
},
"lineSymbolID": 42,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 6,
"markerSymbolID": 0
},
"matrixCells": null,
"maxLabelLength": 0,
"maxTextHeight": 0,
"maxTextWidth": 0,
"memoryData": null,
"minTextHeight": 0,
"minTextWidth": 0,
"numericPrecision": -1,
"offsetFixed": true,
"offsetX": "20",
"offsetY": "0",
"overlapAvoided": false,
"rangeExpression": "",
"repeatIntervalFixed": false,
"repeatedLabelAvoided": false,
"smallGeometryLabeled": true,
"type": "LABEL",
"uniformMixedStyle": null,
"uniformStyle": {
"align": "MIDDLELEFT",
"backColor": {
"blue": 255,
"green": 255,
"red": 255
},
"backOpaque": false,
"bold": false,
"fontHeight": 4,
"fontName": "黑体",
"fontScale": 1,
"fontWeight": 0,
"fontWidth": 0,
"foreColor": {
"blue": 0,
"green": 0,
"red": 0
},
"italic": false,
"italicAngle": 0,
"opaqueRate": 0,
"outline": false,
"rotation": 0,
"shadow": false,
"sizeFixed": true,
"strikeout": false,
"underline": false
}
},
"themeElementPosition": null,
"type": "UGC",
"ugcLayerType": "THEME",
"visible": true
},
{
"bounds": {
"bottom": -41.21039581298828,
"left": -99.12757110595705,
"leftBottom": {
"x": -99.12757110595705,
"y": -41.21039581298828
},
"right": 175.14494323730466,
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
},
"top": 64.31326293945314
},
"caption": "Capitals@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -41.21039581298828,
"left": -99.12757110595705,
"leftBottom": {
"x": -99.12757110595705,
"y": -41.21039581298828
},
"right": 175.14494323730466,
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
},
"top": 64.31326293945314
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "Capitals",
"prjCoordSys": null,
"tableName": null,
"type": "POINT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 7.56550553E-8,
"minVisibleGeometrySize": 0.4,
"name": "Capitals@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 196,
"green": 196,
"red": 196
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 0,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2,
"markerSymbolID": 12
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
},
{
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 90
},
"top": 90
},
"caption": "Grids@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 90
},
"top": 90
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "Grids",
"prjCoordSys": null,
"tableName": null,
"type": "LINE"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 0,
"minVisibleGeometrySize": 0,
"name": "Grids@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 0,
"green": 0,
"red": 0
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 0,
"green": 0,
"red": 0
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 156,
"green": 158,
"red": 156
},
"lineSymbolID": 2,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 0,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
},
{
"bounds": {
"bottom": -9.500760592213298,
"left": -175.20711490151245,
"leftBottom": {
"x": -175.20711490151245,
"y": -9.500760592213298
},
"right": 131.7577398056715,
"rightTop": {
"x": 131.7577398056715,
"y": 70.43669187670935
},
"top": 70.43669187670935
},
"caption": "ContinentBoundary@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -9.500760592213298,
"left": -175.20711490151245,
"leftBottom": {
"x": -175.20711490151245,
"y": -9.500760592213298
},
"right": 131.7577398056715,
"rightTop": {
"x": 131.7577398056715,
"y": 70.43669187670935
},
"top": 70.43669187670935
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "ContinentBoundary",
"prjCoordSys": null,
"tableName": null,
"type": "LINE"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 0,
"minVisibleGeometrySize": 0,
"name": "ContinentBoundary@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 0,
"green": 0,
"red": 0
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 0,
"green": 0,
"red": 0
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 113,
"green": 105,
"red": 0
},
"lineSymbolID": 962030,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 0,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
},
{
"bounds": {
"bottom": -50.49680374515408,
"left": -178.96608326558336,
"leftBottom": {
"x": -178.96608326558336,
"y": -50.49680374515408
},
"right": 176.8499072304239,
"rightTop": {
"x": 176.8499072304239,
"y": 75.97552711993293
},
"top": 75.97552711993293
},
"caption": "CountryLabel@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -50.49680374515408,
"left": -178.96608326558336,
"leftBottom": {
"x": -178.96608326558336,
"y": -50.49680374515408
},
"right": 176.8499072304239,
"rightTop": {
"x": 176.8499072304239,
"y": 75.97552711993293
},
"top": 75.97552711993293
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "CountryLabel",
"prjCoordSys": null,
"tableName": null,
"type": "TEXT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 7.56550553E-8,
"minScale": 1.35817417E-8,
"minVisibleGeometrySize": 0.4,
"name": "CountryLabel@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 240,
"green": 255,
"red": 208
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 128,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 6,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
},
{
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
},
"top": 83.62359619140626
},
"caption": "单值专题图",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
},
"top": 83.62359619140626
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "Countries",
"prjCoordSys": null,
"tableName": null,
"type": "REGION"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 0,
"minVisibleGeometrySize": 0.4,
"name": "单值专题图",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"theme": {
"defaultStyle": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 196,
"green": 196,
"red": 196
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 0,
"green": 0,
"red": 0
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 6,
"markerSymbolID": 0
},
"items": [{
"caption": "1",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 201,
"green": 227,
"red": 193
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 181,
"green": 178,
"red": 181
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 6,
"markerSymbolID": 0
},
"unique": "1",
"visible": true
},
{
"caption": "2",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 225,
"green": 193,
"red": 196
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 181,
"green": 178,
"red": 181
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 6,
"markerSymbolID": 0
},
"unique": "2",
"visible": true
},
{
"caption": "3",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 179,
"green": 250,
"red": 255
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 181,
"green": 178,
"red": 181
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 6,
"markerSymbolID": 0
},
"unique": "3",
"visible": true
},
{
"caption": "4",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 182,
"green": 204,
"red": 252
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 181,
"green": 178,
"red": 181
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 6,
"markerSymbolID": 0
},
"unique": "4",
"visible": true
}],
"memoryData": null,
"type": "UNIQUE",
"uniqueExpression": "COLOR_MAP"
},
"themeElementPosition": null,
"type": "UGC",
"ugcLayerType": "THEME",
"visible": true
},
{
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
},
"top": 83.62359619140626
},
"caption": "Countries@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
},
"top": 83.62359619140626
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "Countries",
"prjCoordSys": null,
"tableName": null,
"type": "REGION"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 0,
"minVisibleGeometrySize": 0.4,
"name": "Countries@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 233,
"green": 239,
"red": 242
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 128,
"green": 128,
"red": 128
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
},
{
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 90
},
"top": 90
},
"caption": "Ocean@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 90
},
"top": 90
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "Ocean",
"prjCoordSys": null,
"tableName": null,
"type": "REGION"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 0,
"minVisibleGeometrySize": 0.4,
"name": "Ocean@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 204,
"green": 179,
"red": 153
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 48,
"green": 48,
"red": 48
},
"lineSymbolID": 5,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
}]
},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"visible": true
}]
### PUT 请求
修改图层信息。需要在请求体中包含 name 属性以及变化字段修改后的描述信息。
#### 请求参数
为修改图层信息资源，PUT 请求体中必须包含一些参数，如果参数合法，SuperMap iServer 服务器会根据这些参数修改 layer 资源。
这里，PUT 请求体中的参数是修改后的 layers 的描述或其子资源，即单个图层 layer 资源的描述。layers 资源的表述结构请参见：[GET 请求](#GET 请求)的响应结构，layer 资源的表述结构请参见[ layer 资源的 GET 请求](layer/layer.htm#GET 请求)的响应结构。
#### 响应结构
对 tempLayer 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 修改图层是否成功。如果不成功会有错误信息。 |
| error | HttpError | 出错信息，如果修改成功，则没有本字段。 |
#### 示例
对示例 layers 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/layers.rjson，执行 PUT 请求，修改 continent_T@World 图层信息，修改 lineColor 的属性值，请求体中的参数如下：
{
"bounds": {
"bottom": -84.34257921576281,
"left": -150.51082428252954,
"leftBottom": {
"x": -150.51082428252954,
"y": -84.34257921576281
},
"right": 154.27853258850513,
"rightTop": {
"x": 154.27853258850513,
"y": 65.22103117946571
},
"top": 65.22103117946571
},
"caption": "continent_T@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -84.34257921576281,
"left": -150.51082428252954,
"leftBottom": {
"x": -150.51082428252954,
"y": -84.34257921576281
},
"right": 154.27853258850513,
"rightTop": {
"x": 154.27853258850513,
"y": 65.22103117946571
},
"top": 65.22103117946571
},
"charset": null,
"dataSourceName": "World",
"datasourceConnectionInfo": null,
"description": null,
"encodeType": null,
"isFileCache": false,
"isReadOnly": false,
"name": "continent_T",
"prjCoordSys": null,
"recordCount": 0,
"tableName": null,
"type": "TEXT"
},
"description": "",
"displayFilter": null,
"displayOrderBy": null,
"fieldValuesDisplayFilter": {
"fieldName": "",
"fieldValuesDisplayMode": "DISABLE",
"values": []
},
"joinItems": null,
"maxScale": 1.350238165824801E-8,
"minScale": 3.3755954145620026E-9,
"minVisibleGeometrySize": 0.4,
"name": "continent_T@World",
"opaqueRate": 100,
"queryable": false,
"representationField": "",
"style": {
"fillBackColor": {
"alpha": 255,
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"alpha": 255,
"blue": 240,
"green": 255,
"red": 208
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"alpha": 255,
"blue": 0,
"green": 0,
"red": 255
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerHeight": 0,
"markerSize": 2.4,
"markerSymbolID": 0,
"markerWidth": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": false
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 layers 资源是否存在，或者客户端是否有权限访问 layers 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 layers 资源是否支持<format>格式的表述。
## 请参见
- [map](../map.htm)，[layer](layer/layer.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)