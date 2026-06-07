# highlightTargetSet

## URI
[<trackingLayer_uri>](trackingLayer.htm#URI)/{highlightTargetSetID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[PUT](#PUT_请求)、[DELETE](#DELETE 请求)、[HEAD](#HEAD 请求)
## 父资源
[trackingLayer](trackingLayer.htm)
## 介绍
highlightTargetSet 资源表示高亮目标集。用于高亮出图，通过该资源可以获取所有的高亮目标，并可以继续添加高亮目标。高亮出图的步骤如下：
- 
创建一个高亮目标集，返回高亮目标集资源的 URI。
- 
向高亮目标集中添加高亮目标。
- 
对 highlightImage 资源执行 GET 请求，根据高亮目标的 ID 获取高亮图片。
其中，创建一个高亮目标集通过对 highlightTargetSet 的父资源 [trackingLayer](trackingLayer.htm) 执行 [POST 请求](trackingLayer.htm#POST 请求)来实现，向高亮目标集中添加高亮目标通过对 highlightTargetSet 资源执行 [POST 请求](#POST 请求)来实现。该资源的生命周期参见：[临时资源的生命周期](../../../../tempResourcesLife.htm)。
支持的方法：
- [GET](#GET 请求)：获取高亮目标集的所有高亮目标。
- [POST](#POST 请求)：添加高亮目标，高亮目标组织成集合，作为参数放在请求体里传输。highlightTargetSet 资源里可以包含多个高亮目标。
- [PUT](#PUT_请求)：修改 highlightTargetSet，即高亮目标集。
- [DELETE](#DELETE 请求)：删除高亮目标集。
- [HEAD](#HEAD 请求)：获取高亮目标集的元数据信息。检查 highlightTargetSet 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON
## 资源层次
!\[](../../../../../../assets/images/root/maps/map/trackingLayer/highlighttargetset.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 RJSON 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（即{mapName}），1是 highlightTargetSet 资源的 ID（即{highlightTargetSetID}，通过 trackingLayer 资源创建）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer/1.rjson
### ](../../../root.htm)GET 请求
获取高亮目标集的所有高亮目标。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 highlightTargetSet 资源执行 GET 请求，返回高亮目标的集合，其中集合中单个元素是一个 HighlightTarget。
HighlightTarget 结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 高亮目标的名字。 |
| geometries | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html)[] | 高亮对象数组，即高亮目标的内容。 |
| geometryIDs | int[] | 高亮几何对象的 ID 数组。 |
| style | Style | 高亮目标的风格，同一个高亮目标有一个统一的风格。 |
#### 示例
对示例 URI：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer/pcg70k3e_17cacff656b74cca9fce82354cf4b82e.rjson，执行 GET 请求（在[POST 请求](#POST 请求)以后），返回 rjson 格式的资源描述如下：
[{
"geometries": [{
"center": {
"x": 0,
"y": 0
},
"id": 0,
"parts": [4],
"points": [           
{
"x": 120,
"y": 40
},
{
"x": 120,
"y": 30
},
{
"x": 100,
"y": 30
},
{
"x": 100,
"y": 40
}
],
"style": null,
"type": "REGION"
}],
"geometryIDs": null,
"name": null,
"style": {
"fillBackColor": {
"blue": 0,
"green": 255,
"red": 0
},
"fillBackOpaque": false,
"fillForeColor": {
"blue": 0,
"green": 0,
"red": 255
},
"fillGradientAngle": 0,
"fillGradientMode": null,
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
"lineWidth": 0.01,
"markerAngle": 0,
"markerSize": 1,
"markerSymbolID": -1
}
}]
### POST 请求
执行 POST 请求可以往 highlightTargetSet 资源里添加高亮目标，返回高亮目标的表述。
#### 请求参数
为添加高亮目标，POST 请求体中必须包含一些参数，如果参数合法，SuperMap iServer 服务器会根据这些参数往 highlightTargetSet 资源里添加一个高亮目标。因为这里的参数表示高亮目标集，一般情况下比较大，所以放在请求体里传输。其中 returnContent 参数必须放在 URI 中。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| returnContent | boolean | 该参数必须放在 URI 中。 表示是否立即返回新创建资源的表述。如果为 true，则将刚添加的高亮目标集内容返回。为 false，则只返回添加是否成功的信息及 POST 请求的目的类型。默认为 false。 |
可以一次添加多个高亮目标，请求体中包含的是欲添加的高亮目标集合，集合中的每个元素的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 高亮目标的名字。 |
| geometries | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html)[] | 高亮对象数组，即高亮目标的内容。 |
| geometryIDs | int[] | 高亮几何对象的 ID 数组。 |
| style | Style | 高亮目标的风格，同一个高亮目标有一个统一的风格。 |
#### 响应结构
对 highlightTargetSet 资源执行 POST 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 添加高亮目标是否成功，如果不成功会有错误信息。 |
| postResultType | PostResultType | POST 请求的目的类型。 |
| error | HttpError | 出错信息，如果添加成功，则没有本字段。 |
#### 示例
对示例 URI：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer/pcg70k3e_17cacff656b74cca9fce82354cf4b82e.rjson，执行 POST 请求，请求体中包含以下参数：
[{"geometries": [{
"id": 0,
"parts": [4],
"points": [           
{
"x": 120,
"y": 40
},
{
"x": 120,
"y": 30
},
{
"x": 100,
"y": 30
},
{
"x": 100,
"y": 40
}
],
"style": null,
"type": "REGION"
}],
"geometryIDs": null,
"name": null,
"style": {
"fillBackColor": {
"blue": 0,
"green": 255,
"red": 0
},
"fillBackOpaque": false,
"fillForeColor": {
"blue": 0,
"green": 0,
"red": 255
},
"fillGradientAngle": 0,
"fillGradientMode": null,
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
"lineWidth": 0.01,
"markerAngle": 0,
"markerSize": 1,
"markerSymbolID": -1
}
}]
返回 rjson 格式的操作结果表述如下：
{
"succeed":true,
"postResultType":"AddContent"
}
重新对 http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer/pcg70k3e_17cacff656b74cca9fce82354cf4b82e.rjson，执行 GET 请求可发现，高亮目标集中的高亮目标的数目已经增加了1个，即已经加进了在 POST 请求体中所传的高亮目标。
### PUT 请求
执行 PUT 请求可以修改 highlightTargetSet 资源。
#### 请求参数
为修改高亮目标集资源，PUT 请求体中必须包含一些参数，如果参数合法，SuperMap iServer 服务器会根据这些参数修改 highlightTargetSet 资源。
这里，PUT 请求体中的参数是修改后的 highlightTargetSet 的描述。highlightTargetSet 资源的表述结构请参见：GET 请求的[响应结构](#响应结构)。
#### 响应结构
对 highlightTargetSet 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 操作是否成功，如果不成功会有错误信息。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
#### 示例
对示例 URI：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer/pcg70k3e_17cacff656b74cca9fce82354cf4b82e.rjson，执行 PUT 请求，请求体中包含以下参数：
[
{
"geometries": [{
"id": 0,
"parts": [3],
"points": [
{
"x": 101,
"y": 26
},
{
"x": 78,
"y": 23
},
{
"x": 103,
"y": 16
}
],
"style": null,
"type": "REGION"
}],
"geometryIDs": null,
"name": null,
"style": {
"fillBackColor": {
"blue": 0,
"green": 255,
"red": 0
},
"fillBackOpaque": false,
"fillForeColor": {
"blue": 0,
"green": 0,
"red": 255
},
"fillGradientAngle": 0,
"fillGradientMode": null,
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
"lineWidth": 0.01,
"markerAngle": 0,
"markerSize": 1,
"markerSymbolID": -1
}
}
]
返回 rjson 格式的操作结果表述如下：
{
"succeed": true
}
重新对 http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer/pcg70k3e_17cacff656b74cca9fce82354cf4b82e.rjson，执行 [GET 请求](#GET 请求)可发现，高亮目标集已经发生了改变（如加粗部分的坐标）。
### DELETE 请求
删除高亮目标集。
#### 请求参数
无。
#### 响应结构
对 highlightTargetSet 资源执行 DELETE 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 删除高亮目标集是否成功，如果不成功会有错误信息。 |
| error | HttpError | 出错信息，如果删除成功，则没有本字段。 |
#### 示例
对示例 URI：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/trackingLayer/pcg70k3e_17cacff656b74cca9fce82354cf4b82e.rjson，执行 DELETE 请求，返回 rjson 格式的操作结果表述如下：
{
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 highlightTargetSet 资源是否存在，或者客户端是否有权限访问 highlightTargetSet 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 highlightTargetSet 资源是否支持<format>格式的表述。
## 请参见
- [trackingLayer](trackingLayer.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)