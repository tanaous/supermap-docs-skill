# entireImage

## URI
[<map_uri>](map.htm#URI)/entireimage[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
作为 map 资源的一个子资源，entireImage  资源用于获取地图（map 资源）全幅显示时的图片。通过执行 GET 请求来获取，可以在 URI 中包含一些定制输出图片的参数，如设置出图的图层、图片大小、旋转角度、动态投影的目标坐标系等。这些参数必须包含在 URI 中，不能放在请求体里。
支持的方法：
- [GET](#GET 请求)：获取地图（{mapName}）全幅显示时的图片。
- [HEAD](#HEAD 请求)：获取 entireImage 资源的元数据信息。检查该 entireImage 资源是否存在，权限是否可以访问。
支持的表述格式：PNG、BMP、GIF、JPG、RJSON、JSON、JSONP、FASTJSON、HTML、XML、WebP。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/s_entireimage.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 PNG 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/entireimage.png
### ](../../root.htm)GET 请求
获取地图 World 的全幅显示图片。
#### 请求参数
对 entireImage 资源执行 GET 请求时，可以包含一些参数，如果包含了这些参数，服务器会按照这些传入的参数出图，如果没有指定的地图参数，则以地图的当前状态为准出图。参数必须包含在 URI 中，不能放在请求体里。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| layerName | String | 指定图层，以该图层内容的最小外接矩形作为全幅显示的地理范围。 |
| width | int | 指定用户显示视窗的宽度，即产生图片的宽度。必须跟 height 一起使用，优先级高于 viewer。 |
| height | int | 指定用户显示视窗的高度，即产生图片的高度。必须跟 width 一起使用，优先级高于 viewer。 |
| viewer | [Rectangle](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle.html) | 指定用户显示视窗，即产生的图片的大小。默认为 256*256 像素。 |
| transparent | boolean | 地图图片是否透明。 |
| layersID | String | 地图中要出图的图层 ID。
详见 [tileImage 中 layersID 的含义](tileImage.htm#layersID)。 |
| redirect | boolean | 是否重定向，HTTP 传输中的一个概念。如果为 true，则将请求重定向到图片的真实地址；如果为 false，则响应体中是图片的字节流。默认为 false，不进行重定向。 |
| dynamicProjection | boolean | 是否允许地图动态投影显示。 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 请求的地图的坐标参考系统。 当此参数设置的坐标系统不同于地图的原有坐标系统时， 系统会进行动态投影，并返回动态投影后的地图图片。
参数使用时，需按照[PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 epsgCode 的方式传入坐标参考系，如：
prjCoordSys={"epsgCode":3857}。 |
| cacheEnabled | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。（与 _cache 参数功能相同） |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。（与 cacheEnabled 参数功能相同） |
| customParams | String | 自定义定义参数。
可以是任何形式组织的字符串。用户可以通过该属性传入自定义的参数。 |
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
| maxVisibleVertex | int | 最大几何对象可见节点数。
如果几何对象的节点数超过指定的个数，则超过的那部分节点不显示。 |
| minVisibleTextSize | double | 文本的最小可见尺寸，单位为像素。 |
| overlapDisplayed | boolean | 地图对象在同一范围内时，是否重叠显示，默认为 false。 如果为 true，则同一范围内的对象会直接压盖；如果为 false 则通过 overlapDisplayedOptions 控制对象不压盖显示。 |
| overlapDisplayedOptions | [OverlapDisplayedOptions](../../../../iServerJavadoc/com/supermap/services/components/commontypes/OverlapDisplayedOptions.html) | 避免地图对象压盖显示的过滤选项，当 overlapDisplayed 为 false 时有效，用来增强对地图对象压盖时的处理。 |
| paintBackground | boolean | 是否绘制地图背景。 |
| rasterfunction | [RasterFunctionParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/RasterFunctionParameter.html) | 栅格运算。仅支持请求栅格瓦片。 当前支持NDVI、HILLSHADE两种运算。 可参见示例1。
- 
NDVI 即 近红外区与红光区的反射率差值/近红外区与红光区的反射率和值。可用于反应出植物冠层的背景影响。参数使用时，可参照[NDVI参数构成](../../../../iServerJavadoc/com/supermap/services/components/commontypes/NDVIParameter.html)
- 
HILLSHADE 即 山体阴影，通过考虑照明源的角度和阴影，根据表面栅格创建地貌晕渲。参数使用时，可参照[HILLSHADE参数构成](../../../../iServerJavadoc/com/supermap/services/components/commontypes/HillshadeParameter.html) |
| textAngleFixed | boolean | 文本角度是否固定。 |
| textOrientationFixed | boolean | 文本朝向是否固定。 |
#### 响应结构
如果直接获取地图图片，可指定表述格式为 PNG、BMP、GIF、WebP 或 JPG，则返回一幅图片。
如果获取地图图片信息，可指定表述格式为 RJSON、JSON、HTML 或 XML，则返回的表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| customResponse | String | 自定义处理结果。 |
| imageData | byte[] | 地图图片对应的二进制流。 |
| lastModified | long | 地图上次修改时间。 |
| imageUrl | String | 指向地图图片的 URI，图片为 PNG 格式。 |
| mapParam | [MapParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/MapParameter.html) | 地图参数。 |
#### 示例1
对 entireImage 资源：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/entireImage.png?transparent=false&width=256&height=256&redirect=false&overlapDisplayed=false，执行 GET 请求，返回的是 PNG 格式的图片，如下表左图所示。
对上述 entireImage  资源请求进行NDVI分析后的图片，即执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/entireImage.png?transparent=false&width=256&height=256&redirect=false&overlapDisplayed=false&rasterfunction={%22type%22:%22NDVI%22,%22redIndex%22:0,%22nirIndex%22:2}，如下表右图所示。
!\[](../../../../../assets/images/root/maps/map/image_ndvi.png)
对上述 entireImage 资源请求进行HILLSHADE析后的图片，即执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/entireImage.png?transparent=false&cacheEnabled=true&width=256&height=256&x=7&y=9&scale=0.000003461454994642238&redirect=false&overlapDisplayed=false&rasterfunction={%22type%22:%22HILLSHADE%22,%22altitude%22:75,%22azimuth%22:120,%22zFactor%22:1.0}，如下表右图所示。
!\[](../../../../../assets/images/root/maps/map/image_hillshade.png)
#### 示例2
对示例 entireImage 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/entireimage.png?width=512&height=256，执行 GET 请求，返回的是 PNG 格式的图片，如下所示：
!\[](../../../../../assets/images/root/maps/map/entireimage.png)
如果需要对当前地图进行动态投影，请求当前地图动态投影到 WebMercator 投影坐标系下的出图效果，则需执行 GET 请求：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/entireimage.png?&prjCoordSys={"epsgCode":3857}&width=512&height=512 。
!\[](../../../../../assets/images/root/maps/map/entireimage1.png)
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。entireImage  资源的 HEAD 操作也可以有跟 GET 操作类似的请求参数。
HEAD 请求可以用来判断 entireImage 资源是否存在，或者客户端是否有权限访问 entireImage 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 entireImage 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)