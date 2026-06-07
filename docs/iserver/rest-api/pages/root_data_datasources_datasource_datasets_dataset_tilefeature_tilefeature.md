# tileFeature

## URI
[<dataset_uri>](../dataset.htm#URI)/tilefeature[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 介绍
通过对 tileFeature 资源执行请求，可以获取地图中矢量图层{layerName}中的瓦片要素。客户端获取的瓦片要素，可以通过自定义的样式进行渲染，并可查询交互。
您可以在 URI 中设置输出矢量切片的参数，如设置图层、切片大小、格网行列号等。其中，格网的划分规则如下：将地图全幅显示时的图片从左上角开始，往下和往右进行切割，切割的大小默认为256*256 像素，左上角的格网行号为 0，列号为 0，往下和往右依次递增。其中，格网的大小和地图的比例尺等参数都可以在请求时进行指定。
支持的方法：
- [GET](#GET 请求)：获取地图中指定矢量图层的瓦片要素，URI 中的参数确定了格网的位置。
- [HEAD](#HEAD 请求)：检查 tileFeature 资源是否存在，或权限是否可以访问 tileFeature 资源。
支持的表述格式：MVT。
## 资源层次
!\[](../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/tilefeature/tileFeature.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“China_Nation_B_pt”是图层名（{layerName}）。
http://supermapiserver:8090/iserver/services/data-China100/rest/data/datasources/China/datasets/China_Nation_B_pt/tilefeature.mvt
### ](../../../../../../root.htm)GET 请求
获取地图的矢量瓦片，URI 中的参数确定了格网的位置等信息。
#### 请求参数
对 tileFeature 资源执行 GET 请求，获取地图中指定矢量图层的瓦片要素，需要在 URI 中包含相关参数，如果没有指定参数，则会按照地图的当前状态为准，进行切割和出图。
目前有两种获取矢量瓦片的方式：一是按照瓦片的行列号获取（参数为 X、Y），二是按照视图范围获取（参数为 ViewBounds ），其他参数相同，具体如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| x | long | 格网在地图中列号，从左向右递增。默认情况下，切片从地图最左上角开始，其格网列号为0。 |
| y | long | 格网在地图中行号，从上向下递增。默认情况下，切片从地图最左上角开始，其格网行号为0。 |
| z | long | 地图显示层级，如 10。
注：1. 当该参数和 scale 同时存在时，scale 参数生效。2. 该参数不可与 origin 参数一同使用。 |
| ViewBounds | String | 根据 ViewBounds 的范围获取对应的瓦片，如: viewBounds=1.2914800299064118E7,4931105.5687329285,1.299307181602814E7,5009377.085696951 |
| scale | double | 地图的比例尺。如0.0001表示比例尺为1：10000。详见[比例尺的定义](../../../../../../../../../Appendix/scale.htm)。 |
| width | int | 格网的宽度，单位是像素，默认为 256 像素。 |
| height | int | 格网的高度，单位是像素，默认为 256 像素。 |
| origin | [Point2D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 切片的起始参考点，默认为数据范围的左上角。如果指定为其他值，则以所赋值作为切片的起始参考点，计算切片行列号。 |
| compressTolerance（已过时） | int | 抽稀容限。 单位为像素，合并容限范围内的坐标序列。 注：mvt格式暂不支持设置。 |
| cacheEnabled | boolean | 是否使用缓存，默认为 false。 |
| Attributes | boolean | 是否返回属性，默认为 false。 |
| ViewBounds | String | 根据 ViewBounds 的范围获取对应的瓦片，如:  viewBounds=1.2914800299064118E7,4931105.5687329285,1.299307181602814E7,5009377.085696951 |
| returnFields | String | 返回 returnField 中指定的字段，可设置多个字段，各字段间用英文 ',' 隔开。如: returnFields=Name,PAC |
#### 
响应示例
对 tileFeature 资源请求 " China100" 下“China_Nation_B_pt”的矢量切片，则需执行 GET 请求：http://localhost:8090/iserver/services/data-China100/rest/data/datasources/China/datasets/China_Nation_B_pt/tilefeature.mvt?returnAttributes=true&x=12&y=6&width=512&height=512&scale=5.408523429128497e-8&origin=%7B%27x%27:-20037508.342789244,%27y%27:20037508.342789244%7D，则将获取一个后缀为 .mvt 的瓦片数据。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tileFeature 资源是否存在，或者客户端是否有权限访问 tileFeature 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tileFeature 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)
- [客户端构建 REST 请求](../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../../../../resource_hierarchy.htm)