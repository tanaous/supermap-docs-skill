# legend

## URI
1. [<tempLayer_uri>](tempLayer.htm#URI)/legend[.<format>]
2. [<tempLayer_uri>](tempLayer.htm#URI)/items/{itemID}/legend[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[tempLayer](tempLayer.htm)
## 介绍
作为 layer 的一个子资源，legend 资源用于以图例形式展示图层的样式，用户可以通过 width、height 指定图例图片的大小。
URI1可以获取一般图层的图例，URI2用于获取单值专题图、统计专题图、分段专题图的子项的图例，其中{itemID}从0计数，可取的最大值为专题图子项的个数减1。
支持的方法：
- [GET](#GET 请求)：获取图层的图例图片。
- [HEAD](#HEAD 请求)：检查 legend 资源是否存在，或权限是否可以访问 legend 资源。
支持的表述格式：PNG、BMP、GIF、JPG。
## 资源层次
![](../../../../../../../../assets/images/root/maps/map/tempLayersSet/tempLayers/tempLayer/tempLayer_legend.png) 
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 PNG 输出格式为例加以说明，其中，supermapiserver 是服务器名，"世界地图"是地图名（{mapName}），1是"世界地图" 中的一个临时图层集（{tempLayersID}），URI 表示的是"世界地图"中的 ID 是1的临时图层集合，即 tempLayers 资源，Capitals@world 是临时图层集中 World 图层的一个子图层，URI 表示 Capitals@world 图层的图例图片。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1/Capitals@World@@世界地图/legend.png
### ](../../../../../root.htm)GET 请求
获取临时图层的图例图片。
#### 请求参数
对 legend 资源执行 GET 请求，获取图层图例图片时，可在 URI 中传递参数来定制，也可以不传。
URI 中的参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| width | int | 【可选参数】 要获取的符号图片的宽度。默认为16像素。 |
| height | int | 【可选参数】 要获取的符号图片的高度。默认为16像素。 |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
legend 资源的响应为一张图片，格式由资源 URI 的后缀确定。
#### 响应示例
对 legend 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1/Capitals@World@@世界地图/legend.png?width=30&height=30 执行 GET 请求，获取该图层的图例，返回 PNG 格式的图片如下：
![](../../../../../../../../assets/images/root/maps/map/layers/layer/legend30_30.png)
为一张30*30像素的图片，如果不指定图片大小，默认生成16*16大小的图例图片。
对 http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/2/Countries@World.1@@世界地图/items/0/legend.png?width=60&height=30 执行 GET 请求，“Countries@World.1”是一个单值专题图临时图层，获取它第1个子项的图例图片如下：
![](../../../../../../../../assets/images/root/maps/map/layers/layer/legenditem0.png)
“Countries@World.1”图层有4个子项，当{itemID}过大，服务器会返回 json 格式的错误信息，如对 http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/layers/单值专题图@@世界地图/items/4/legend.png?width=60&height=30 执行 GET 请求，获取的 HTTP 响应的状态码为404，响应的消息体内容为：
{"succeed":false,"error":{"errorMsg":" 请求的子项目索引不在子项目集合的范围内 ","code":404}}  
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 legend 资源是否存在，或者客户端是否有权限访问 legend 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 legend 资源是否支持<format>格式的表述。
## 请参见
- [tempLayer](tempLayer.htm)
- [客户端构建 REST 请求](../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../../resource_hierarchy.htm)