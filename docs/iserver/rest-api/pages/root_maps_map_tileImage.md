# tileImage

## URI
[<map_uri>](map.htm#URI)/tileimage[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
将出的完整的地图图片以像素为单位切割成多个相同大小的格网，那么地图就可以由多个小块拼合而成。tileImage 资源表示的就是这些地图的小块，通过对 tileImage 资源执行 GET 请求，可以获取地图（{mapName}）中相应的格网图片，可以在 URI 中包含一些定制输出图片的参数，如设置出图的图层、图片大小、格网行列号、地图是否透明、动态投影的目标投影等。这些参数必须包含在 URI 中，不能放在请求体里。
格网的划分规则如下：将地图全幅显示时的图片从左上角开始，往下和往右进行切割，切割的大小默认为 256*256 像素，左上角的格网行号为 0，列号为 0，往下和往右依次递增。其中，格网的大小和地图的比例尺等参数都可以在请求时进行指定。
注：经 iDesktopX 旋转过的地图通过本接口请求时无法显示旋转，建议使用 singleImage 资源进行请求。
支持的方法：
- [GET](#GET 请求)：获取地图的格网图片，URI 中的参数确定了格网的位置。
- [HEAD](#HEAD 请求)：获取地图格网图片的元数据信息。检查 tileImage 资源是否存在，权限是否可以访问。
支持的表述格式：PNG、BMP、GIF、JPG、WebP、RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/tileImage.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 png 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tileimage.png
### ](../../root.htm)GET 请求
获取地图的格网图片，URI 中的参数确定了格网的位置等信息。
#### 请求参数
对 tileImage 资源执行 GET 请求，获取地图的格网图片，需要在 URI 中包含相关参数，如果没有指定参数，则会按照地图的当前状态为准，进行切割和出图。参数如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| redirect | boolean | 是否重定向，HTTP 传输中的一个概念。如果为 true，则将请求重定向到图片的真实地址；如果为 false，则响应体中是图片的字节流。默认为 false，不进行重定向。 |
| x | int | 格网在地图中列号，从左向右递增。默认情况下，切片从地图最左上角开始，其格网列号为0。 |
| y | int | 格网在地图中行号，从上向下递增。默认情况下，切片从地图最左上角开始，其格网行号为0。 |
| scale | double | 地图的比例尺。如0.0001表示比例尺为1：10000。详见[比例尺的定义](../../../../../Appendix/scale.htm)。 |
| width | int | 格网的宽度，单位是像素，默认为 256 像素。 |
| height | int | 格网的高度，单位是像素，默认为 256 像素。 |
| transparent | boolean | 格网图片是否透明。 |
| origin | [Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 切片的起始参考点，默认为地图范围的左上角。如果指定为其他值，则以所赋值作为切片的起始参考点，计算切片行列号。
如对示范数据中的“世界地图”设置了切片起始点为 origin={"x":-200,"y":45}，则 origin 位于行列号为（0，0）的切片左上角，同时位于行列号为（-1，-1）的切片的右下角。 |
| layersID | String | 获取进行切片的地图图层 ID，即指定进行地图切片的图层，可以是临时图层集，也可以是当前地图中图层的组合。如果此参数缺省则对全部图层进行切片。
layersID 可以是临时图层创建时 templayers 的 ID，如 layersID=382139acf0，也可以是当前地图中的某些图层的 ID 编号。
其中，当前地图图层 ID 的定义规则如下：
1. 各级图层按照图层顺序自上而下从0开始编号；
2. 冒号（:）前为顶级图层；
3. 英文句号（.）表示其他各级图层间的从属关系；
4. 英文逗号（,）表示图层间的分隔。
例如：
1. [0:0,1,2.0]表示顶级图层0下面的子图层：0、1及其下属所有子图层，和2下的子图层0；
2. [1:1.2,2]表示顶级级图层1下面的子图层：1下的子图层2，和图层2及其下属所有子图层；
3. 两个示例合并在一起则是：[0:0,1,2.0,1:1.2,2]
此外，[0,1,2,3]表示顶级图层0下面的图层0、1、2、3及所有子图层，[0:,1:,2:]表示顶级图层0、1、2及其所有子图层。 |
| dynamicProjection | boolean | 是否允许地图动态投影显示。 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 请求的地图的坐标参考系统。
当此参数设置的坐标系统不同于地图的原有坐标系统时， 系统会进行动态投影，并返回动态投影后的地图图片。 参数使用时，需按照[PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 epsgCode 的方式传入坐标参考系，如： prjCoordSys={"epsgCode":3857}。 |
| random | boolean | 是否采用随机数的方式出图，默认为 false。
如果为 true，则 scale、x、y 三个参数中未指定的参数会在各自的取值范围内采用随机数的方式赋值。 |
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
| maxVisibleVertex | int | 最大几何对象可见节点数。
如果几何对象的节点数超过指定的个数，则超过的那部分节点不显示。 |
| minVisibleTextSize | double | 文本的最小可见尺寸，单位为像素。 |
| overlapDisplayed | boolean | 地图对象在同一范围内时，是否重叠显示，默认为 false。
如果为 true，则同一范围内的对象会直接压盖；如果为 false 则通过 overlapDisplayedOptions 控制对象不压盖显示。 |
| overlapDisplayedOptions | [OverlapDisplayedOptions](../../../../iServerJavadoc/com/supermap/services/components/commontypes/OverlapDisplayedOptions.html) | 避免地图对象压盖显示的过滤选项，当 overlapDisplayed 为 false 时有效，用来增强对地图对象压盖时的处理。 |
| paintBackground | boolean | 是否绘制地图背景。 |
| textAngleFixed | boolean | 文本角度是否固定。 |
| textOrientationFixed | boolean | 文本朝向是否固定。 |
| rasterfunction | [RasterFunctionParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/RasterFunctionParameter.html) | 栅格运算。仅支持请求栅格瓦片。
当前支持NDVI、HILLSHADE两种运算。可参见示例3。
- NDVI 即 近红外区与红光区的反射率差值/近红外区与红光区的反射率和值。可用于反应出植物冠层的背景影响。参数使用时，可参照[NDVI参数构成](../../../../iServerJavadoc/com/supermap/services/components/commontypes/NDVIParameter.html)
- HILLSHADE 即 山体阴影，通过考虑照明源的角度和阴影，根据表面栅格创建地貌晕渲。参数使用时，可参照[HILLSHADE参数构成](../../../../iServerJavadoc/com/supermap/services/components/commontypes/HillshadeParameter.html) |
| tileversion | String | 切片版本名称，_cache 为 true 时有效。 可以通过[tileset 资源的 GET 请求](tilesets/tileset.htm#GET 请求)获取，即响应结果中 tileVersions 的 name 字段，如 tileversion=51de5c76-c994-4207-94a7-d31f948f56e3；如果没有设置 tileversion 参数，而且当前地图的切片集中存在多个版本，则默认使用最后一个更新版本。 |
| displayFilters | [displayFilter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/UGCLayer.html
) | 图层的显示过滤条件，利用该参数控制图层中可显示的要素。
参数结构：
{
"<layerName1>": "{displayFilter}",
"<layerName2>": "{displayFilter}"
}
其中，
<layerName>为地图中某图层名称，可从 layer 资源响应体参数 caption 中获取；
{displayFilter} 为属性过滤条件，仅对数据中存在的属性生效。
当前仅支持对工作空间数据源发布的地图进行属性过滤，支持对多图层同时过滤。
请注意：
1、如果在系统配置文件（参见：[iServer 配置文件说明](../../../../../Appendix/iServer_configInfo.htm)）中设置了 SQL 查询表达式中需要屏蔽掉的字符串，那么在属性过滤条件中一旦发现输入了已经设置的字符串，系统会认为该条查询表达式非法并返回400参数异常，防止 SQL 注入。
2、如果 displayFilter 选择对日期字段设置过滤条件，需对日期增加单引号。例如 data='2024-03-20 00:00:00'
3、当过滤的图层不存在时，过滤无效，返回原出图效果
4、当过滤的图层存在，但过滤条件种字段或属性不存在或非法时，该图层将不展示内容 |
| chartSetting | [ChartSetting](../../../../iServerJavadoc/com/supermap/services/components/commontypes/ChartSetting.html) | 海图显示设置参数。具体参数见表 ChartSetting 参数详情。 |
表 ChartSetting 参数详情
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| colourModeChart | String | 颜色模式，白昼模式 DAY_BRIGHT，晨昏模式 DUSK，夜晚模式 NIGHT。 |
| deepContour | Double | 深水等深线。 |
| depthUnit | String | 水深单位，如米。 |
| displayableAcronymClassify | List<String,Boolean> | 物标分组是否可显示的对应关系，即按类别显示。如显示物标组一和自然物， {"group1":true,"NavigationlAids":true}。
物标分组信息可通过 chartAcronymClassify 资源获取。 |
| displayableFeature | List<String,Boolean> | 物标类型是否可显示的对应关系，即按要素显示。如显示锚泊区，{"ACHARE":true}。
物标类型信息可通过 [chartFeatureInfoSpecs](chartFeatureInfoSpecs.htm) 资源获取。 |
| displayBorder | Boolean | 是否显示边框。 |
| displayCellName | Boolean | 是否显示图幅编号。 |
| displayLowAccurateMarker | Boolean | 是否显示低精度编号。 |
| displayMetaObject | Boolean | 是否显示元物标。 |
| displayModeChart | String | 海图显示模式，基本显示模式 BASIC，标准显示模式 STANDARD，其他显示模式 OTHER。 |
| displayOtherContourLabel | Boolean | 是否显示其他等深线标注，即安全水深线标注以外的标注。 |
| displaySafetyContourLabel | Boolean | 是否显示安全水深线标注。 |
| displaySounding | Boolean | 是否显示水深点。 |
| displayTextMessage | Boolean | 是否在海图上显示文本信息。 |
| displayTypeName | String | 海图显示类型名称，如 S52，IENC，INT。 |
| fontName | String | 海图上显示文本的字体名称。 |
| fontSize | Double | 海图上显示文本的字体字号。 |
| localizationDisplayText | Boolean | 是否对文本进行本地化显示。 |
| minVisibleScaleEnabled | Boolean | 物标最先可见比例尺是否有效。 |
| safetyContour | Double | 安全等深线。 |
| safetyDepth | Double | 安全水深值。 |
| selectableFeature | List<String,Boolean> | 物标类型是否可选择的对应关系。
物标类型信息可通过 [chartFeatureInfoSpecs](chartFeatureInfoSpecs.htm) 资源获取。 |
| shallowContour | Double | 浅水等深线。 |
| simplifiedMarker | Boolean | 是否使用简单海图符号。 |
| symbolizedAreaBoundary | Boolean | 是否使用符号化的区域边界。 |
| textClipRegionEnabled | Boolean | 是否启用海图图层的文本显示裁剪区。 |
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
对 tileImage 资源请求全部图层和指定 layersID=[0:0,1,7,10,11] 时的出图效果进行对比，即指定 layersID 时只对下表中的图层进行切片。
| 父图层 | 子图层名 |
| --- | --- |
| 世界地图（0） | ContinentLabel@World@@世界地图（0） |
| 世界地图（0） | OceanLabel@World@@世界地图（1） |
| 世界地图（0） | Capitals@World@@世界地图（7） |
| 世界地图（0） | CountryLabel@World@@世界地图（10） |
| 世界地图（0） | 单值专题图@@世界地图（11） |
二者出图效果如下表中的图片所示：
| 不指定 layersID 默认所有图层出图 | 指定 layersID 出图 |
| --- | --- |
| | |
左图：如果不指定 layersID，默认返回包含所有图层的地图，即执行 GET 请求：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tileimage.png?scale=0.00000002&x=9&y=2&width=256&height=256。
右图：如果指定 layersID=[0:0,1,7,10,11]，则仅对指定的图层进行出图，即执行 GET 请求：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tileimage.png?scale=0.00000002&x=9&y=2&width=256&height=256&layersID=[0:0,1,7,10,11]。
#### 示例2
如果对示例1中请求的图片进行动态投影，请求当前地图动态投影到 WebMercator 投影坐标系下的出图效果，即执行 GET 请求：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tileimage.png?scale=0.00000002&x=9&y=2&width=256&height=256&prjCoordSys={"epsgCode":3857}，则返回 PNG 格式的图片如下所示。因为地图进行动态投影后，地图形状、大小、比例尺等都发生了变化，所以要获取原有地理位置的地图需要设置投影后合适的比例尺与图片索引。修改图片索引为 x=9&y=6后，出图效果如下表右图所示。
| 动态投影出图效果1 | 动态投影出图效果2 |
| --- | --- |
| | |
#### 示例3
对 tileImage 资源：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/tileimage.png?transparent=false&cacheEnabled=true&width=256&height=256&x=7&y=9&scale=0.000003461454994642238&redirect=false&overlapDisplayed=false，执行 GET 请求，返回的是 PNG 格式的图片，如下表左图所示。
对上述 tileImage 资源请求进行NDVI分析后的图片，即执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/tileimage.png?transparent=false&cacheEnabled=true&width=256&height=256&x=7&y=9&scale=0.000003461454994642238&redirect=false&overlapDisplayed=false&rasterfunction={%22type%22:%22NDVI%22,%22redIndex%22:0,%22nirIndex%22:2}，如下表右图所示。
!\[](../../../../../assets/images/root/maps/map/image_ndvi.png)
对上述 tileImage 资源请求进行HILLSHADE析后的图片，即执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/tileimage.png?transparent=false&cacheEnabled=true&width=256&height=256&x=7&y=9&scale=0.000003461454994642238&redirect=false&overlapDisplayed=false&rasterfunction={%22type%22:%22HILLSHADE%22,%22altitude%22:75,%22azimuth%22:120,%22zFactor%22:1.0}，如下表右图所示。
!\[](../../../../../assets/images/root/maps/map/image_hillshade.png)
#### 示例4
使用 tileImage 资源请求海图出图：http://localhost:8090/iserver/services/map-Chart9FU/rest/maps/Chart9Fu/tileImage.png?width=256&height=256&redirect=false&transparent=true&cacheEnabled=true&origin=%7B%22x%22%3A-97.6138456%2C%22y%22%3A29.8688889%7D&overlapDisplayed=false&scale=0.000013845819978568949&x=60&y=8&chartSetting={"symbolizedAreaBoundary":false,"localizationDisplayText":false,"displayModeChart":"BASIC","displayTwoShades":false,"deepContour":30.0,"safetyContour":30.0,"shallowContour":2.0,"selectionStyle":{"fillGradientOffsetRatioX":0.0,"markerSize":{"width":0.0,"empty":false,"height":0.0},"picturePath":"","fillForeColor":{"r":220,"b":40,"g":70,"alpha":100},"fillGradientOffsetRatioY":0.0,"markerAngle":0.0,"fillSymbolID":2,"lineColor":{"r":220,"b":40,"g":70,"alpha":200},"markerSymbolID":60000001,"lineWidth":0.6,"sVGPath":"","fillOpaqueRate":100,"fillBackOpaque":false,"fillBackColor":{"r":255,"b":255,"g":255,"alpha":255},"fillGradientMode":{},"fixedColorOfSVG":false,"lineSymbolID":0,"fillGradientAngle":0.0},"displayBorder":false,"textClipRegionEnabled":false,"displayCellName":false,"colourModeChart":"DAY_BRIGHT","displaySafetyContourLabel":true,"simplifiedMarker":true,"displayTextMessage":true,"displayLowAccurateMarker":true,"displayMetaObject":false,"fontName":"Arial","displayScaleFactor":0.05,"displaySounding":true,"displayTypeName":"S52","safetyDepth":30.0,"depthUnit":{"title":"米"},"fontSize":10.0,"displayOtherContourLabel":false,"minVisibleScaleEnabled":true,"displayableAcronymClassify":{"group1":true,"Soundings":true,"NavigationalAids":false}}
#### 示例5
对 tileImage 资源：http:///supermapiserver:8090/iserver/services/map-World/rest/maps/%E4%B8%96%E7%95%8C%E5%9C%B0%E5%9B%BE/tileImage.webp?width=256&height=256&redirect=false&transparent=true&cacheEnabled=true&origin=%7B%22x%22%3A-180%2C%22y%22%3A90%7D&overlapDisplayed=true&scale=1.0252826049096162e-7&x=51&y=8，执行 GET 请求，返回的是 PNG 格式的图片，如下表左图所示。
对上述 tileImage 资源请求多图层属性过滤后的图片，即执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-World/rest/maps/%E4%B8%96%E7%95%8C%E5%9C%B0%E5%9B%BE/tileImage.webp?width=256&height=256&redirect=false&transparent=true&cacheEnabled=true&origin=%7B%22x%22%3A-180%2C%22y%22%3A90%7D&overlapDisplayed=true&scale=1.0252826049096162e-7&x=51&y=8&displayFilters={"Capitals@World":"Country%20like%27%25鲜%27|%20Country%20=%20%27韩国%27","标签专题图%232":"SMID%20>=%2031","单值专题图":"SmID%20!=%20214","Countries@World":"SMAREA%20<%209.766875186847756"}，如下表右图所示。
| 原出图效果 | 属性过滤后的出图效果 |
| --- | --- |
| | |
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
获取 tileImage 资源的元数据信息。检查该 tileImage 资源是否存在，权限是否可以访问。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tileImage 资源是否支持<format>格式的表述。
## 请参见
- [map](map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)