# highlightImage

## URI
[<map_uri>](map.htm#URI)/highlightimage[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
通过 highlightImage 资源可以将一个高亮目标集合或查询结果以高亮图的形式展现出来。可以获取独立的高亮图，也可以获取高亮图叠加到某个基础图层上后的图片。通过 GET 请求来实现，其中高亮目标集合信息、查询结果信息、预叠加的图层信息都作为参数放在 GET 请求的 URI 中传给 SuperMap iServer 服务器，将查询结果出高亮图时，参数中还可以包含 style，用于指定高亮对象的风格。
支持的方法：
- [GET](#GET 请求)：获取一个具体的高亮图片，要高亮显示的目标集合或查询结果等参数都放在 URI 中。
- [HEAD](#HEAD 请求)：获取 highlightImage 资源的元数据信息。可以检查是否能对对应资源高亮出图，权限是否可以访问等。
支持的表述格式：PNG、RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/s_highlightimage.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}），URI 表示的是 highlightImage 资源，加上请求参数后可以获取高亮图片。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/highlightimage.rjson
### ](../../root.htm)GET 请求
获取一个具体的高亮图片，要高亮显示的目标集合或查询结果等参数都放在 URI 中。
#### 请求参数
highlightImage 资源的 GET 请求参数必须放在 URI 中，具体含义如下所示，其中每次请求 highlightTargetsID 和 queryResultID 只能有一个，表示对一个高亮目标集合出图，或者是对一个查询结果集合出图。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| redirect | boolean | 是否重定向，HTTP 传输中的一个概念。如果为 true，则将请求重定向到图片的真实地址；如果为 false，则响应体中是图片的字节流。默认为 true，进行重定向。 |
| highlightTargetSetID | String | 【必选参数】 跟 queryResultID 冲突。 要出图的高亮目标集资源，即  [highlightTargetSet](trackingLayer/highlightTargetSet.htm) 资源的 ID。 |
| queryResultID | String | 【必选参数】 跟 highlightTargetSetID 冲突。 要出图的查询结果资源，即的 [queryResult](queryResults/queryResult.htm) 资源的 ID |
| style | Style | 查询结果中高亮目标的风格。 |
| center | [Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 指定地图显示的中心点。 |
| scale | double | 指定地图显示的比例尺。详见[比例尺的定义](../../../../../Appendix/scale.htm)。 |
| width | int | 指定用户显示视窗的宽度，即产生图片的宽度。必须跟 height 一起使用，优先级高于 viewer。 |
| height | int | 指定用户显示视窗的高度，即产生图片的高度。必须跟 width 一起使用，优先级高于 viewer。 |
| viewer | [Rectangle](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle.html) | 指定用户显示视窗，即产生的图片的大小。默认为 256*256 像素。 |
| viewBounds | [Rectangle2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 指定地图浏览的地理范围。 |
| layersID | String | 地图中要出图的临时图层集合的 ID。临时图层集通过 tempLayersSet 资源创建。 |
| dynamicProjection | boolean | 是否允许地图动态投影显示。 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 请求的地图的坐标参考系统。 当此参数设置的坐标系统不同于地图的原有坐标系统时， 系统会进行动态投影，并返回动态投影后的地图图片。 参数使用示例：prjCoordSys={"epsgCode":3857}。 |
| cacheEnabled | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。（与 _cache 参数功能相同） |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。（与 cacheEnabled 参数功能相同） |
| customParams | String | 自定义定义参数。可以是任何形式组织的字符串。用户可以通过该属性传入自定义的参数。 |
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
如果直接获取高亮地图图片，可指定表述格式为 PNG，则返回一幅图片。
如果获取高亮地图图片信息，可指定表述格式为 RJSON、JSON、HTML 或 XML，则返回的表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| customResponse | String | 自定义处理结果。 |
| imageData | byte[] | 地图图片对应的二进制流。 |
| lastModified | long | 地图上次修改时间。 |
| imageUrl | String | 指向地图图片的 URI，图片为 PNG 格式。 |
| mapParam | [MapParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/MapParameter.html) | 地图参数。 |
#### 示例
作为示例，对已创建的一个高亮目标集（参见 [highlightTargetSet](trackingLayer/highlightTargetSet.htm) 资源）出图，该高亮目标集的 ID 为“pcg70k3e_17cacff656b74cca9fce82354cf4b82e”，可以通过如下两个 URI 来获取 PNG 格式的出图效果，其中前者是原坐标系下的效果，后者是动态投影到{"epsgCode":3857}的出图效果。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/highlightimage.png?highlightTargetSetID=pcg70k3e_17cacff656b74cca9fce82354cf4b82e&center={"x":110.0,"y":35.0}&scale=0.00000003
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/highlightImage.png?highlightTargetSetID=pcg70k3e_17cacff656b74cca9fce82354cf4b82e&center=center={"x":12245143.99,"y":4160330.24}&scale=0.00000003&prjCoordSys={"epsgCode":3857}
| 出图效果1 | 出图效果2 |
| --- | --- |
| | |
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
获取 highlightImage 资源的元数据信息。可以检查要高亮的目标是否存在，权限是否可以访问。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 highlightImage 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)