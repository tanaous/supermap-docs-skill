# zxyTileImage

## URI
- [<map_uri>](../map.htm#URI)/zxyTileImage[.<format>]
- [<map_uri>](../map.htm#URI)/zxyTileImage/z/x/y.[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](../map.htm)
## 介绍
将完整的地图图片以像素为单位切割成多个相同大小的格网，那么地图就可以由多个小块拼合而成。zxyTileImage 资源就表示以 ZXY 规范划分的地图的小块。详细请参考：[ZXY标准地图瓦片](../../../../../../Subject_introduce/Cache/MapCache/TileFormat/ZXY_format.htm)。
支持的方法：
- [GET](#GET 请求)：获取地图的格网图片，URI 中的参数确定了格网的位置。
- [HEAD](#HEAD 请求)：获取地图格网图片的元数据信息。检查 tileImage 资源是否存在，权限是否可以访问。
支持的表述格式：PNG、BMP、GIF、JPG、WebP、RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../assets/images/root/maps/map/zxyTileImage/zxyTileImage.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 png 输出格式为例加以说明，其中，supermapiserver 是服务器名。
- 
http://supermapiserver:8090/iserver/services/map-China400/rest/maps/China/zxyTileImage.png
- 
http://supermapiserver:8090/iserver/services/map-China400/rest/maps/China/zxyTileImage/0/0/0.png
### ](../../../root.htm)GET 请求
获取地图的格网图片，URI 中的参数确定了格网的位置等信息。
#### 请求参数
对 zxyTileImage 资源执行 GET 请求，获取地图的格网图片，需要在 URI 中包含相关参数，如果没有指定参数，则会按照地图的当前状态为准，进行切割和出图。参数如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| z | int | 地图缩放级别。 |
| x | long | 格网在地图中列号，从左向右递增。默认情况下，切片从地图最左上角开始，其格网列号为0。 |
| y | long | 格网在地图中行号，从上向下递增。默认情况下，切片从地图最左上角开始，其格网行号为0。 |
| width | int | 格网的宽度，单位是像素，默认为 256 像素。 |
| height | int | 格网的高度，单位是像素，默认为 256 像素。 |
| rasterfunction | [RasterFunctionParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/RasterFunctionParameter.html) | 栅格运算。仅支持请求栅格瓦片。 当前支持NDVI、HILLSHADE两种运算。可参见响应示例2
- NDVI 即 近红外区与红光区的反射率差值/近红外区与红光区的反射率和值。可用于反应出植物冠层的背景影响。参数使用时，可参照[NDVI参数构成](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/NDVIParameter.html)
- HILLSHADE 即 山体阴影，通过考虑照明源的角度和阴影，根据表面栅格创建地貌晕渲。参数使用时，可参照[HILLSHADE参数构成](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/HillshadeParameter.html) |
| layersID | String | 获取进行切片的地图图层 ID，即指定进行地图切片的图层，可以是临时图层集，也可以是当前地图中图层的组合。如果此参数缺省则对全部图层进行切片。 layersID 可以是临时图层创建时 templayers 的 ID，如 layersID=382139acf0，也可以是当前地图中的某些图层的 ID 编号。 其中，当前地图图层 ID 的定义规则如下： 1. 各级图层按照图层顺序自上而下从0开始编号； 2. 冒号（:）前为顶级图层； 3. 英文句号（.）表示其他各级图层间的从属关系； 4. 英文逗号（,）表示图层间的分隔。 例如： 1. [0:0,1,2.0]表示顶级图层0下面的子图层：0、1及其下属所有子图层，和2下的子图层0； 2. [1:1.2,2]表示顶级级图层1下面的子图层：1下的子图层2，和图层2及其下属所有子图层； 3. 两个示例合并在一起则是：[0:0,1,2.0,1:1.2,2] 此外，[0,1,2,3]表示顶级图层0下面的图层0、1、2、3及所有子图层，[0:,1:,2:]表示顶级图层0、1、2及其所有子图层。 |
| transparent | boolean | 格网图片是否透明。 |
| displayFilters | [displayFilter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/UGCLayer.html
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
1、如果在系统配置文件（参见：[iServer 配置文件说明](../../../../../../Appendix/iServer_configInfo.htm)）中设置了 SQL 查询表达式中需要屏蔽掉的字符串，那么在属性过滤条件中一旦发现输入了已经设置的字符串，系统会认为该条查询表达式非法并返回400参数异常，防止 SQL 注入。
2、如果 displayFilter 选择对日期字段设置过滤条件，需对日期增加单引号。例如 data='2024-03-20 00:00:00'
3、当过滤的图层不存在时，过滤无效，返回原出图效果
4、当过滤的图层存在，但过滤条件种字段或属性不存在或非法时，该图层将不展示内容 |
#### 响应结构
如果直接获取地图图片，可指定表述格式为 PNG、BMP、GIF 、WebP 或 JPG，则返回一幅图片。
如果获取地图图片信息，可指定表述格式为 RJSON、JSON、HTML 或 XML，则返回的表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| lastModified | long | 地图上次修改时间。 |
| imageUrl | String | 指向地图图片的 URI，图片为 PNG 格式。 |
| mapParam | [MapParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/MapParameter.html) | 地图参数。 |
| customResponse | String | 自定义处理结果 |
| image | BufferedImage | 地图图片对应的 BufferedImage 对象。 |
| imageData | byte[] | 地图图片对应的二进制流。 |
#### 响应示例1
执行 GET 请求：http://supermapiserver:8090/iserver/services/map-china/rest/maps/China/zxyTileImage.png?z=6&x=52&y=24&width=256&height=256，或http://supermapiserver:8090/iserver/services/map-china/rest/maps/China/zxyTileImage/6/52/24.png?width=256&height=256，则返回 PNG 格式的图片如下所示。
!\[](../../../../../../assets/images/root/maps/map/zxyTileImage/zxyTileImage_sample.png)
#### 响应示例2
执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/zxyTileImage.png?z=0&x=0&y=0&width=256&height=256，返回的是 PNG 格式的图片，如下表左图所示。
对上述 zxyTileImage 资源请求进行NDVI分析后的图片，即执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/zxyTileImage.png?z=0&x=0&y=0&width=256&height=256&rasterfunction={%22type%22:%22NDVI%22,%22redIndex%22:0,%22nirIndex%22:2}，如下表右图所示。!\[](../../../../../../assets/images/root/maps/map/image_ndvi.png)
对上述 zxyTileImage 资源请求进行HILLSHADE析后的图片，即执行 GET 请求：http:///supermapiserver:8090/iserver/services/map-test/rest/maps/map1/zxyTileImage.png?z=0&x=0&y=0&width=256&height=256&rasterfunction={%22type%22:%22HILLSHADE%22,%22altitude%22:75,%22azimuth%22:120,%22zFactor%22:1.0}，如下表右图所示。!\[](../../../../../../assets/images/root/maps/map/image_hillshade.png)
#### 响应示例3
执行 GET 请求：http://supermapiserver:8090/iserver/services/map-Jingjin/rest/maps/京津地区地图/zxyTileImage/8/210/98.png?transparent=true，则返回 PNG 格式的图片如下所示。
!\[](../../../../../../assets/images/root/maps/map/zxyTileImage/zxyTileImage_sample1.png)
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 zxyTileImage 资源是否存在，或者客户端是否有权限访问 zxyTileImage 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 zxyTileImage 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)