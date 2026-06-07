# symbol

## URI
[<map_uri>](map.htm#URI)/symbol[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
symbol 资源表示地图的符号。可以是点状符号，线状符号，填充符号，通过对带参数的 URI 执行 GET 请求来获取对应的符号图片。其中，style 中对应符号的 ID 唯一确定一个符号。
支持的方法：
- [GET](#GET 请求)：获取一个符号的图片。
- [HEAD](#HEAD 请求)：获取 symbol 资源的元数据信息。检查 symbol 资源是否存在，权限是否可以访问。
支持的表述格式：PNG、BMP、GIF、JPG、WebP、RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/symbol.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 BMP 图片格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/symbol.bmp
### ](../../root.htm)GET 请求
获取一个符号的图片。
#### 请求参数
对 symbol 资源执行 GET 请求，获取一个符号的图片，需要在 URI 中包含相关参数，如下所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| resourceType | ResourceType | 【必选参数】 符号的类型。可以是点状符号，线状符号，填充符号等。 |
| style | Style | 【必选参数】 符号绘制的风格。 |
| redirect | boolean | 是否重定向，HTTP 传输中的一个概念。如果为 true，则将请求重定向到图片的真实地址；如果为 false，则响应体中是图片的字节流。默认为 true，进行重定向。 |
| picWidth | int | 要获取的符号图片的宽度。默认为64像素。 |
| picHeight | int | 要获取的符号图片的高度。默认为64像素。 |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
如果直接获取地图符号，可指定表述格式为 PNG、BMP、GIF、WebP 或 JPG，则返回一幅图片，图片不透明。
如果获取地图符号信息，可指定表述格式为 RJSON、JSON、HTML 或 XML，则返回的表述结构如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| resourceImageUrl | String | 指向符号图片的 URI 信息，其中图片格式只能为 PNG 格式。 |
| resourceParameter | ResourceParameter | 符号图片的信息，比如资源图片的高度、宽度、资源图片的风格等。 |
#### 示例
对如下参数的 symbol 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/symbol.png?resourceType=SYMBOLLINE&style={"fillBackOpaque":true,"lineWidth":0.1,"fillBackColor":{"red":255,"blue":255,"green":255},"fillForeColor":{"red":208,"blue":240,"green":255},"markerAngle":0,"markerSize":50,"fillGradientOffsetRatioX":0,"fillGradientOffsetRatioY":0,"lineColor":{"red":0,"blue":0,"green":128},"fillOpaqueRate":100,"fillGradientMode":"NONE","fillSymbolID":76,"fillGradientAngle":0,"markerSymbolID":10,"lineSymbolID":34}，执行 GET 请求，返回线状符号的图片如下：
!\[](../../../../../assets/images/root/maps/map/symbolline.png)
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
获取 symbol 资源的元数据信息。检查该 symbol 资源是否存在，权限是否可以访问。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 symbol 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)