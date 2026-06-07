# tempLayer

## URI
[<tempLayers_uri>](../tempLayers.htm#URI)/{tempLayerName}[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[PUT](#PUT 请求)、[DELETE](#DELETE 请求)、[HEAD](#HEAD 请求)
## 父资源
[tempLayers](../tempLayers.htm)
## 子资源
[legend](legend.htm)，[visible](visible.htm)、[queryable](queryable.htm)、[style](style.htm)
## 介绍
tempLayer 资源表示一个临时图层，在 URI 中 {tempLayerName} 标识了该临时图层的名称。tempLayer  资源可能是不同的图层，例如高一级的图层：UGCMapLayer、WFSLayer、WMSLayer 等，低一级的有 UGCMapLayer 的子图层，如 UGCVectorLayer、UGCGridLayer、UGCImageLayer、 UGCThemeLayer 、UGCHeatmapLayer等。高一级的图层类型由 type 字段标识，低一级的图层类型由 ugcLayerType 字段标识。该资源的生命周期参见：[临时资源的生命周期](../../../../../../tempResourcesLife.htm)。
{tempLayerName}可用来标识高一级图层名和低一级图层名。
通过 tempLayer 资源可以获取临时图层的表述，对临时图层的创建、删除、更新有如下限制：
- 当 tempLayer 资源标识的是 UGCMapLayer 图层时，通过 POST 请求可以创建子图层。
- 当 tempLayer 资源标识的是 UGCMapLayer 图层或其子图层时，通过对已有资源执行 PUT 请求，进行更新。当对不存在的资源 URI 执行 PUT 请求，表示创建时，只能针对低一级的 SuperMap 类型的图层。
- 当 tempLayer 资源标识的是低一级的图层时，通过 DELETE 请求可以删除图层（高一级的图层不允许删除）。
支持的方法：
- [GET](#GET 请求)：获取临时图层的表述。
- [POST](#POST 请求)：创建 SuperMap 子图层。
- [PUT](#PUT 请求)：修改临时图层。
- [DELETE](#DELETE 请求)：删除临时图层。
- [HEAD](#HEAD 请求)：获取临时图层的元数据信息。检查 tempLayers 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../../../assets/images/root/maps/map/tempLayersSet/tempLayers/tempLayer/tempLayer.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}），tempLayers92ecaz23_49762c443421448b992a387c8221d070 是“世界地图” 中的一个临时图层集（{tempLayersID}），URI 表示的是“世界地图”中的 ID 是 tempLayers92ecaz23_49762c443421448b992a387c8221d070 的临时图层集合，即 tempLayers 资源，Capitasl@world@@World 是临时图层集中 World 图层的一个子图层，URI 表示 Capitals@world 图层，即 tempLayer 资源。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/tempLayers92ecaz23_49762c443421448b992a387c8221d070/Capitals@World@@世界地图.rjson
### ](../../../../../root.htm)GET 请求
对示例 URI 执行 GET 请求可以临时图层集中一个图层的表述。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 tempLayer 资源执行 GET 请求，返回资源的表述。表述为描述图层的各种信息，不同类型图层的描述有所差别，图层可能是高一级的图层：UGCMapLayer、WFSLayer、WMSLayer 等，或低一级的图层：WFSLayer、WMSLayer、 UGCMapLayer 的子图层（UGCVectorLayer、UGCGridLayer、UGCImageLayer、 UGCThemeLayer、UGCHeatmapLayer）等。layer 资源表述的结构即为这些图层描述的结构。
示例图层 Capitals@world 为 UGCVectorLayer 图层，所以返回的表述为 UGCVectorLayer 的结构，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| name | String | 图层的名称。图层的名称在图层所在的地图中唯一标识此图层。该标识不区分大小写。 |
| bounds | double | 图层范围。 |
| caption | String | 图层的标题。默认情况下与 name 一致。在图例、图层控制列表中显示的图层的名称就是 caption 的值。注意与 name 相区别。 |
| description | String | 图层的描述信息。 |
| queryable | boolean | 图层中的对象是否可以被查询。true 表示可以被查询，false 表示不能被查询。 |
| visible | boolean | 图层是否可见，当图层不可见时，其他所有的属性的设置将无效。 |
| type | LayerType | 图层的类型。 目前 SuperMap iServer 支持的图层类型有：UGC（SuperMap 图层），WFS（WFS 图层），WMS（WMS 图层）、CUSTOM（自定义图层）。 |
| subLayers | Layer[] | 子图层集。 |
| completeLineSymbolDisplayed | boolean | 是否显示完整线型。true 表示显示，false 表示不显示。 |
| maxScale | double | 图层的最大可见比例尺。最大可见比例尺不可为负，当地图的当前显示比例尺大于图层最大可见比例尺时，此图层将不显示。 默认为0。 |
| minScale | double | 图层的最小可见比例尺。最小可见比例尺不可为负。当地图的当前显示比例尺小于图层最小可见比例尺时，此图层将不显示。 默认为0。 |
| minVisibleGeometrySize | double | 几何对象的最小可见大小，单位：像素。 |
| opaqueRate | int | 图层的不透明度，0-100。 |
| symbolScalable | boolean | 是否允许图层的符号大小随图缩放。 true 表示当图层被放大或缩小时，符号也随之放大或缩小；false 表示图层的符号大小不可随图缩放。 |
| symbolScale | double | 图层的符号缩放基准比例尺。 符号缩放基准比例尺在允许符号随图缩放时有效，指定了在随图缩放时，所设置的符号大小所对应的地图显示比例尺。 |
| datasetInfo | DatasetInfo | 图层对应的数据集对象。图层是对数据集的引用，因而，一个图层与一个数据集相对应。 |
| displayFilter | String | 图层的显示过滤条件。 过滤条件是在数据库的属性数据上进行过滤，例如图层的属性数据库存在 smid 字段，过滤条件为 smid > 20，则几何属性 smid 的值大于20的几何对象将显示在地图窗口中，其余对象不显示。 |
| joinItems | JoinItem[] | 连接信息。 |
| representationField | String | 存储制图表达信息的字段。 制图表达是矢量数据集中几何对象所关联的信息，它可以使相应的几何对象在地图窗口中显示时，采用其他的表现方式，而原来的几何对象不再显示，注意原几何对象的数据并没有改变，只是显示方式有所变化。 |
| ugcLayerType | UGCLayerType | SuperMap 图层的类型。 SuperMap 图层的类型分：GRID（栅格图层）、IMAGE（影像图层）、THEME（专题图层）、VECTOR（矢量图层）、HEATMAP（热力图层）、WFS（WFS 图层）、WMS（WMS 图层）。 |
| style | Style | 矢量图层的风格。 |
#### 示例
对 ID 为 tempLayers92ecaz23_49762c443421448b992a387c8221d070 的临时图层集中的临时图层 Capitals@world ：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/tempLayers92ecaz23_49762c443421448b992a387c8221d070/Capitals@World@@世界地图.rjson，执行 GET 请求，返回 rjson 格式的资源描述如下：
{
"bounds": {
"bottom": -41.21039581298828,
"left": -99.12757110595705,
"leftBottom": {
"x": -99.12757110595705,
"y": -41.21039581298828
},
"right": 175.14494323730466,
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
},
"top": 64.31326293945314
},
"caption": "Capitals@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -41.21039581298828,
"left": -99.12757110595705,
"leftBottom": {
"x": -99.12757110595705,
"y": -41.21039581298828
},
"right": 175.14494323730466,
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
},
"top": 64.31326293945314
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "Capitals",
"prjCoordSys": null,
"tableName": null,
"type": "POINT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 7.56550553E-8,
"minVisibleGeometrySize": 0.4,
"name": "Capitals@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 196,
"green": 196,
"red": 196
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
"markerSize": 2,
"markerSymbolID": 12
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
}
### POST 请求
当 tempLayer 资源标识的是 UGCMapLayer 图层时，通过 POST 请求可以创建 SuperMap 子图层。
#### 请求参数
为执行 POST 请求创建 SuperMap 子图层，需要在请求体中包含 SuperMap 子图层的信息，即 UGCVectorLayer、UGCGridLayer、UGCImageLayer 、UGCHeatmapLayer或 UGCThemeLayer 的描述，请参见 JavaDoc 文档中图层的说明。以创建一个 UGCVectorLayer 图层为例，请求参数如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| name | String | 图层的名称。图层的名称在图层所在的地图中唯一标识此图层。该标识不区分大小写。 |
| bounds | double | 图层范围。 |
| caption | String | 图层的标题。默认情况下与 name 一致。在图例、图层控制列表中显示的图层的名称就是 caption 的值。注意与 name 相区别。 |
| description | String | 图层的描述信息。 |
| queryable | boolean | 图层中的对象是否可以被查询。true 表示可以被查询，false 表示不能被查询。 |
| visible | boolean | 图层是否可见，当图层不可见时，其他所有的属性的设置将无效。 |
| type | String | 图层的类型。有 UGCVectorLayer，UGCGirdLayer，UGCImageLayer，UGCThemerLayer，WMSLayer，WFSLayer  等 |
| subLayers | Layer[] | 子图层集。 |
| completeLineSymbolDisplayed | boolean | 是否显示完整线型。true 表示显示，false 表示不显示。 |
| maxScale | double | 图层的最大可见比例尺。最大可见比例尺不可为负，当地图的当前显示比例尺大于图层最大可见比例尺时，此图层将不显示。 默认为0。 |
| minScale | double | 图层的最小可见比例尺。最小可见比例尺不可为负。当地图的当前显示比例尺小于图层最小可见比例尺时，此图层将不显示。 默认为0。 |
| minVisibleGeometrySize | double | 几何对象的最小可见大小，单位：像素。 |
| opaqueRate | int | 图层的不透明度，0-100。 |
| symbolScalable | boolean | 是否允许图层的符号大小随图缩放。 true 表示当图层被放大或缩小时，符号也随之放大或缩小；false 表示图层的符号大小不可随图缩放。 |
| symbolScale | double | 图层的符号缩放基准比例尺。 符号缩放基准比例尺在允许符号随图缩放时有效，指定了在随图缩放时，所设置的符号大小所对应的地图显示比例尺。 |
| datasetInfo | DatasetInfo | 图层对应的数据集对象。图层是对数据集的引用，因而，一个图层与一个数据集相对应。 |
| displayFilter | String | 图层的显示过滤条件。 过滤条件是在数据库的属性数据上进行过滤，例如图层的属性数据库存在 smid 字段，过滤条件为 smid > 20，则几何属性 smid 的值大于20的几何对象将显示在地图窗口中，其余对象不显示。 |
| joinItems | JoinItem[] | 连接信息。 |
| representationField | String | 存储制图表达信息的字段。 制图表达是矢量数据集中几何对象所关联的信息，它可以使相应的几何对象在地图窗口中显示时，采用其他的表现方式，而原来的几何对象不再显示，注意原几何对象的数据并没有改变，只是显示方式有所变化。 |
| ugcLayerType | UGCLayerType | UGC 图层类型。 |
| style | Style | 矢量图层的风格。 |
#### 响应结构
对 UGCMapLayer 临时图层资源执行 POST 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 创建新图层是否成功。如果不成功会有错误信息。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
#### 示例
对 ID 为 tempLayers92ecaz23_49762c443421448b992a387c8221d070 的临时图层集中的临时图层 World ：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/tempLayers92ecaz23_49762c443421448b992a387c8221d070/Capitals@World@@世界地图.rjson，执行 POST 请求，创建一个 UGCVectorLayer 类型的子图层，需要再请求体中传入 UGCVectorLayer 类型图层的描述如下：
{
"bounds": {
"leftBottom": {
"x": -99.12757110595704,
"y": -41.21039581298828
},
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
}
},
"caption": "NewLayer@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"leftBottom": {
"x": -99.12757110595704,
"y": -41.21039581298828
},
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
}
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "NewLayer",
"prjCoordSys": null,
"tableName": null,
"type": "POINT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 7.56550553e-8,
"minVisibleGeometrySize": 0.4,
"name": "NewLayer@World",
"opaqueRate": 0,
"queryable": false,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 196,
"green": 196,
"red": 196
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
"markerSize": 2,
"markerSymbolID": 12
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
}
创建成功时，返回 rjson 格式的操作结果表述如下：
{
"succeed": true
}
此时再对 http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/tempLayers92ecaz23_49762c443421448b992a387c8221d070/Capitals@World@@世界地图.rjson 执行 [GET 请求](#GET 请求)，“世界地图”的子图层（subLayers）中多了一个"NewLayer@World@@Capitals@World@@世界地图"图层。也可以对 http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/tempLayers92ecaz23_49762c443421448b992a387c8221d070/NewLayer@World@@Capitals@World@@世界地图.rjson 直接执行 [GET 请求](#GET 请求)，获取新创建图层的表述。
### PUT 请求
修改临时图层，即 tempLayer 资源。需要在请求体中包含 name 属性以及变化字段修改后的描述信息。
#### 请求参数
为执行 PUT 请求来创建或修改 tempLayer 图层，PUT 请求体中必须包含一些参数，参数结构跟 [GET 请求](#GET 请求)的响应结构一致，如果参数合法，SuperMap iServer 服务器会根据这些参数，创建或修改临时图层，即 tempLayer 资源。
当 tempLayer 资源标识的是 UGCMapLayer 图层或其子图层时，通过对已有资源执行 PUT 请求，进行更新。当对不存在的资源 URI 执行 PUT 请求，表示创建时，只能针对低一级的 SuperMap 类型的图层。
修改图层时，需要传入对应类型图层（已修改后的），但有的参数是不能为空的，例如修改 UGCVectorLayer 时，name、type、ugcLayerType 以及 datasetInfo 的 name 和 dataSourceName 都是必须有的。详细参见 JavaDoc 文档中相关图层的描述。
#### 响应结构
对 tempLayer 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 创建临时图层是否成功。如果不成功会有错误信息。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
#### 示例
对示例 URI：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/tempLayers92ecaz23_49762c443421448b992a387c8221d070/Capitals@World@@世界地图.rjson，执行 PUT 请求，修改临时图层 Capitals@World，将其 queryable 属性改为 true，请求体中的参数如下：
{
"bounds": {
"bottom": -41.21039581298828,
"left": -99.12757110595704,
"leftBottom": {
"x": -99.12757110595704,
"y": -41.21039581298828
},
"right": 175.14494323730466,
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
},
"top": 64.31326293945314
},
"caption": "Capitals@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
"bounds": {
"bottom": -41.21039581298828,
"left": -99.12757110595704,
"leftBottom": {
"x": -99.12757110595704,
"y": -41.21039581298828
},
"right": 175.14494323730466,
"rightTop": {
"x": 175.14494323730466,
"y": 64.31326293945314
},
"top": 64.31326293945314
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "Capitals",
"prjCoordSys": null,
"tableName": null,
"type": "POINT"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 7.56550553e-8,
"minVisibleGeometrySize": 0.4,
"name": "Capitals@World",
"opaqueRate": 100,
"queryable": true,
"representationField": "",
"style": {
"fillBackColor": {
"blue": 255,
"green": 255,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"blue": 196,
"green": 196,
"red": 196
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
"markerSize": 2,
"markerSymbolID": 12
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
}
返回 rjson 格式的操作结果描述如下：
{
"succeed": true
}
### DELETE 请求
删除临时图层资源，如果该临时图层资源不存在，则会返回状态码404。
#### 响应结构
无参数。对 tempLayer 资源执行 DELETE 请求，返回删除是否成功的表述如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 操作是否成功。 |
| error | HttpError | 出错信息，如果操作成功，则没有本字段。 |
#### 示例
对 tempLayers 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1/Capitals@World@@世界地图.rjson ，执行 DELETE 请求，删除 Capitals@World 临时图层，返回 rjson 格式的资源描述如下：
{
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tempLayer 资源是否存在，或者客户端是否有权限访问 tempLayer 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tempLayer 资源是否支持<format>格式的表述。
## 请参见
- [legend](legend.htm)、[tempLayers](../tempLayers.htm)、[visible](visible.htm)、[queryable](queryable.htm)、[style](style.htm)
- [客户端构建 REST 请求](../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)