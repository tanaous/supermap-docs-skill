# style

## URI
[<tempLayer_uri>](tempLayer.htm#URI)/style[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[HEAD](#HEAD 请求)
## 父资源
[tempLayer](tempLayer.htm)
## 介绍
作为 tempLayer 的一个子资源，style 资源用于临时图层的样式，通过对 style 资源执行 PUT 请求，还可以修改临时图层的样式。只有 SuperMap 矢量图层（UGCVectorLayer）允许设置风格，其余类型的图层不允许设置风格。
支持的方法：
- [GET](#GET 请求)：获取临时图层的样式。
- [PUT](#PUT 请求)：修改临时图层的样式。
- [HEAD](#HEAD 请求)：检查 style 资源是否存在，或权限是否可以访问 style 资源。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../../../assets/images/root/maps/map/tempLayersSet/tempLayers/tempLayer/tempLayer_style.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，"世界地图"是地图名（{mapName}），1是"世界地图"中的一个临时图层集（{tempLayersID}），URI 表示的是"世界地图"中的 ID 是1的临时图层集合，即 tempLayers 资源，Capitals@world 是临时图层集中 World 图层的一个子图层，URI 表示临时图层 Capitals@world 的样式。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1/Capitals@World@@世界地图/style.rjson
### ](../../../../../root.htm)GET 请求
获取临时图层的样式。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 style 资源执行 GET 请求，当临时图层为 SuperMap 矢量图层（UGCVectorLayer）时，支持风格设置，返回资源表述的结构如下（资源表述在响应消息的实体主体里）：   
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| markerSymbolID | int | 点状符号的编码，即符号库中点风格的 ID。 |
| markerSize | double | 点状符号的大小。 |
| markerAngle | double | 点状符号的旋转角度。 |
| lineWidth | double | 边线宽度。 |
| lineSymbolID | int | 线状符号的编码，即线型库中线型的 ID。 |
| lineColor | Color | 符号为线状符号时，表示边线的颜色；符号为点状符号时，表示点的颜色。 |
| fillSymbolID | int | 填充符号的编码，即在填充库中填充风格的 ID。 |
| fillOpaqueRate | int | 填充不透明度，合法值为 0——100 的数值。 |
| fillGradientOffsetRatioX | double | 渐变填充中心点相对于填充区域范围中心点的水平偏移百分比。 |
| fillGradientOffsetRatioY | double | 填充中心点相对于填充区域范围中心点的垂直偏移百分比。 |
| fillGradientMode | FillGradientMode | 渐变填充风格的渐变类型。 |
| fillGradientAngle | double | 渐变填充的旋转角度。 |
| fillForeColor | Color | 填充符号的前景色。 |
| fillBackOpaque | boolean | 当前填充背景是否不透明。 |
| fillBackColor | Color | 填充符号的背景色。 |
当临时图层不为 SuperMap 矢量图层（UGCVectorLayer）时，不支持风格设置的时候，返回的资源表述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | false，表示图层不支持风格设置。 |
| error | HttpError | 出错信息。 |
#### 响应示例
对 queryable 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1/Capitals@World@@世界地图/style.rjson，执行 GET 请求，获取临时体层 Capitals@world 的样式如下：
{
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
}
### PUT 请求
修改临时图层的样式，仅支持 SuperMap 矢量图层（UGCVectorLayer）。
#### 请求参数
对 style 资源执行 PUT 请求，请求体中必须包含一些参数，如果参数合法，iServer 服务器会根据这些参数修改临时图层的样式。请求体结构如下所示：   
| 字段 | 类型 | 含义 |
| --- | --- | --- |
| markerSymbolID | int | 点状符号的编码，即符号库中点风格的 ID。 |
| markerSize | double | 点状符号的大小。 |
| markerAngle | double | 点状符号的旋转角度。 |
| lineWidth | double | 边线宽度。 |
| lineSymbolID | int | 线状符号的编码，即线型库中线型的 ID。 |
| lineColor | Color | 边线的颜色。 |
| fillSymbolID | int | 填充符号的编码，即在填充库中填充风格的 ID。 |
| fillOpaqueRate | int | 填充不透明度，合法值为 0——100 的数值。 |
| fillGradientOffsetRatioX | double | 渐变填充中心点相对于填充区域范围中心点的水平偏移百分比。 |
| fillGradientOffsetRatioY | double | 填充中心点相对于填充区域范围中心点的垂直偏移百分比。 |
| fillGradientMode | FillGradientMode | 渐变填充风格的渐变类型。 |
| fillGradientAngle | double | 渐变填充的旋转角度。 |
| fillForeColor | Color | 填充符号的前景色。 |
| fillBackOpaque | boolean | 当前填充背景是否不透明。 |
| fillBackColor | Color | 填充符号的背景色。 |
#### 响应结构
对 style 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 修改图层样式是否成功。如果不成功会有错误信息。 |
| error | HttpError | 出错信息，如果修改成功，则没有本字段。 |
#### 响应示例
对 style 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1/Capitals@World@@世界地图/style.rjson，执行如下参数的 POST 请求，修改临时图层 Capitals@world（SuperMap 矢量图层）的样式（修改线宽为 0.3）：
{
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
"lineWidth": 0.3,
"markerAngle": 0,
"markerSize": 2,
"markerSymbolID": 12
}
修改成功时返回 rjson 格式的资源描述如下：：
{
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 style 资源是否存在，或者客户端是否有权限访问 style 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 style 资源是否支持<format>格式的表述。
## 请参见
- [tempLayer](tempLayer.htm)
- [客户端构建 REST 请求](../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../../resource_hierarchy.htm)