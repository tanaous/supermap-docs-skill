# tempLayersSet

## URI
[<map_uri>](../map.htm#URI)/templayersset[.<format>]
## 支持的方法
[GET](#GET_请求)、[POST](#POST 请求)、[HEAD](#HEAD_请求)
## 父资源
[map](../map.htm)
## 子资源
[tempLayers](tempLayers/tempLayers.htm)
## 介绍
临时图层集集合资源，做为 map 资源的一个子资源，通过对 tempLayersSet 执行 POST 操作，可以创建临时图层集，即 tempLayers 资源，一个 tempLayers 资源对应一幅临时的地图。关于创建的临时图层集在服务器端的存活时间，请参考：[临时资源的生命周期](../../../../tempResourcesLife.htm)。
支持的方法：
- [GET](#GET_请求)：获取包含所有临时图层集的列表。
- [POST](#POST 请求)：创建临时图层集。
- [HEAD](#HEAD_请求)：获取临时图层集集合的元数据信息。检查 tempLayersSet 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../assets/images/root/maps/map/tempLayersSet/templayersset.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 RJSON 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet.rjson
### ](../../../root.htm)GET 请求
获取地图中所有的临时图层集。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 tempLayersSet 资源执行 GET 请求，返回“世界地图”包含的临时图层集的信息，返回资源表述的是一个临时图层集描述数组，数组中的元素包含一个临时图层集的信息，单个元素的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 临时图层集的名称。 |
| path | String | 临时图层集资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 示例
对 tempLayersSet 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[{
"name": "1",
"path": "http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1",
"resourceConfigID": "tempLayers",
"resourceType": "StaticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object"
]
}]
### POST 请求
为地图创建临时图层集资源。
#### 请求参数
通过 POST 请求为地图创建一个临时图层集，URI 中可以包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| returnContent | boolean | 表示立即返回新创建资源的表述还是返回新资源的 URI。如果为 true，则直接返回新创建资源，即临时图层集的表述。为 false，则返回的是临时图层集资源的 URI。默认为 false。 |
请求体参数：
请求体中需要包含一个临时图层集的描述，临时图层集中的元素可以是 UGCMapLayer、WMSLayer 、 WFSLayer 或 GeotrellisImageLayer 类型的，参数结构跟 layers 资源的表述结构一致。可以参见 layers 资源 [GET 请求](../layers/layers.htm#GET 请求)响应的结构。
如果请求体中的参数合法，SuperMap iServer 服务器会根据这些描述，在“世界地图”里创建一个临时图层集合，即 tempLayers 资源。当请求体参数为空时，则返回整个“世界地图”资源。
注意：请求体数组中有一个元素，标识了临时图层的地图状态，该元素一般是 UGCMapLayer。
#### 响应结构
对 tempLayersSet 资源执行 POST 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 创建临时图层集是否成功。如果不成功会有错误信息。 |
| newResourceID | String | 查询结果资源的 ID。 |
| newResourceLocation | String | 创建的临时图层集的 URI，标识一个 tempLayers 资源。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
| postResultType | [postResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求结果的类型。说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
#### 示例
对 tempLayersSet 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet.rjson，执行 POST 请求，消息体中包含一个矢量图层和一个标签专题图图层，如下：
[{
"name": "世界地图",
"type": "UGC",
"subLayers": {
"layers": [
{
"type": "UGC",
"caption": "大洋名称",
"ugcLayerType": "THEME",
"visible": true,
"theme": {
"labelExpression": "OceanLabelP_C.ChineseName",
"type": "LABEL",
"uniformStyle":{
"foreColor":{"red": 128,"blue": 0,"green": 0}
}
},
"datasetInfo": {
"name": "OceanLabelP_C",
"dataSourceName": "World",
"type": "POINT"
}
},
{
"type": "UGC",
"caption": "国家边界",
"ugcLayerType": "VECTOR",
"visible": true,
"datasetInfo": {
"name": "Countries",
"dataSourceName": "World",
"type": "LINE"
},
"style": {
"fillBackOpaque": true,
"lineWidth": 0.1,
"fillBackColor": { "red": 255, "blue": 255, "green": 255},
"fillForeColor": {"red": 242, "blue": 233, "green": 239},
"lineColor": {"red": 128, "blue": 128, "green": 128},
"fillOpaqueRate": 100,
"fillGradientMode": "NONE",
"fillSymbolID": 0,
"fillGradientAngle": 0,
"lineSymbolID": 0
}
}
]
}
}]
则返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
{
"succeed": true,
"newResourceID": "p590w5yp_1",
"newResourceLocation": "http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/p590w5yp_1.rjson"
}
当临时图层集中的元素是 GeotrellisImageLayer 类型，请参考：[GeotrellisImageLayer](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/GeoTrellisImageLayer.html)，对 tempLayersSet 资源：http://supermapiserver:8090/iserver/services/map-Geotrellis/rest/maps/GeotrellisLayer/tempLayersSet/tempLayersSet.rjson，执行 POST 请求，如下：
[{
"visible": true,
"maxScale": 1.3845819978568952E-5,
"colorSpaceType": "RGB",
"displayBandIndexes": [
0,
1,
2
],
"caption": "multiple1",
"description": null,
"subLayers": {},
"type": "GEOTRELLISIMAGELAYER",
"displayMode": "COMBINE",
"queryable": false,
"alpha": 255,
"name": "multiple1",
"bounds": {
"top": 894022.5039911582,
"left": 1.2188914223175082E7,
"bottom": 780583.7483448264,
"leftBottom": {
"x": 1.2188914223175082E7,
"y": 780583.7483448264
},
"right": 1.2357058983170727E7,
"rightTop": {
"x": 1.2357058983170727E7,
"y": 894022.5039911582
}
},
"minScale": 1.6901635716026553E-9
}]
其中colorSpaceType为色彩空间枚举,请参考：[colorSpaceType](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ColorSpaceType.html)；displayBandIndexes为显示的波段索引，依照颜色模式顺序，如RGB为[0,1,2]；alpha为图层透明度。
则返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
{
"succeed": true,
"postResultType":"CreateChild",
"newResourceID":"aa2b8f9271ec4e80af93025c6c680885_b15b7b605c3d41e89ab8123b54bd818e",
"newResourceLocation": "http://localhost:8090/iserver/services/map-Geotrellis/rest/maps/GeotrellisLayer/tempLayersSet/aa2b8f9271ec4e80af93025c6c680885_b15b7b605c3d41e89ab8123b54bd818e.rjson"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tempLayersSet 资源是否存在，或者客户端是否有权限访问 tempLayersSet 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tempLayersSet 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)，[tempLayers](tempLayers/tempLayers.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)