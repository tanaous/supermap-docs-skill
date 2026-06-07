# map

## URI
1.[<maps_uri>](../maps.htm#URI)/{mapName}[.<format>]
2.[<maps_uri>](../maps.htm#URI)/{mapIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[maps](../maps.htm)
## 子资源
[image](image.htm)、[entireImage](entireImage.htm)、[overview](overview.htm)、[trackingLayer](trackingLayer/trackingLayer.htm)、[layers](layers/layers.htm)、[tempLayersSet](tempLayersSet/tempLayersSet.htm)、[distance](distance.htm)、[area](area.htm)、[chartFeatureInfoSpecs](chartFeatureInfoSpecs.htm)、[queryResults](queryResults/queryResults.htm)、[tileImage](tileImage.htm)、[tileFeature](tileFeature/tileFeature.htm)、[tilesets](tilesets/tilesets.htm)、[highlightImage](highlightImage.htm)、[clearCache](clearCache.htm)、[symbol](symbol.htm)、[prjCoordSys](PrjCoordSys.htm)、[zxyTileImage](zxyTileImage/zxyTileImage.htm)
## 介绍
map 资源是访问在线地图服务的入口，通过 map 资源，可以获得该地图的基本状态信息，如中心点，比例尺，地图范围，图片大小，地图单位，包含的图层，包含的图片等等，并可以创建一个临时的图层集。
对 map 资源执行 GET 请求时，可以获取 flash、flash3d、silverlight、javascript、supermapcloud、tianditu 表述，即针对该地图资源的 Flash 客户端应用、Flash3D 客户端、 Silverlight 客户端应用、JavaScript 客户端应用、SuperMapCloud 应用和 Tianditu 应用，这些应用实现了简单的地图功能。对 map 资源执行 GET 请求时，还可以获取 KML 表述，如 http://supermapiserver:8090/iserver/services/map-world/rest/maps/World%20Map.kml， 在 GoogleEarth 客户端可以直接打开此 kml URI 进行显示。
根据国家有关规定，SuperMap 云服务的数据及天地图的数据经过了脱密处理，因此 supermapcloud 表述形式下，地图浏览效果与云服务图层可能存在一定程度的偏差；tianditu 表述形式下，地图浏览效果与天地图图层可能存在一定程度的偏差。
关于本资源的使用方法，可参考开发指南：[获取地图参数](../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Map_Opr/mapParam.htm)。
支持的方法：
- [GET](#GET 请求)：获取地图的基本信息，包括该地图的中心点，比例尺，地图范围，出图图片大小，地图单位，距离度量单位等。
- [HEAD](#HEAD 请求)：获取地图资源的元数据信息。检查该 map 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、JSONP、FASTJSON、HTML、XML、KML、Leaflet、openlayers3 (with MVT)、MapboxGL、for Classic (with Vector Tile)、 WebGL3D。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/map.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图” 是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图.rjson
### ](../../root.htm)GET 请求
获取地图当前状态的基本信息，包括该地图的中心点，比例尺，地图显示范围，出图图片大小，地图单位，距离度量单位等。其中，地图进行动态投影时，地图显示范围（viewBounds）是指原地图显示范围在目标投影下所转换成的多边形的外接矩形，而其他地图状态参数也会随之变化，如中心点和比例尺。
#### URI 参数
map 资源对应的 URI 有两种，优先以 mapName 匹配：
第一种：[<maps_uri>/](../maps.htm#URI){mapName}[.<format>]，地图资源由具体的地图名称{mapName}来标识，地图名称可以是中文；
第二种：[<maps_uri>](../maps.htm#URI)/{mapIndex}[.<format>]，地图资源由具体地图的索引号{mapIndex}来标识，从0开始编号，依次为0、1、2、3等。
#### 请求参数
URI 中，在“?”后面支持传递的参数如下表所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 【可选参数】 用于指定请求地图的坐标参考系统，服务端会按照指定的坐标参考系统返回相应的地图状态信息。 如果此参数为空，则默认返回地图原坐标参考系统下的状态信息；如果指定的坐标参考系统与地图原坐标参考系统不同，服务端会对地图进行动态投影，然后返回动态投影后的地图状态信息。
参数使用时，需按照[PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 epsgCode 的方式传入坐标参考系，如：
prjCoordSys={"epsgCode":3857}。 |
| queryResultID | String | 【可选参数】【JavaScript 表述中支持】 用于展示地图查询结果。 地图查询结果（queryResult）可以叠加在地图上，借助 map 资源的 JavaScript 表述进行显示，如：queryResultID=eiicoeik_889fa578956b4c90bb8aa841e5abfb7d。 |
#### 地图定位
flash、flash3d、silverlight、javascript 表述支持在 URI 中进行地图定位。以 flash 表述为例，利用 URI：http://supermapiserver:8090/iserver/services/map-world/rest/maps/World+Map.flash 获得名为 World Map 的地图的 flash 表述后，地图的比例尺和中心点坐标会自动以“比例尺/中心点 X/中心点 Y”的形式显示在 URI 的“#”后面，如：http://supermapiserver:8090/iserver/services/map-world/rest/maps/World+Map.flash#3.691951051719594e-8/10767652.46246/4260478.7946309，通过拖动、缩放地图等操作改变地图的 viewBounds，会实时更新 URI 中的比例尺和中心点坐标，用户也可以通过当前地图的 URI，快速解析到当前地图的比例尺和中心点坐标，实现对地图的定位。
#### 动态投影
SuperMap iServer 的 REST Map 服务支持发布各坐标参考系下的地图，且支持对 REST Map 服务中的地图进行动态投影（无投影的平面坐标系暂不支持）。
REST 地图服务动态投影的使用方法如下：
- 获取动态投影后的地图状态：通过 map 资源的 GET 操作获取当前地图的状态，包括当前地图支持的目标投影坐标系列表，然后通过在 GET 请求中传递 prjCoordSys 参数，获取动态投影后的地图信息，如 prjCoordSys={"epsgCode":3857}。
- 获取动态投影后的地图图片：根据需要对出图资源，如[image](image.htm)、[entireImage](entireImage.htm)或[tileImage](tileImage.htm)资源执行 GET 请求并传递 prjCoordSys 参数，即可获取动态投影后的地图图片。
需要注意的是，地图进行动态投影后，其中坐标单位、中心点，比例尺，地图范围等状态信息与投影前会有不同，获取图片时，请注意设置相关参数。对 map 资源进行动态投影时，是以地图在目标投影下的 viewBounds 为范围来计算其他地图状态参数的，如中心点和比例尺，而新 viewBounds 是原 viewBounds 投影变换后对应多边形的外接矩形。此外，map 资源的当前坐标系状态会转递给子资源，如[image](image.htm)、[entireImage](entireImage.htm)、[tileImage](tileImage.htm)，即这些子资源的默认坐标系与 map 资源的当前坐标系一致。
关于 SuperMap iServer 目前支持的 EPSG Code，请参考：[iServer 支持的 EPSG Code](../../../../../Appendix/CoordSystem/EPSGCode.htm)。
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
| overlapDisplayed | boolean | 重叠时是否显示对象。 |
| paintBackground | boolean | 是否绘制地图背景。 |
| textAngleFixed | boolean | 文本角度是否固定。 |
| textOrientationFixed | boolean | 文本朝向是否固定。 |
| overlapDisplayedOptions | [OverlapDisplayedOptions](file://E:/supermap/doc/OnlineHelp/API/iServerJavadoc/com/supermap/services/components/commontypes/OverlapDisplayedOptions.html) | 避免地图对象压盖显示的过滤选项，当 overlapDisplayed 为 false 时有效，用来增强对地图对象压盖时的处理。 |
| visibleScales | double[] | 地图的可见比例尺数组。 |
| dpi | double | 分辨率，单位为每英寸点数。 |
| visibleScalesEnabled | boolean | 是否使用固定比例尺来显示地图。 |
| customEntireBoundsEnabled | boolean | 自定义的地图全幅显示范围是否有效。 |
| cacheEnabled | boolean | 是否启用缓存。 |
| mapCapabilities | [MapCapability](file://E:/supermap/doc/OnlineHelp/API/iServerJavadoc/com/supermap/services/components/commontypes/MapCapability.html) | 地图支持的能力，如支持缓存、距离量算、SQL查询等，全部支持的能力请参见：[MapCapability](file://E:/supermap/doc/OnlineHelp/API/iServerJavadoc/com/supermap/services/components/commontypes/MapCapability.html) |
| autoAvoidEffectEnabled | boolean | 是否启用自动避让效果。 |
#### 示例
对 World 地图资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图.rjson 执行 GET 请求，返回 rjson 格式的资源表述如下：
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
"cacheEnabled": true,
"center": {
"x": 96.1736997712,
"y": 27.5734580668
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
"dynamicProjection": false,
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
"coordUnit": "DEGREE",
"distanceUnit": "METER",
"epsgCode": 4326,
"name": "Longitude / Latitude Coordinate System---GCS_WGS_1984",
"projection": null,
"projectionParam": null,
"type": "PCS_EARTH_LONGITUDE_LATITUDE"
},
"resourceParameter": null,
"scale": 2.563206512274041E-8,
"textAngleFixed": false,
"textOrientationFixed": false,
"userToken": {"userID": ""},
"viewBounds": {
"bottom": 15.704362017314319,
"left": 84.30460372171433,
"leftBottom": {
"x": 84.30460372171433,
"y": 15.704362017314319
},
"right": 108.04279582068568,
"rightTop": {
"x": 108.04279582068568,
"y": 39.442554116285685
},
"top": 39.442554116285685
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
- [maps](../maps.htm)、[image](image.htm)、[entireImage](entireImage.htm)、[overview](overview.htm)、[trackingLayer](trackingLayer/trackingLayer.htm)、[layers](layers/layers.htm)、[tempLayersSet](tempLayersSet/tempLayersSet.htm)、[distance](distance.htm)、[area](area.htm)、[chartFeatureInfoSpecs](chartFeatureInfoSpecs.htm)、[queryResults](queryResults/queryResults.htm)、[tileImage](tileImage.htm)、[highlightImage](highlightImage.htm)、[clearCache](clearCache.htm)、[symbol](symbol.htm)、[prjCoordSys](PrjCoordSys.htm)、[zxyTileImage](zxyTileImage/zxyTileImage.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)