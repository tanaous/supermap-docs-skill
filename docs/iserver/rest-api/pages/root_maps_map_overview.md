# overview

## URI
[<map_uri>](map.htm#URI)/overview[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
作为 map 资源的一个子资源，overview 资源用于获取地图（map 资源）的鹰眼，可以在 URI 中包含参数定制输出，参数必须包含在 URI 中，不能放在请求体里。通过 overview 资源可以获取鹰眼图片或鹰眼资源的描述。
支持的方法：
- [GET](#GET 请求)：获取地图（{mapName}）的鹰眼图片或鹰眼资源的描述。
- [HEAD](#HEAD 请求)：获取 overview 资源的元数据信息。检查该 overview 资源是否存在，权限是否可以访问。
支持的表述格式：PNG、BMP、GIF、JPG、WebP、RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/overview.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/overview.rjson
### ](../../root.htm)GET 请求
获取地图（{mapName}）的鹰眼图片或鹰眼资源的描述。
#### 请求参数
对 overview 资源执行 GET 请求的时候，在 URI 中包含如下参数可以控制鹰眼图的大小、范围等，参数必须包含在 URI 中，不能放在请求体里。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| redirect | boolean | 是否重定向，HTTP 传输中的一个概念。如果为 true，则将请求重定向到图片的真实地址；如果为 false，则响应体中是图片的字节流。默认为 true，进行重定向。 |
| center | [Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 地图显示的中心点。 |
| scale | double | 地图显示的比例尺。详见[比例尺的定义](../../../../../Appendix/scale.htm)。 |
| width | int | 用户显示视窗的宽度，即产生图片的宽度。必须跟 height 一起使用，优先级高于 viewer。 |
| height | int | 用户显示视窗的高度，即产生图片的高度。必须跟 width 一起使用，优先级高于 viewer。 |
| viewer | [Rectangle](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle.html) | 用户显示视窗，即鹰眼图片的大小。 |
| transparent | boolean | 地图图片是否透明。 |
| viewBounds | [Rectangle2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 鹰眼图中显示的地图的可视范围。 |
| dynamicProjection | boolean | 是否允许地图动态投影显示。 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 请求的地图的坐标参考系统。 当此参数设置的坐标系统不同于地图的原有坐标系统时， 系统会进行动态投影，并返回动态投影后的地图图片。 参数使用时，需按照[PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 epsgCode 的方式传入坐标参考系，如： prjCoordSys={"epsgCode":3857}。 |
| random | boolean | 是否采用随机数的方式出，默认为 false。 如果为 true，则在 viewbounds 未指定的情况下，scale、center 两个参数中未指定的参数会在各自的取值范围内采用随机数的方式赋值。 |
| cacheEnabled | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。（与 _cache 参数功能相同） |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。（与 cacheEnabled 参数功能相同） |
| customParams | String | 自定义参数。可以是任何形式组织的字符串。用户可以通过该属性传入自定义的参数。 |
| rectifyType | [RectifyType](../../../../iServerJavadoc/com/supermap/services/components/commontypes/RectifyType.html) | 校验方式。 |
| clipRegion | [Geometry](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 地图显示裁剪的区域。是一个面对象，当 clipRegionEnabled = true 时有效，即地图只显示该区域覆盖的部分。 |
| clipRegionEnabled | boolean | 地图显示裁剪的区域是否有效。 |
| customEntireBounds | [Rectangle2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 地图自定义边界，customEntireBoundsEnabled 为 true 时有效。 |
| customEntireBoundsEnabled | boolean | 自定义地图边界是否有效。 |
| angle | double | 当前地图的旋转角度。 |
| antialias | boolean | 是否反走样地图。 |
| backgroundStyle | [Style](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Style.html) | 地图的背景风格。 |
| colorMode | [MapColorMode](../../../../iServerJavadoc/com/supermap/services/components/commontypes/MapColorMode.html) | 地图的颜色模式。 |
| markerAngleFixed | boolean | 指定点状符号的角度是否固定。 |
| maxVisibleTextSize | double | 文本的最大可见尺寸，单位为像素。 |
| maxVisibleVertex | int | 最大几何对象可见节点数。如果几何对象的节点数超过指定的个数，则超过的那部分节点不显示。 |
| minVisibleTextSize | double | 文本的最小可见尺寸，单位为像素。 |
| overlapDisplayed | boolean | 地图对象在同一范围内时，是否重叠显示，默认为 false。 如果为 true，则同一范围内的对象会直接压盖；如果为 false 则通过 overlapDisplayedOptions 控制对象不压盖显示。 |
| overlapDisplayedOptions | [OverlapDisplayedOptions](../../../../iServerJavadoc/com/supermap/services/components/commontypes/OverlapDisplayedOptions.html) | 避免地图对象压盖显示的过滤选项，当 overlapDisplayed 为 false 时有效，用来增强对地图对象压盖时的处理。 |
| paintBackground | boolean | 是否绘制地图背景。 |
| textAngleFixed | boolean | 文本角度是否固定。 |
| textOrientationFixed | boolean | 文本朝向是否固定。 |
#### 响应结构
如果想获取鹰眼的图片，可以指定表述格式为 PNG、BMP、GIF、WebP 或 JPG，如：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/overview.png 则返回一幅图片。
如果想获取鹰眼的描述，可以指定表述格式为 RJSON、JSON、HTML 或 XML，如：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/overview.rjson ，则返回的表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| mapName | String | 地图的名称。 |
| imageUrl | String | 指向鹰眼图图片的 URL，图片为 PNG 格式。 |
| viewBounds | Rectangle2D | 鹰眼图中显示的地图的可视范围。 |
| viewer | Rectangle | 鹰眼图片的大小。 |
#### 示例
对示例 overview 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/overview.png?viewer={"leftTop":{"x":0,"y":0},"rightBottom":{"x":500,"y":500}}&viewBounds={"leftBottom":{"x":60,"y":0},"rightTop":{"x":100,"y":40}}&redirect=false，执行 GET 请求，返回的是 PNG 格式的图片如下：
!\[](../../../../../assets/images/root/maps/map/mapOverview.png)
若想获取 overview 资源的表述，则可对 http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/overview.rjson?viewer={"leftTop":{"x":0,"y":0},"rightBottom":{"x":500,"y":500}}&viewBounds={"leftBottom":{"x":60,"y":0},"rightTop":{"x":100,"y":40}}&redirect=false，执行 GET 请求，返回的 RJSON 格式的资源表述为：
{
"imageUrl": "http://supermapiserver:8090/iserver/output/cache/625093188_1f4x1f4/39013634/38x32/15342x13063_1008402973.png",
"lastModified": 1288230618586,
"mapName": "世界地图",
"viewBounds": {
"bottom": 11.749943697677603,
"left": 80.35018540207761,
"leftBottom": {
"x": 80.35018540207761,
"y": 11.749943697677603
},
"right": 111.9972141403224,
"rightTop": {
"x": 111.9972141403224,
"y": 43.3969724359224
},
"top": 43.3969724359224
},
"viewer": {
"bottom": 500,
"height": 500,
"left": 0,
"leftTop": {
"x": 0,
"y": 0
},
"right": 500,
"rightBottom": {
"x": 500,
"y": 500
},
"top": 0,
"width": 500
}
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。overview 资源的 HEAD 操作也可以有跟 GET 操作类似的请求参数。
HEAD 请求可以用来判断 overview 资源是否存在，或者客户端是否有权限访问 overview 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 overview 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)