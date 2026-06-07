# tempLayers

## URI
[<tempLayersSet_uri>](../tempLayersSet.htm#URI)/{tempLayersID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[DELETE](#DELETE 请求)、[HEAD](#HEAD 请求)
## 父资源
[tempLayersSet](../tempLayersSet.htm)
## 子资源
[tempLayer](tempLayer/tempLayer.htm)
## 介绍
tempLayers 资源表示临时图层集合，该临时图层集合可以出成一幅临时的地图图片，{tempLayersID}是 tempLayers 资源的标识。通过 tempLayers 资源可以获取该临时图层集合中的图层列表，或修改该临时图层集中的图层。该资源的生命周期参见：[临时资源的生命周期](../../../../../tempResourcesLife.htm)。
支持的方法：
- [GET](#GET 请求)：获取临时图层集（{tempLayersID}）包含的图层列表。
- [PUT](#PUT 请求)：修改临时图层集。
- [DELETE](#DELETE 请求)：删除临时图层集。
- [HEAD](#HEAD 请求)：获取临时图层集的元数据信息。检查 tempLayers 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../../assets/images/root/maps/map/tempLayersSet/templayers.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}），92ecaz23_05b8193fe4fa4700b82c6d41d0d98539 是“世界地图”中的一个临时图层集合（{tempLayersID}），URI 表示的是“世界地图”中的 ID 是 92ecaz23_05b8193fe4fa4700b82c6d41d0d98539 的临时图层集合，即 tempLayers 资源。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/92ecaz23_05b8193fe4fa4700b82c6d41d0d98539.rjson
### ](../../../../root.htm)GET 请求
获取临时图层集合（{tempLayersID}）包含的图层列表。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 tempLayers 资源执行 GET 请求，返回临时图层集的信息，集合中元素所描述的图层，可能是 UGCMapLayer、WMSLayer 或 WFSLayer。其中 UGCMapLayer 中包含了地图中 SuperMap 数据所表示的所有图层，以 UGCMapLayer 的子图层（subLayers 字段内容）的形式存在。
以 UGCMapLayer 为例，响应集合中 UGCMapLayer 子元素的结构如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| name | String | 图层的名称。图层的名称在图层所在的地图中唯一标识此图层。该标识不区分大小写。 |
| bounds | double | 图层范围。 |
| caption | String | 图层的标题。默认情况下与 name 一致。在图例、图层控制列表中显示的图层的名称就是 caption 的值。注意与 name 相区别。 |
| description | String | 图层的描述信息。 |
| queryable | boolean | 图层中的对象是否可以被查询。true 表示可以被查询，false 表示不能被查询。 |
| visible | boolean | 图层是否可见，当图层不可见时，其他所有的属性的设置将无效。 |
| type | LayerType | 图层的类型。 目前 SuperMap iServer 支持的图层类型包括四种：SuperMap UGC 类型图层，WFS 图层，WMS 图层以及自定义图层。 |
| subLayers | LayerCollection | 子图层集。 UGCMapLayer 中即表示 SuperMap 数据表示的图层集合。 |
| completeLineSymbolDisplayed | boolean | 是否显示完整线型。true 表示显示，false 表示不显示。 |
| maxScale | double | 图层的最大可见比例尺。最大可见比例尺不可为负，当地图的当前显示比例尺大于图层最大可见比例尺时，此图层将不显示。 默认为0。 |
| minScale | double | 图层的最小可见比例尺。最小可见比例尺不可为负。当地图的当前显示比例尺小于图层最小可见比例尺时，此图层将不显示。 默认为0。 |
| minVisibleGeometrySize | double | 几何对象的最小可见大小，单位：像素。 |
| opaqueRate | int | 图层的不透明度，0-100。 |
| symbolScalable | boolean | 是否允许图层的符号大小随图缩放。 true 表示当图层被放大或缩小时，符号也随之放大或缩小；false 表示图层的符号大小不可随图缩放。 |
| symbolScale | double | 图层的符号缩放基准比例尺。 符号缩放基准比例尺在允许符号随图缩放时有效，指定了在随图缩放时，所设置的符号大小所对应的地图显示比例尺。 |
templayers 资源的结构跟，对[templayersSet 资源 POST](../tempLayersSet.htm#POST 请求)时传输的消息体一致。其中，html 表述页面看到的 subLayers 的名称格式为“数据集名@数据源名.编号@@地图名”，xml 表述下，subLayers 中元素的 name 名称为“数据集名@数据源名#编号”;其中数据集名、数据源名对应 datasetInfo.name、datasetInfo.dataSourceName，编号是指该数据集已有图层对应时往后排的序号，如1、2、3……
#### 示例
对 ID 为1的临时图层集资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/92ecaz23_05b8193fe4fa4700b82c6d41d0d98539.rjson，执行 GET 请求，返回 rjson 格式的资源描述如下：
[{
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
"caption": null,
"completeLineSymbolDisplayed": false,
"description": "",
"maxScale": 0,
"minScale": 0,
"minVisibleGeometrySize": 0,
"name": "世界地图",
"opaqueRate": 100,
"queryable": false,
"subLayers": {"layers": [{
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
"y": 83.62359619140626
},
"top": 83.62359619140626
},
"caption": "Countries@World",
"completeLineSymbolDisplayed": false,
"datasetInfo": {
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
"y": 83.62359619140626
},
"top": 83.62359619140626
},
"dataSourceName": "World",
"description": null,
"encodeType": null,
"isReadOnly": false,
"name": "Countries",
"prjCoordSys": null,
"tableName": null,
"type": "REGION"
},
"description": "",
"displayFilter": "",
"joinItems": null,
"maxScale": 0,
"minScale": 0,
"minVisibleGeometrySize": 0.4,
"name": "Countries@World",
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
"blue": 233,
"green": 239,
"red": 242
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 0,
"lineColor": {
"blue": 128,
"green": 128,
"red": 128
},
"lineSymbolID": 0,
"lineWidth": 0.1,
"markerAngle": 0,
"markerSize": 2.4,
"markerSymbolID": 0
},
"subLayers": {},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"ugcLayerType": "VECTOR",
"visible": true
}]},
"symbolScalable": false,
"symbolScale": 0,
"type": "UGC",
"visible": true
}]
### PUT 请求
修改临时图层集，即 tempLayers 资源。需要在请求体中包含 name 属性以及变化字段修改后的描述信息。
#### 请求参数
为执行 PUT 请求来修改图层集合，PUT 请求体中需要包含 name 属性以及变化字段作为参数，如果参数合法，SuperMap iServer 服务器会根据这些参数，修改 URI 对应的临时图层集合，即 tempLayers 资源，参数信息在请求体中传送。
修改 tempLayers 资源（临时图层集合），只需要将 name 属性以及变化字段修改后的信息放在请求体中传送至服务器，参数结构跟 layers 资源的表述结构一致。可以参见 layers 资源 [GET 请求](../../layers/layers.htm#GET 请求)响应的结构。
需要说明的是，请求体中表示图层集合的参数要跟 tempLayers 资源 [GET 请求](#GET 请求) 所获取的参数集合的元素类型一致，且只有图层集合子元素为 UGCMapLayer 类型时，该子元素才允许被修改。即 WMSLayer 或 WFSLayer 对应的图层元素不允许被修改（即使在请求体中进行了修改，iServer 也会忽略）。
#### 响应结构
对 tempLayers 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 创建临时图层是否成功。如果不成功会有错误信息。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
#### 示例
对示例 URI：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/92ecaz23_05b8193fe4fa4700b82c6d41d0d98539.rjson 执行 PUT 请求，将临时图层集中 Countries 图层的 queryable 属性改为 true，请求体中的参数如下：
[
{
"name": "世界地图",
"subLayers":{
"layers": [{
"name": "Countries@World#1",      
"queryable": true
}
]
}
}
]
返回 rjson 格式的操作结果描述如下：
{
"succeed": true
}
### DELETE 请求
删除临时图层集资源，如果该临时图层集资源不存在，则会返回状态码404。
#### 响应结构
无参数。对 tempLayers 资源执行 DELETE 请求，返回删除是否成功的表述如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 操作是否成功。 |
| error | HttpError | 出错信息，如果操作成功，则没有本字段。 |
#### 示例
对 tempLayers 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/92ecaz23_05b8193fe4fa4700b82c6d41d0d98539.rjson 执行 DELETE 请求，删除 ID 为 92ecaz23_05b8193fe4fa4700b82c6d41d0d98539 的临时图层集资源，返回 rjson 格式的资源描述如下：
{
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tempLayers 资源是否存在，或者客户端是否有权限访问 tempLayers 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tempLayers 资源是否支持<format>格式的表述。
## 请参见
- [tempLayersSet](../tempLayersSet.htm)
- [客户端构建 REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../resource_hierarchy.htm)