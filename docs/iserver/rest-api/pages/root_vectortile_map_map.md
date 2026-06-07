# map

## URI
[<vectortile_uri>](../vectortile.htm)/{mapName}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[vectorTile](../vectortile.htm)
## 子资源
[tiles](tiles.htm)、[style](style.htm)、[sprites](sprites.htm)、[fonts](fonts.htm)
## 介绍
map 资源是访问在线地图服务的入口，通过 map 资源，可以获得该地图的基本状态信息，如中心点，比例尺，地图范围，图片大小，地图单位，包含的图层，包含的图片，地图风格信息等等。
对 map 资源执行 GET 请求时，可以获取iClient for openlayers3 (with MVT), for MapboxGL （仅3857、4326、4490、4214、4610投影地图可使用）表述，即针对该地图资源的 JavaScript 客户端应用，这些应用实现了简单的地图功能。
支持的方法：
- [GET](#GET 请求)：获取地图的基本信息，包括该地图的中心点，比例尺，地图范围，出图图片大小，地图单位，距离度量单位，地图风格信息等。
- [HEAD](#HEAD 请求)：获取地图资源的元数据信息。检查该 map 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、JSONP、HTML、XML、KML、Leaflet、openlayers3 (with MVT)、MapboxGL。
## 资源层次
!\[](../../../../../assets/images/root/vectortile/map/map.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“World” 是地图名。
http://supermapiserver:8090/iserver/services/map-world/restjsr/v1/vectortile/maps/World.rjson
### ](../../root.htm)GET 请求
获取地图当前状态的基本信息，包括该地图的中心点，比例尺，地图显示范围，出图图片大小，地图单位，距离度量单位等。其中，地图进行动态投影时，地图显示范围（viewBounds）是指原地图显示范围在目标投影下所转换成的多边形的外接矩形，而其他地图状态参数也会随之变化，如中心点和比例尺。
#### 请求参数
URI 中，在“?”后面支持传递的参数如下表所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对地图资源执行 GET 请求，返回的资源表述的结构如下（资源表述在响应消息的实体主体里）：  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 当前地图的名称。 |
| center | [Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 地图显示的中心点。 |
| scale | double | 地图的显示比例尺，详见[比例尺的定义](../../../../../Appendix/scale.htm)。 |
| maxScale | double | 地图的最大显示比例尺。该值为0时，表示没有比例尺显示限制。 |
| minScale | double | 地图的最小显示比例尺。该值为0时，表示没有比例尺显示限制。 |
| bounds | [Rectangle2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 地图的全幅地理范围。 |
| viewBounds | [Rectangle2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 地图窗口显示区域的范围，是一个矩形框。 如果对地图设置了动态投影，则此参数表示原 viewBounds 在目标投影下所转换成的多边形的外接矩形。 |
| viewer | [Rectangle](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle.html) | 用户显示视窗，即产生的图片的大小。 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 返回当前地图的坐标参考系统。 |
| dynamicPrjCoordSyses | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 返回当前地图所支持的目标投影坐标系列表。
如果当前坐标参考系统支持动态投影为所有类型的坐标参考系统，则 epsgCode 为0，type 为 PCS_ALL。 |
| customParams | String | 自定义参数。 可以是任何形式组织的字符串。用户可以通过该属性传入自定义的参数。 |
| userToken | [UserInfo](../../../../iServerJavadoc/com/supermap/services/components/commontypes/UserInfo.html) | 用户信息。 |
| clipRegion | [Geometry](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 地图显示裁剪的区域。 |
| clipRegionEnabled | boolean | 地图显示裁剪的区域是否有效。 |
| customEntireBounds | [Rectangle2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 自定义的地图全幅显示范围。 |
| customEntireBoundsEnabled | boolean | 自定义的地图全幅显示范围是否有效。 |
| angle | double | 当前地图的旋转角度。 |
| antialias | boolean | 是否反走样地图。 |
| backgroundStyle | [Style](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Style.html) | 地图的背景风格。 |
| colorMode | [MapColorMode](../../../../iServerJavadoc/com/supermap/services/components/commontypes/MapColorMode.html) | 地图的颜色模式。 |
| coordUnit | [Unit](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Unit.html) | 地图的坐标单位。 |
| distanceUnit | [Unit](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Unit.html) | 地图的距离量度单位。 |
| description | String | 当前地图的描述信息。 |
| dynamicProjection | boolean | 是否允许地图动态投影显示。 |
| markerAngleFixed | boolean | 指定点状符号的角度是否固定。 |
| maxVisibleTextSize | double | 文本的最大可见尺寸，单位为像素。 |
| maxVisibleVertex | int | 最大几何对象可见节点数。
如果几何对象的节点数超过指定的个数，则该几何对象不显示。 |
| minVisibleTextSize | double | 文本的最小可见尺寸，单位为像素。 |
| overlapDisplayedOption | boolean | 重叠时是否显示对象。 |
| paintBackground | boolean | 是否绘制地图背景。 |
| textAngleFixed | boolean | 文本角度是否固定。 |
| textOrientationFixed | boolean | 文本朝向是否固定。 |
| tileversion | [TileVersion](../../../../iServerJavadoc/com/supermap/services/tilesource/TileVersion.html) | 切片版本名称，_cache 为 true 时有效。
可以通过tileset 资源的 GET 请求获取，即响应结果中 tileVersions 的 name 字段，如 tileversion=51de5c76-c994-4207-94a7-d31f948f56e3；如果没有设置 tileversion 参数，而且当前地图的切片集中存在多个版本，则默认使用最后一个更新版本。 |
| trackingLayer | [TrackingLayer](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TrackingLayer.html) | 在 SuperMap 中，每个地图窗口都有一个跟踪图层，即每个地图显示时都有一个跟踪图层。跟踪图层是一个空白的透明图层，总是在地图各图层的最上层，主要用于在一个处理或分析过程中，临时存放一些图形对象，以及一些文本等。只要地图显示，跟踪图层就会存在，不可删除跟踪图层，也不可改变其位置。 |
| layers | List<Layer> | 图层列表。 |
| visibleScales | double[] | 地图的可见比例尺数组。 |
| visibleScalesEnabled | boolean | 是否使用固定比例尺来显示地图。 |
| customPrjCoordSysType | [PrjCoordSysType](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSysType.html) | 存储用户设置的坐标投影类型。 |
| recifyType | [RectifyType](../../../../iServerJavadoc/com/supermap/services/components/commontypes/RectifyType.html) | 校验方式。 |
| cacheEnabled | boolean | 是否启用缓存。 |
| autoAvoidEffectEnabled | boolean | 是否启用自动避让效果。 |
| backgroundStyle | [Style](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Style.html) | 地图背景信息。 |
| returnImage | boolean | 是否返回图片 |
| returnType | ReturnType | 返回的类型 |
| dpi | double | 分辨率，单位为每英寸点数。 |
#### 示例
对 World 地图资源：http://supermapiserver:8090/iserver/services/map-world/restjsr/v1/vectortile/maps/World.rjson 执行 GET 请求，返回 rjson 格式的资源表述如下：
{
"viewBounds": {
"top": 51.458251340507125,
"left": -51.458251340507125,
"bottom": -51.458251340507125,
"leftBottom": {
"x": -51.458251340507125,
"y": -51.458251340507125
},
"right": 51.458251340507125,
"rightTop": {
"x": 51.458251340507125,
"y": 51.458251340507125
}
},
"viewer": {
"leftTop": {
"x": 0,
"y": 0
},
"top": 0,
"left": 0,
"bottom": 256,
"rightBottom": {
"x": 256,
"y": 256
},
"width": 256,
"right": 256,
"height": 256
},
"distanceUnit": "METER",
"tileversion": null,
"minVisibleTextSize": 0.1,
"coordUnit": "DEGREE",
"scale": 5.912160537196359E-9,
"description": "",
"paintBackground": true,
"maxVisibleTextSize": 1000,
"maxVisibleVertex": 3600000,
"clipRegionEnabled": false,
"trackingLayer": {"highlightTargets": []},
"antialias": true,
"textOrientationFixed": false,
"layers": [{
"completeLineSymbolDisplayed": false,
"visible": true,
"maxScale": 0,
"caption": null,
"description": "",
"symbolScalable": false,
"subLayers": {"layers": [
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 1.350238165824801E-8,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "continent_T@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "TEXT",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 65.22103117946571,
"left": -150.51082428252954,
"bottom": -84.34257921576281,
"leftBottom": {
"x": -150.51082428252954,
"y": -84.34257921576281
},
"right": 154.27853258850513,
"rightTop": {
"x": 154.27853258850513,
"y": 65.22103117946571
}
},
"name": "continent_T",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "continent_T@World",
"bounds": {
"top": 65.22103117946571,
"left": -150.51082428252954,
"bottom": -84.34257921576281,
"leftBottom": {
"x": -150.51082428252954,
"y": -84.34257921576281
},
"right": 154.27853258850513,
"rightTop": {
"x": 154.27853258850513,
"y": 65.22103117946571
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 208,
"green": 255,
"blue": 240,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 128,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 0,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Ocean_Label_1@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "TEXT",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 83.43048504744075,
"left": -44.41899273133173,
"bottom": -27.123921114982828,
"leftBottom": {
"x": -44.41899273133173,
"y": -27.123921114982828
},
"right": 162.36857106201822,
"rightTop": {
"x": 162.36857106201822,
"y": 83.43048504744075
}
},
"name": "Ocean_Label_1",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": true,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "Ocean_Label_1@World",
"bounds": {
"top": 83.43048504744075,
"left": -44.41899273133173,
"bottom": -27.123921114982828,
"leftBottom": {
"x": -44.41899273133173,
"y": -27.123921114982828
},
"right": 162.36857106201822,
"rightTop": {
"x": 162.36857106201822,
"y": 83.43048504744075
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 208,
"green": 255,
"blue": 240,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 128,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 0,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"themeElementPosition": null,
"ugcLayerType": "THEME",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Captial_CH",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "POINT",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 64.13499891788544,
"left": -175.24565064968198,
"bottom": -41.33484005165742,
"leftBottom": {
"x": -175.24565064968198,
"y": -41.33484005165742
},
"right": 179.22188736363634,
"rightTop": {
"x": 179.22188736363634,
"y": 64.13499891788544
}
},
"name": "Capitals",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "Capitals@World#3",
"bounds": {
"top": 64.13499891788544,
"left": -175.24565064968198,
"bottom": -41.33484005165742,
"leftBottom": {
"x": -175.24565064968198,
"y": -41.33484005165742
},
"right": 179.22188736363634,
"rightTop": {
"x": 179.22188736363634,
"y": 64.13499891788544
}
},
"theme": {
"memoryData": null,
"overlapAvoided": true,
"minTextWidth": 0,
"maxLabelLength": -1,
"repeatIntervalFixed": false,
"flowEnabled": false,
"alongLineDirection": "LEFT_TOP_TO_RIGHT_BOTTOM",
"maxTextWidth": 0,
"offsetFixed": false,
"type": "LABEL",
"labelExpression": "CAPITAL_CH",
"offsetX": "0",
"leaderLineStyle": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 189,
"green": 235,
"blue": 255,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 0,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 39,
"fillGradientAngle": 0
},
"offsetY": "0",
"leaderLineDisplayed": false,
"uniformStyle": {
"italicAngle": 0,
"shadow": false,
"sizeFixed": true,
"underline": false,
"rotation": 0,
"backOpaque": false,
"bold": false,
"align": "BOTTOMLEFT",
"foreColor": {
"red": 38,
"green": 38,
"blue": 38,
"alpha": 255
},
"italic": false,
"strikeout": false,
"fontName": "微软雅黑",
"outline": true,
"borderSpacingWidth": 4,
"backColor": {
"red": 242,
"green": 242,
"blue": 242,
"alpha": 255
},
"outlineWidth": 1,
"fontHeight": 3.5335689045936394,
"fontWidth": 0,
"opaqueRate": 0,
"stringAlignment": "LEFT",
"fontScale": 1,
"fontWeight": 400
},
"maxTextHeight": 0,
"smallGeometryLabeled": true,
"matrixCells": null,
"labelBackShape": "NONE",
"labelOverLengthMode": "NONE",
"numericPrecision": -1,
"textSpace": 1.1,
"backStyle": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 255,
"green": 255,
"blue": 204,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 0,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"minTextHeight": 0,
"uniqueExpression": "",
"alongLine": true,
"uniqueItems": null,
"rangeExpression": "",
"angleFixed": false,
"uniformMixedStyle": null,
"repeatedLabelAvoided": false,
"items": null,
"labelRepeatInterval": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 2.700476331649602E-8,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"themeElementPosition": null,
"ugcLayerType": "THEME",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Capital_Local",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "POINT",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 64.13499891788544,
"left": -175.24565064968198,
"bottom": -41.33484005165742,
"leftBottom": {
"x": -175.24565064968198,
"y": -41.33484005165742
},
"right": 179.22188736363634,
"rightTop": {
"x": 179.22188736363634,
"y": 64.13499891788544
}
},
"name": "Capitals",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "Capitals@World#2",
"bounds": {
"top": 64.13499891788544,
"left": -175.24565064968198,
"bottom": -41.33484005165742,
"leftBottom": {
"x": -175.24565064968198,
"y": -41.33484005165742
},
"right": 179.22188736363634,
"rightTop": {
"x": 179.22188736363634,
"y": 64.13499891788544
}
},
"theme": {
"memoryData": null,
"overlapAvoided": true,
"minTextWidth": 0,
"maxLabelLength": -1,
"repeatIntervalFixed": false,
"flowEnabled": false,
"alongLineDirection": "LEFT_TOP_TO_RIGHT_BOTTOM",
"maxTextWidth": 0,
"offsetFixed": false,
"type": "LABEL",
"labelExpression": "CAPITAL_LO",
"offsetX": "0",
"leaderLineStyle": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 189,
"green": 235,
"blue": 255,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 0,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 39,
"fillGradientAngle": 0
},
"offsetY": "0",
"leaderLineDisplayed": false,
"uniformStyle": {
"italicAngle": 0,
"shadow": false,
"sizeFixed": true,
"underline": false,
"rotation": 0,
"backOpaque": false,
"bold": false,
"align": "TOPLEFT",
"foreColor": {
"red": 63,
"green": 63,
"blue": 63,
"alpha": 255
},
"italic": false,
"strikeout": false,
"fontName": "微软雅黑",
"outline": true,
"borderSpacingWidth": 4,
"backColor": {
"red": 242,
"green": 242,
"blue": 242,
"alpha": 255
},
"outlineWidth": 1,
"fontHeight": 3.5335689045936394,
"fontWidth": 0,
"opaqueRate": 0,
"stringAlignment": "LEFT",
"fontScale": 1,
"fontWeight": 400
},
"maxTextHeight": 0,
"smallGeometryLabeled": true,
"matrixCells": null,
"labelBackShape": "NONE",
"labelOverLengthMode": "NONE",
"numericPrecision": -1,
"textSpace": 1.1,
"backStyle": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 255,
"green": 255,
"blue": 204,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 0,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"minTextHeight": 0,
"uniqueExpression": "",
"alongLine": true,
"uniqueItems": null,
"rangeExpression": "",
"angleFixed": false,
"uniformMixedStyle": null,
"repeatedLabelAvoided": false,
"items": null,
"labelRepeatInterval": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 2.700476331649602E-8,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Capitals@World#1",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "POINT",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 64.13499891788544,
"left": -175.24565064968198,
"bottom": -41.33484005165742,
"leftBottom": {
"x": -175.24565064968198,
"y": -41.33484005165742
},
"right": 179.22188736363634,
"rightTop": {
"x": 179.22188736363634,
"y": 64.13499891788544
}
},
"name": "Capitals",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "Capitals@World#1",
"bounds": {
"top": 64.13499891788544,
"left": -175.24565064968198,
"bottom": -41.33484005165742,
"leftBottom": {
"x": -175.24565064968198,
"y": -41.33484005165742
},
"right": 179.22188736363634,
"rightTop": {
"x": 179.22188736363634,
"y": 64.13499891788544
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 7.7,
"fillForeColor": {
"red": 13,
"green": 80,
"blue": 143,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 127,
"green": 127,
"blue": 127,
"alpha": 255
},
"markerSymbolID": 908020,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 2.700476331649602E-8,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"themeElementPosition": null,
"ugcLayerType": "THEME",
"displayFilter": "Countries.SmID not in (34,56,16,41,40,57,60,209)",
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Countries@World#1",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "REGION",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 83.62359619140626,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
}
},
"name": "Countries",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.1,
"name": "Countries@World#1",
"bounds": {
"top": 83.62359619140626,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
}
},
"theme": {
"memoryData": null,
"overlapAvoided": false,
"minTextWidth": 0,
"maxLabelLength": -1,
"repeatIntervalFixed": false,
"flowEnabled": false,
"alongLineDirection": "ALONG_LINE_NORMAL",
"maxTextWidth": 0,
"offsetFixed": false,
"type": "LABEL",
"labelExpression": "COUNTRY",
"offsetX": "0",
"leaderLineStyle": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 189,
"green": 235,
"blue": 255,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 0,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 39,
"fillGradientAngle": 0
},
"offsetY": "0",
"leaderLineDisplayed": false,
"uniformStyle": {
"italicAngle": 0,
"shadow": false,
"sizeFixed": true,
"underline": false,
"rotation": 0,
"backOpaque": false,
"bold": false,
"align": "MIDDLECENTER",
"foreColor": {
"red": 63,
"green": 63,
"blue": 63,
"alpha": 255
},
"italic": false,
"strikeout": false,
"fontName": "微软雅黑",
"outline": true,
"borderSpacingWidth": 4,
"backColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"outlineWidth": 1,
"fontHeight": 4.593639575971731,
"fontWidth": 0,
"opaqueRate": 0,
"stringAlignment": "LEFT",
"fontScale": 1,
"fontWeight": 400
},
"maxTextHeight": 0,
"smallGeometryLabeled": true,
"matrixCells": null,
"labelBackShape": "NONE",
"labelOverLengthMode": "NONE",
"numericPrecision": 1,
"textSpace": 1.1,
"backStyle": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 255,
"green": 255,
"blue": 204,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 0,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"minTextHeight": 0,
"uniqueExpression": "",
"alongLine": false,
"uniqueItems": null,
"rangeExpression": "",
"angleFixed": false,
"uniformMixedStyle": null,
"repeatedLabelAvoided": false,
"items": null,
"labelRepeatInterval": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 1.3502381658248012E-8,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "China_Boundary_nanhai@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "LINE",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 24.571609999999986,
"left": 108.20117,
"bottom": 3.408849999999999,
"leftBottom": {
"x": 108.20117,
"y": 3.408849999999999
},
"right": 122.79297,
"rightTop": {
"x": 122.79297,
"y": 24.571609999999986
}
},
"name": "China_Boundary_nanhai",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": true,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.1,
"name": "China_Boundary_nanhai@World",
"bounds": {
"top": 24.571609999999986,
"left": 108.20117,
"bottom": 3.408849999999999,
"leftBottom": {
"x": 108.20117,
"y": 3.408849999999999
},
"right": 122.79297,
"rightTop": {
"x": 122.79297,
"y": 24.571609999999986
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 189,
"green": 235,
"blue": 255,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 191,
"green": 191,
"blue": 191,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.4,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": false,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 0,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "China_Boundary_1@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "LINE",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 38.6768074,
"left": 73.80218519999998,
"bottom": 37.2373277,
"leftBottom": {
"x": 73.80218519999998,
"y": 37.2373277
},
"right": 75.1874846,
"rightTop": {
"x": 75.1874846,
"y": 38.6768074
}
},
"name": "China_Boundary_1",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": true,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.1,
"name": "China_Boundary_1@World",
"bounds": {
"top": 38.6768074,
"left": 73.80218519999998,
"bottom": 37.2373277,
"leftBottom": {
"x": 73.80218519999998,
"y": 37.2373277
},
"right": 75.1874846,
"rightTop": {
"x": 75.1874846,
"y": 38.6768074
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 189,
"green": 235,
"blue": 255,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 191,
"green": 191,
"blue": 191,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": false,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 1,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 0,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Country_Label@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "LINE",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 70.08860780000002,
"left": -141.0029906,
"bottom": -54.7883376,
"leftBottom": {
"x": -141.0029906,
"y": -54.7883376
},
"right": 141.007019,
"rightTop": {
"x": 141.007019,
"y": 70.08860780000002
}
},
"name": "Country_Label",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": true,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.1,
"name": "Country_Label@World",
"bounds": {
"top": 70.08860780000002,
"left": -141.0029906,
"bottom": -54.7883376,
"leftBottom": {
"x": -141.0029906,
"y": -54.7883376
},
"right": 141.007019,
"rightTop": {
"x": 141.007019,
"y": 70.08860780000002
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 189,
"green": 235,
"blue": 255,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 191,
"green": 191,
"blue": 191,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": false,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 0,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Rivers@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "LINE",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 71.39248954545454,
"left": -164.88743636363634,
"bottom": -36.96944545454546,
"leftBottom": {
"x": -164.88743636363634,
"y": -36.96944545454546
},
"right": 160.76359563636362,
"rightTop": {
"x": 160.76359563636362,
"y": 71.39248954545454
}
},
"name": "Rivers",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "Rivers@World",
"bounds": {
"top": 71.39248954545454,
"left": -164.88743636363634,
"bottom": -36.96944545454546,
"leftBottom": {
"x": -164.88743636363634,
"y": -36.96944545454546
},
"right": 160.76359563636362,
"rightTop": {
"x": 160.76359563636362,
"y": 71.39248954545454
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 208,
"green": 255,
"blue": 240,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 179,
"green": 209,
"blue": 255,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 1.3279488466989154E-8,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "China_island_part@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "REGION",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 26.69475,
"left": 109.44177,
"bottom": 3.8339199999999938,
"leftBottom": {
"x": 109.44177,
"y": 3.8339199999999938
},
"right": 124.59860999999998,
"rightTop": {
"x": 124.59860999999998,
"y": 26.69475
}
},
"name": "China_island_part",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": true,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.1,
"name": "China_island_part@World",
"bounds": {
"top": 26.69475,
"left": 109.44177,
"bottom": 3.8339199999999938,
"leftBottom": {
"x": 109.44177,
"y": 3.8339199999999938
},
"right": 124.59860999999998,
"rightTop": {
"x": 124.59860999999998,
"y": 26.69475
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 238,
"green": 236,
"blue": 225,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 88,
"green": 103,
"blue": 101,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": false,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 5,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 0,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Lakes@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "REGION",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 67.04693636363636,
"left": -125.12331818181818,
"bottom": -16.606263636363636,
"leftBottom": {
"x": -125.12331818181818,
"y": -16.606263636363636
},
"right": 109.965,
"rightTop": {
"x": 109.965,
"y": 67.04693636363636
}
},
"name": "Lakes",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "Lakes@World",
"bounds": {
"top": 67.04693636363636,
"left": -125.12331818181818,
"bottom": -16.606263636363636,
"leftBottom": {
"x": -125.12331818181818,
"y": -16.606263636363636
},
"right": 109.965,
"rightTop": {
"x": 109.965,
"y": 67.04693636363636
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 179,
"green": 209,
"blue": 255,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 179,
"green": 209,
"blue": 255,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 5.439278476078758E-9,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"themeElementPosition": null,
"ugcLayerType": "THEME",
"displayFilter": null,
"visible": false,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Countries@World#2",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "REGION",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 83.62359619140626,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
}
},
"name": "Countries",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": true,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "Countries@World#2",
"bounds": {
"top": 83.62359619140626,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
}
},
"theme": {
"customMarkerAngleExpression": "",
"uniqueExpression": "Countries.ColorID",
"memoryData": null,
"defaultStyle": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 189,
"green": 235,
"blue": 255,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 0,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"customMarkerSizeExpression": "",
"type": "UNIQUE",
"items": [
{
"visible": true,
"unique": "1",
"caption": "1",
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 199,
"green": 207,
"blue": 247,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 199,
"green": 207,
"blue": 247,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
}
},
{
"visible": true,
"unique": "2",
"caption": "2",
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 193,
"green": 227,
"blue": 201,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 193,
"green": 227,
"blue": 201,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
}
},
{
"visible": true,
"unique": "3",
"caption": "3",
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 247,
"green": 209,
"blue": 197,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 247,
"green": 209,
"blue": 197,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
}
},
{
"visible": true,
"unique": "4",
"caption": "4",
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 247,
"green": 231,
"blue": 197,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 247,
"green": 231,
"blue": 197,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
}
}
],
"colorGradientType": null
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 0,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Countries@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "REGION",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 83.62359619140626,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
}
},
"name": "Countries",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "Countries@World",
"bounds": {
"top": 83.62359619140626,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 224,
"green": 207,
"blue": 226,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 1,
"lineColor": {
"red": 167,
"green": 170,
"blue": 164,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 5.439278476078758E-9,
"representationField": ""
},
{
"joinItems": null,
"completeLineSymbolDisplayed": false,
"ugcLayerType": "VECTOR",
"displayFilter": null,
"visible": true,
"maxScale": 0,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "OceanL@World",
"description": "",
"symbolScalable": false,
"subLayers": {},
"type": "UGC",
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "LINE",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 83.62359619999998,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619999998
}
},
"name": "Ocean_Label",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0.4,
"name": "OceanL@World",
"bounds": {
"top": 83.62359619999998,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619999998
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 208,
"green": 255,
"blue": 240,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 179,
"green": 209,
"blue": 255,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"minScale": 5.439278476078758E-9,
"representationField": ""
},
{
"ugcLayerType": "GRID",
"displayFilter": null,
"dashStyle": null,
"solidStyle": null,
"sizeFixed": false,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"specialValueTransparent": false,
"verticalSpacing": 0,
"caption": "landcover@World",
"description": "",
"type": "UGC",
"colors": [
{
"red": 179,
"green": 209,
"blue": 255,
"alpha": 255
},
{
"red": 182,
"green": 213,
"blue": 170,
"alpha": 255
},
{
"red": 178,
"green": 210,
"blue": 174,
"alpha": 255
},
{
"red": 199,
"green": 218,
"blue": 182,
"alpha": 255
},
{
"red": 161,
"green": 197,
"blue": 181,
"alpha": 255
},
{
"red": 161,
"green": 197,
"blue": 181,
"alpha": 255
},
{
"red": 199,
"green": 218,
"blue": 182,
"alpha": 255
},
{
"red": 209,
"green": 221,
"blue": 186,
"alpha": 255
},
{
"red": 227,
"green": 226,
"blue": 217,
"alpha": 255
},
{
"red": 244,
"green": 238,
"blue": 203,
"alpha": 255
},
{
"red": 233,
"green": 225,
"blue": 192,
"alpha": 255
},
{
"red": 209,
"green": 221,
"blue": 186,
"alpha": 255
},
{
"red": 246,
"green": 241,
"blue": 220,
"alpha": 255
},
{
"red": 227,
"green": 226,
"blue": 217,
"alpha": 255
}
],
"datasetInfo": {
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "GRID",
"dataSourceName": "World",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 90,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 90
}
},
"name": "LandCover",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"gridType": "GRID",
"horizontalSpacing": 0,
"minVisibleGeometrySize": 0.4,
"minScale": 0,
"specialValue": -9999,
"joinItems": null,
"completeLineSymbolDisplayed": false,
"visible": true,
"maxScale": 0,
"symbolScalable": false,
"subLayers": {},
"colorGradientType": null,
"queryable": false,
"brightness": 0,
"opaqueRate": 100,
"contrast": 0,
"name": "gl_latlong_1km_landcover@World",
"bounds": {
"top": 90,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 90
}
},
"colorDictionary": {
"0.0": {
"red": 179,
"green": 209,
"blue": 255,
"alpha": 255
},
"13.0": {
"red": 227,
"green": 226,
"blue": 217,
"alpha": 255
},
"1.0": {
"red": 182,
"green": 213,
"blue": 170,
"alpha": 255
},
"2.0": {
"red": 178,
"green": 210,
"blue": 174,
"alpha": 255
},
"12.0": {
"red": 246,
"green": 241,
"blue": 220,
"alpha": 255
},
"11.0": {
"red": 209,
"green": 221,
"blue": 186,
"alpha": 255
},
"3.0": {
"red": 199,
"green": 218,
"blue": 182,
"alpha": 255
},
"10.0": {
"red": 233,
"green": 225,
"blue": 192,
"alpha": 255
},
"4.0": {
"red": 161,
"green": 197,
"blue": 181,
"alpha": 255
},
"5.0": {
"red": 161,
"green": 197,
"blue": 181,
"alpha": 255
},
"6.0": {
"red": 199,
"green": 218,
"blue": 182,
"alpha": 255
},
"7.0": {
"red": 209,
"green": 221,
"blue": 186,
"alpha": 255
},
"8.0": {
"red": 227,
"green": 226,
"blue": 217,
"alpha": 255
},
"9.0": {
"red": 244,
"green": 238,
"blue": 203,
"alpha": 255
}
},
"specialColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"displayOrderBy": null,
"symbolScale": 0,
"representationField": ""
}
]},
"type": "UGC",
"queryable": false,
"opaqueRate": 100,
"minVisibleGeometrySize": 0,
"name": "World",
"bounds": {
"top": 90,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 90
}
},
"symbolScale": 0,
"minScale": 0
}],
"angle": 0,
"prjCoordSys": {
"distanceUnit": "METER",
"projectionParam": null,
"epsgCode": 4326,
"coordUnit": "DEGREE",
"name": "GCS_WGS_1984",
"projection": null,
"type": "PCS_EARTH_LONGITUDE_LATITUDE",
"coordSystem": {
"datum": {
"name": "D_WGS_1984",
"type": "DATUM_WGS_1984",
"spheroid": {
"flatten": 0.00335281066474748,
"name": "WGS_1984",
"axis": 6378137,
"type": "SPHEROID_WGS_1984"
}
},
"unit": "DEGREE",
"spatialRefType": "SPATIALREF_EARTH_LONGITUDE_LATITUDE",
"name": "GCS_WGS_1984",
"type": "GCS_WGS_1984",
"primeMeridian": {
"longitudeValue": 0,
"name": "Greenwich",
"type": "PRIMEMERIDIAN_GREENWICH"
}
}
},
"minScale": 0,
"markerAngleFixed": false,
"overlapDisplayedOptions": {
"allowPointWithTextDisplay": true,
"horizontalOverlappedSpaceSize": 0,
"allowPointOverlap": true,
"allowThemeGraduatedSymbolOverlap": false,
"verticalOverlappedSpaceSize": 0,
"allowTextOverlap": false,
"allowThemeGraphOverlap": false,
"allowTextAndPointOverlap": true
},
"visibleScales": [
1.6901635716026555E-9,
3.375595414562003E-9,
6.751190829124006E-9,
1.3502381658248012E-8,
2.7004763316496024E-8,
5.400952663299205E-8,
1.080190532659841E-7,
2.1603810653196843E-7,
4.320762130639359E-7,
8.641524261278681E-7
],
"visibleScalesEnabled": false,
"customEntireBoundsEnabled": false,
"clipRegion": {
"center": null,
"parts": null,
"style": null,
"prjCoordSys": null,
"id": 0,
"type": "REGION",
"partTopo": null,
"points": null
},
"maxScale": 1.0E12,
"customParams": "",
"center": {
"x": 0,
"y": 0
},
"colorMode": "DEFAULT",
"textAngleFixed": false,
"customPrjCoordSysType": null,
"rectifyType": "BYCENTERANDMAPSCALE",
"overlapDisplayed": false,
"userToken": {"userID": ""},
"cacheEnabled": true,
"dynamicProjection": false,
"autoAvoidEffectEnabled": true,
"customEntireBounds": null,
"name": "World",
"bounds": {
"top": 90,
"left": -180,
"bottom": -90,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 90
}
},
"backgroundStyle": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 179,
"green": 209,
"blue": 255,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 0,
"green": 0,
"blue": 0,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": false,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 0,
"fillGradientAngle": 0
},
"returnImage": true,
"returnType": "URL"
}
如果希望获取动态投影到 WebMercator 的地图，则需要设置 prjCoordSys={"epsgCode":3857}，即对 World 地图资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图.rjson?prjCoordSys={"epsgCode":3857} 执行 GET 请求，返回 rjson 格式的资源表述如下：
{
"angle": 0,
"antialias": true,
"backgroundStyle": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 255,
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
"bounds": {
"bottom": -2.5776731363158423E7,
"left": -2.0037508342789244E7,
"leftBottom": {
"x": -2.0037508342789244E7,
"y": -2.5776731363158423E7
},
"right": 2.0037508342789244E7,
"rightTop": {
"x": 2.0037508342789244E7,
"y": 2.57767313631584E7
},
"top": 2.57767313631584E7
},
"cacheEnabled": false,
"center": {
"x": 1.0706007286235156E7,
"y": 3258532.6200602674
},
"clipRegion": {
"center": null,
"id": 0,
"parts": null,
"points": null,
"style": null,
"type": "REGION"
},
"clipRegionEnabled": false,
"colorMode": "DEFAULT",
"coordUnit": "DEGREE",
"customEntireBounds": null,
"customEntireBoundsEnabled": false,
"customParams": "",
"description": "",
"distanceUnit": "METER",
"dynamicPrjCoordSyses": [{
"coordSystem": null,
"coordUnit": null,
"distanceUnit": null,
"epsgCode": 0,
"name": null,
"projection": null,
"projectionParam": null,
"type": "PCS_ALL"
}],
"dynamicProjection": true,
"markerAngleFixed": false,
"maxScale": 1.000000000000032E12,
"maxVisibleTextSize": 1000,
"maxVisibleVertex": 3600000,
"minScale": 0,
"minVisibleTextSize": 0.3,
"name": "世界地图",
"overlapDisplayed": true,
"paintBackground": true,
"prjCoordSys": {
"coordSystem": {
"datum": {
"name": "D_WGS_1984",
"spheroid": {
"axis": 6378137,
"flatten": 0.0033528107,
"name": "WGS_1984",
"type": "SPHEROID_WGS_1984"
},
"type": "DATUM_WGS_1984"
},
"name": "GCS_WGS_1984",
"primeMeridian": {
"longitudeValue": 0,
"name": "Greenwich",
"type": "PRIMEMERIDIAN_GREENWICH"
},
"spatialRefType": "SPATIALREF_EARTH_LONGITUDE_LATITUDE",
"type": "GCS_WGS_1984",
"unit": "DEGREE"
},
"coordUnit": "METER",
"distanceUnit": "METER",
"epsgCode": 3857,
"name": "User Define",
"projection": {
"name": "Mercator",
"type": "PRJ_MERCATOR"
},
"projectionParam": {
"azimuth": 0,
"centralMeridian": 0,
"centralParallel": 0,
"falseEasting": 0,
"falseNorthing": 0,
"firstPointLongitude": 0,
"firstStandardParallel": 0,
"scaleFactor": 0,
"secondPointLongitude": 0,
"secondStandardParallel": 0
},
"type": "PCS_USER_DEFINED"
},
"resourceParameter": null,
"scale": 2.257298309111974E-8,
"textAngleFixed": false,
"textOrientationFixed": false,
"userToken": {"userID": ""},
"viewBounds": {
"bottom": 1758952.3535372897,
"left": 9206427.019712178,
"leftBottom": {
"x": 9206427.019712178,
"y": 1758952.3535372897
},
"right": 1.2205587552758133E7,
"rightTop": {
"x": 1.2205587552758133E7,
"y": 4758112.886583245
},
"top": 4758112.886583245
},
"viewer": {
"bottom": 256,
"height": 256,
"left": 0,
"leftTop": {
"x": 0,
"y": 0
},
"right": 256,
"rightBottom": {
"x": 256,
"y": 256
},
"top": 0,
"width": 256
},
"visibleScales": [],
"visibleScalesEnabled": false
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断地图资源是否存在，或者客户端是否有权限访问地图资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断地图资源是否支持<format>格式的表述。
## 请参见
- [vectorTile](../vectortile.htm)、[tiles](tiles.htm)、[style](style.htm)、[sprites](sprites.htm)、[fonts](fonts.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)