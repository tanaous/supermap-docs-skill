# tileFeature

## URI
[<map_uri>](../map.htm#URI)/tileFeature[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](../map.htm)
## 子资源
[vectorStyles](vectorStyles/vectorStyles.htm)、[vectorSymbols](vectorSymbols/vectorSymbols.htm)
## 介绍
通过对 tileFeature 资源执行请求，可以获取地图{mapName}中矢量图层中的瓦片要素。客户端获取的瓦片要素，可以通过自定义的样式进行渲染，并可查询交互。
您可以在 URI 中设置输出矢量切片的参数，如设置图层、切片大小、格网行列号等。其中，格网的划分规则如下：将地图全幅显示时的图片从左上角开始，往下和往右进行切割，切割的大小默认为256*256 像素，左上角的格网行号为 0，列号为 0，往下和往右依次递增。其中，格网的大小和地图的比例尺等参数都可以在请求时进行指定。
支持的方法：
- [GET](#GET 请求)：获取地图中指定矢量图层的瓦片要素，URI 中的参数确定了格网的位置。
- [HEAD](#HEAD 请求)：检查 tileFeature 资源是否存在，或权限是否可以访问 tileFeature 资源。
支持的表述格式：MVT。
## 资源层次
!\[](../../../../../../assets/images/root/maps/map/tileFeature.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tileFeature.mvt
### ](../../../root.htm)GET 请求
获取地图的矢量切片，URI 中的参数确定了格网的位置等信息。
#### 请求参数
对 tileFeature 资源执行 GET 请求，获取地图中指定矢量图层的瓦片要素，需要在 URI 中包含相关参数，如果没有指定参数，则会按照地图的当前状态为准，进行切割和出图。
目前有两种获取矢量瓦片的方式：一是按照瓦片的行列号获取（参数为 X、Y），二是按照视图范围获取（参数为 ViewBounds ），其他参数相同，具体如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| x | long | 格网在地图中列号，从左向右递增。默认情况下，切片从地图最左上角开始，其格网列号为0。 |
| y | long | 格网在地图中行号，从上向下递增。默认情况下，切片从地图最左上角开始，其格网行号为0。 |
| ViewBounds | String | 根据 ViewBounds 的范围获取对应的瓦片，如: viewBounds=1.2914800299064118E7,4931105.5687329285,1.299307181602814E7,5009377.085696951 |
| scale | double | 地图的比例尺。如0.0001表示比例尺为1：10000。详见[比例尺的定义](../../../../../../Appendix/scale.htm)。 |
| width | int | 格网的宽度，单位是像素，默认为 256 像素。 |
| height | int | 格网的高度，单位是像素，默认为 256 像素。 |
| origin | [Point2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 切片的起始参考点，默认为地图范围的左上角。如果指定为其他值，则以所赋值作为切片的起始参考点，计算切片行列号。 如对示范数据中的“世界地图”设置了切片起始点为 origin={"x":-200,"y":45}，则 origin 位于行列号为（0，0）的切片左上角，同时位于行列号为（-1，-1）的切片的右下角。 |
| layersID | String | 获取进行切片的地图图层 ID，即指定进行地图切片的矢量图层（点、线、面及文本图层），是当前地图中指定图层的组合。如果此参数为空，则对默认全部矢量图层进行切片。   其中，当前地图图层 ID 的定义规则如下： 1. 各级图层按照图层顺序自上而下从0开始编号。 2. 冒号（:）前为顶级图层。 3. 英文句号（.）表示其他各级图层间的从属关系。 4. 英文逗号（,）表示图层间的分隔。 例如： 1. [0:0,1,2.0]表示顶级图层0下面的子图层：0、1及其下属所有子图层，和2下的子图层0。 2. [1:1.2,2]表示顶级图层1下面的子图层：1下的子图层2，和图层2及其下属所有子图层。 3. 两个示例合并在一起则是：[0:0,1,2.0,1:1.2,2] 此外，[0,1,2,3]表示顶级图层0下面的图层0、1、2、3及所有子图层，[0:,1:,2:]表示顶级图层0、1、2及其所有子图层。 |
| layerNames | String[] | 指定图层的名称列表。支持的类型为矢量图层（点、线、面及文本图层）。例如：layerNames=["ContinentLabel@World","Capitals@World"]。另 layerNames=_all 表示传入所有的矢量图层。 |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
| expands | int | 各图层扩展的像素值。 在图层编码（tileImage 资源的 layersID 编码方法 ）基础上定义了每个图层所扩展的像素。 具体方法是在图层 ID 后加“_{pixel}”，以标识该图层需要扩展的像素；若不加“_{pixel}”则会按照默认的图层样式计算图层样式。 例如： 0_15:0_5,1_10：表示顶级0图层的0、1子图层扩展的像素分别为5、10像素；顶级0图层下，除0、1图层外的子图层的扩展像素都为15像素。 0:0_5,1_10：表示顶级0图层的0、1子图层扩展的像素分别为5、10像素；顶级0图层下，其他除0、1图层外的子图层的扩展像素为根据该图层默认样式计算得出的默认值。 |
| compressTolerance（已过时） | int | 抽稀容限。 单位为像素，合并容限范围内的坐标序列。注：mvt格式暂不支持设置。 |
| prjCoordSys | [PrjCoordSys](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 请求的地图的坐标参考系统。注意，该参数仅在 viewBounds 模式下生效。 参数使用时，需按照[PrjCoordSys](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 epsgCode 的方式传入坐标参考系，如： prjCoordSys={"epsgCode":3857}。 |
| coordinateType | [CoordinateType](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/CoordinateType.html) | 返回瓦片要素的表达方式。如果设置 Map，则按照要素在地图上的坐标位置返回瓦片要素；如果设置 Pixel，则按照要素在瓦片上的像素坐标位置返回瓦片要素，像素坐标以瓦片左上角为起始点（0,0）。 |
| returnCutEdges | boolean | 是否返回裁剪边信息。默认为 false，即不返回。 |
#### 响应结构
返回包含矢量图层名和要素坐标的数据信息。
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| recordsets | [VectorRecordSet](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/VectorRecordSet.html)[] | 记录集。每条记录由 fetures（要素集）和 layer（图层名）组成。 |
#### 响应示例
对 tileFeature 资源请求世界地图下包含所有图层的矢量切片，则需执行 GET 请求：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tileFeature.mvt?scale=&x=2&y=7&width=256&height=256&layersID= 。
则返回的是 *.mvt 格式的瓦片文件。
{
"recordsets": [{
"features": [{
"geometry": {
"parts": [5],
"points": [135, -2, 135, 149, -2, 149, -2, -2, 135, -2],
"type": "REGION"
},
"id": 62
},
{
"geometry": {
"parts": [5],
"points": [258, -2, 258, 149, 135, 149, 135, -2, 258, -2],
"type": "REGION"
},
"id": 63
}],
"layerName": "Ocean@World"
},
{
"features": [{
"geometry": {
"parts": [5],
"points": [-2, -2, 258, -2, 258, 149, -2, 149, -2, -2],
"type": "REGION"
},
"id": 175
}],
"layerName": "Countries@World"
},
{
"features": [{
"geometry": {
"parts": [2],
"points": [-2, 149, 258, 149],
"type": "LINE"
},
"id": 1
},
{
"geometry": {
"parts": [2],
"points": [135, 149, 135, -2],
"type": "LINE"
},
"id": 17
}],
"layerName": "Grids@World"
}]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tileFeature 资源是否存在，或者客户端是否有权限访问 tileFeature 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tileFeature 资源是否支持<format>格式的表述。
## 请参见
- [map](../map.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)