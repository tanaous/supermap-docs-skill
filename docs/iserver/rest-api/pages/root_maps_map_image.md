# image

## URI
[<map_uri>](map.htm#URI)/image[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
作为 map 资源的一个子资源，image 资源用于获取 map 资源的一幅图片。仅支持 GET 操作，在执行 GET 请求的时候，可以传递一些参数，用于定制要获取的图片，包括用户显示视窗的大小、地图显示区域的范围、地图的中心点、动态投影的目标投影等，返回一幅地图图片。其中，参数必须包含在 URI 中，不能放在请求体里。默认返回的地图图片的格式是 PNG。
关于本资源的使用方法，可参考开发指南：[获取地图的图片](../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Map_Opr/getMapImage.htm)、[地图的放大、缩小、平移](../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Map_Opr/mapImageApp.htm)。
支持的方法：
- [GET](#GET 请求)：获取地图的图片。
- [HEAD](#HEAD 请求)：获取 image 资源的元数据信息。检查该 image 资源是否存在，权限是否可以访问。
支持的表述格式：PNG、BMP、GIF、JPG、WebP、RJSON、JSON、HTML、XML、KML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/image.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 PNG 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/image.png
### ](../../root.htm)GET 请求
获取地图图片。
#### 请求参数
对 image 资源执行 GET 请求时，可以包含一些参数，如果包含了这些参数，服务器会按照这些传入的参数出图，如果没有指定的地图参数，则以地图的当前状态为准出图，请求参数必须包含在 URI 中。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| redirect | boolean | 是否重定向，HTTP 传输中的一个概念。如果为 true，则将请求重定向到图片的真实地址；如果为 false，则响应体中是图片的字节流。默认为 false，不进行重定向。 |
| center | [Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 指定地图显示的中心点。 |
| scale | double | 指定地图显示的比例尺。详见[比例尺的定义](../../../../../Appendix/scale.htm)。 |
| width | int | 指定用户显示视窗的宽度，即产生图片的宽度。必须跟 height 一起使用，优先级高于 viewer。 |
| height | int | 指定用户显示视窗的高度，即产生图片的高度。必须跟 width 一起使用，优先级高于 viewer。 |
| viewer | [Rectangle](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle.html) | 指定用户显示视窗，即产生的图片的大小。默认为 256*256 像素。 |
| layersID | String | 地图中要出图的图层 ID。 详见 [tileImage 中 layersID 的含义](tileImage.htm#layersID)。 |
| transparent | boolean | 地图图片是否透明。 |
| viewBounds | [Rectangle2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 指定地图浏览的地理范围。 |
| dynamicProjection | boolean | 是否允许地图动态投影显示。 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 请求的地图的坐标参考系统。 当此参数设置的坐标系统不同于地图的原有坐标系统时， 系统会进行动态投影，并返回动态投影后的地图图片。 参数使用时，需按照[PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 epsgCode 的方式传入坐标参考系，如： prjCoordSys={"epsgCode":3857}。 |
| random | boolean | 是否采用随机数的方式出，默认为 false。 如果为 true，则在 viewbounds 未指定的情况下，scale、center 两个参数中未指定的参数会在各自的取值范围内采用随机数的方式赋值。 |
| cacheEnabled | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。（与 _cache 参数功能相同） |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。（与 cacheEnabled 参数功能相同） |
| customParams | String | 自定义定义参数。 可以是任何形式组织的字符串。用户可以通过该属性传入自定义的参数。 |
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
| maxVisibleVertex | int | 最大几何对象可见节点数。 如果几何对象的节点数超过指定的个数，则超过的那部分节点不显示。 |
| minVisibleTextSize | double | 文本的最小可见尺寸，单位为像素。 |
| overlapDisplayed | boolean | 地图对象在同一范围内时，是否重叠显示，默认为 false。 如果为 true，则同一范围内的对象会直接压盖；如果为 false 则通过 overlapDisplayedOptions 控制对象不压盖显示。 |
| overlapDisplayedOptions | [OverlapDisplayedOptions](../../../../iServerJavadoc/com/supermap/services/components/commontypes/OverlapDisplayedOptions.html) | 避免地图对象压盖显示的过滤选项，当 overlapDisplayed 为 false 时有效，用来增强对地图对象压盖时的处理。 |
| paintBackground | boolean | 是否绘制地图背景。 |
| rasterfunction | [RasterFunctionParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/RasterFunctionParameter.html) | 栅格运算。仅支持请求栅格瓦片。 当前支持NDVI、HILLSHADE两种运算。 可参见示例2。
- NDVI 即 近红外区与红光区的反射率差值/近红外区与红光区的反射率和值。可用于反应出植物冠层的背景影响。参数使用时，可参照[NDVI参数构成](../../../../iServerJavadoc/com/supermap/services/components/commontypes/NDVIParameter.html)
- HILLSHADE 即 山体阴影，通过考虑照明源的角度和阴影，根据表面栅格创建地貌晕渲。参数使用时，可参照[HILLSHADE参数构成](../../../../iServerJavadoc/com/supermap/services/components/commontypes/HillshadeParameter.html) |
| textAngleFixed | boolean | 文本角度是否固定。 |
| textOrientationFixed | boolean | 文本朝向是否固定。 |
| tileversion | String | 切片版本名称，_cache 为 true 时有效。 可以通过[tileset 资源的 GET 请求](tilesets/tileset.htm#GET 请求)获取，即响应结果中 tileVersions 的 name 字段，如 tileversion=51de5c76-c994-4207-94a7-d31f948f56e3；如果没有设置 tileversion 参数，而且当前地图的切片集中存在多个版本，则默认使用最后一个更新版本。 请注意，该参数仅当能够配置缓存时生效。即，由工作空间、REST 地图服务、超图云服务、WMS服务、WMTS服务、Bing Maps 地图服务、Google Maps 地图服务、天地图服务、百度地图服务、OpenStreetMap 地图服务、ArcGIS REST 地图服务等发布的 REST 地图服务支持此参数。 |
| displayFilters | [displayFilter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/UGCLayer.html
) | 图层的显示过滤条件，利用该参数控制图层中可显示的要素。
参数结构：
{
"<layerName1>": "{displayFilter}",
"<layerName2>": "{displayFilter}"
}
其中，
<layerName> 为地图中某图层名称，可从 layer 资源响应体参数 caption 中获取；
{displayFilter} 为属性过滤条件，仅对数据中存在的属性生效。
当前仅支持对工作空间数据源发布的地图进行属性过滤，支持对多图层同时过滤。
请注意：
1、如果在系统配置文件（参见：[iServer 配置文件说明](../../../../../Appendix/iServer_configInfo.htm)）中设置了 SQL 查询表达式中需要屏蔽掉的字符串，那么在属性过滤条件中一旦发现输入了已经设置的字符串，系统会认为该条查询表达式非法并返回400参数异常，防止 SQL 注入。
2、如果 displayFilter 选择对日期字段设置过滤条件，需对日期增加单引号。例如 data='2024-03-20 00:00:00'
3、当过滤的图层不存在时，过滤无效，返回原出图效果
4、当过滤的图层存在，但过滤条件种字段或属性不存在或非法时，该图层将不展示内容 |
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
对 image 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/image.png?center={"x":96.17 ,"y":27.57}&scale=0.000000025632，执行 GET 请求，返回的是 PNG 格式的图片，如下表左图所示。
对上述 image 资源请求动态投影后的图片，即执行 GET 请求：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/image.png?center={"x":10706007.29,"y":3258532.62}&scale=0.000000022573&prjCoordSys={"epsgCode":3857}，如下表右图所示。
| 原出图效果 | 动态投影出图效果 |
| --- | --- |
| | |
#### 示例2
对 image 资源：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/image.png?transparent=false&cacheEnabled=true&width=256&height=256&x=7&y=9&scale=0.000003461454994642238&redirect=false&overlapDisplayed=false，执行 GET 请求，返回的是 PNG 格式的图片，如下表左图所示。
对上述 image 资源请求进行NDVI分析后的图片，即执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/image.png?transparent=false&cacheEnabled=true&width=256&height=256&x=7&y=9&scale=0.000003461454994642238&redirect=false&overlapDisplayed=false&rasterfunction={%22type%22:%22NDVI%22,%22redIndex%22:0,%22nirIndex%22:2}，如下表右图所示。
!\[](../../../../../assets/images/root/maps/map/image_ndvi.png)
对上述 image 资源请求进行分析后的图片，即执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/image.png?transparent=false&cacheEnabled=true&width=256&height=256&x=7&y=9&scale=0.000003461454994642238&redirect=false&overlapDisplayed=false&rasterfunction={%22type%22:%22HILLSHADE%22,%22altitude%22:75,%22azimuth%22:120,%22zFactor%22:1.0}，如下表右图所示。
!\[](../../../../../assets/images/root/maps/map/image_hillshade.png)
#### 示例3
对 image 资源：http:///supermapiserver:8090/iserver/services/map-World/rest/maps/世界地图/image.png?center={"x":96.17,"y":27.57}&scale=0.00000002563207&width=256&height=256&transparent=false&prjCoordSys={"epsgCode":4326}，执行 GET 请求，返回的是 PNG 格式的图片，如下表左图所示。
对上述 image 资源请求多图层属性过滤后的图片，即执行 GET 请求：http://supermapiserver:8090/iserver/services/map-World/rest/maps/世界地图/image.png?center={"x":96.17,"y":27.57}&scale=0.00000002563207&width=256&height=256&transparent=false&prjCoordSys={"epsgCode":4326}&displayFilters={"CountryLabel@World":"COUNTRY is null","Grids@World":"LongtitudeSimple = '100°'","单值专题图":"SmArea >= 43.14321767192996 AND SmArea <= 960.4537031350538","Ocean@World":"SmID != 34"}}，如下表右图所示。
| 原出图效果 | 属性过滤后的出图效果 |
| --- | --- |
| | |
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。image 资源的 HEAD 操作也可以有跟 GET 操作类似的请求参数。
HEAD 请求可以用来判断 image 资源是否存在，或者客户端是否有权限访问 image 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 image 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)