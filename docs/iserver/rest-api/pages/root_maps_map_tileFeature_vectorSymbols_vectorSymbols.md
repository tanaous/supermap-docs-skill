# vectorSymbols

## URI
<[tileFeature_uri](../tileFeature.htm#URI)>/**[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[tileFeature](../tileFeature.htm)
## 子资源
[vectorSymbol](vectorSymbol.htm)
## 介绍
vectorSymbols 资源表示地图的符号。可以是点状符号，线状符号，填充符号，通过对带参数的 URI 执行 GET 请求来获取对应的符号图片。
支持的方法：
- [GET](#GET 请求)：获取一个符号的图片。
- [HEAD](#HEAD 请求)：检查 vectorSymbols 资源是否存在，或权限是否可以访问 vectorSymbol 资源。
支持的表述格式：PNG、BMP、GIF、JPG、WEBP、RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../../assets/images/root/maps/map/tileFeature/vectorSymbols.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 png 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/map-china/rest/maps/China/tileFeature/symbols.png
### ](../../../../root.htm)GET 请求
获取一个符号的图片。
#### 请求参数
对 vectorSymbols 资源执行 GET 请求，获取一个符号的图片，需要在 URI 中包含相关参数，如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| symbolname | String | 【与 resourceParameter 必填一项】 符号名称。 |
| resourceParameter | [ResourceParameter](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ResourceParameter.html) | 【与 symbolname 必填一项】  符号图片参数，如生成的图片的高度、宽度、类型，资源的类型、风格等 |
| layerName | String | 符号所在的图层名称。 |
| points | [Point2D[]](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 用来指定几何对象绘制位置的有序点集合。仅当填写resourceParameter参数时此参数有效。
如果绘制的是点状符号，点状符号最终将绘制在所有的坐标点位上； 如果绘制的是线状符号，这些坐标点将作为线状符号的控制点来绘制由该线状符号表示的线，此坐标点集合中必须含有两个（包含两个）以上的坐标点； 如果绘制的是填充符号，这些坐标点将构成的封闭区域以填充符号填充，并绘制出来，坐标点串中至少包含三个且不共线的坐标点。 |
####  
#### 响应示例1
对 vectorSymbols 资源执行 GET 请求，通过符号名指定获取的符号：
http://sueprmapiserver:8090/iserver/services/map-China100/rest/maps/China/tileFeature/symbols.png?symbolname=SYMBOLMARKER__China_Capital_pt@China__64__64__true__12081270
则返回的点状符号如下：
!\[](../../../../../../../assets/images/root/maps/map/tileFeature/symbols.png)
#### 响应示例2
对 vectorSymbols 资源执行 GET 请求，通过指定图片参数获取符号图片：
http://supermapiserver:8090/iserver/services/map-China100/rest/maps/China/tileFeature/symbols.png?symbolname=&resourceParameter={"outputOption":{"pdfOption":{"regionStyleRetained":false,"entire":false,"vector":false,"lineStyleRetained":false,"pointStyleRetained":false},"foreColor":null,"format":"PNG","transparent":true,"backColor":{"red":255,"blue":255,"green":255,"alpha":255}},"height":64,"style":{"fillBackOpaque":true,"lineWidth":0.1,"fillBackColor":{"red":255,"blue":255,"green":255,"alpha":255},"markerWidth":0,"markerAngle":0,"fillForeColor":{"red":13,"blue":143,"green":80,"alpha":255},"markerSize":2,"fillGradientOffsetRatioX":0,"fillGradientOffsetRatioY":0,"lineColor":{"red":95,"blue":117,"green":118,"alpha":255},"fillOpaqueRate":100,"markerHeight":0,"fillGradientMode":"NONE","fillSymbolID":0,"fillGradientAngle":0,"markerSymbolID":70,"lineSymbolID":0},"width":64,"type":"SYMBOLFILL","mapName":"China"}&layerName=&points=
则返回的填充符号如下：
!\[](../../../../../../../assets/images/root/maps/map/tileFeature/symbols_parameter.png)
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 vectorSymbols  资源是否存在，或者客户端是否有权限访问 vectorSymbols 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 vectorSymbols  资源是否支持<format>格式的表述。
## 请参见
- [tileFeature](../tileFeature.htm)
- [客户端构建 REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../../resource_hierarchy.htm)