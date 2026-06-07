# queryable

## URI
[<tempLayer_uri>](tempLayer.htm#URI)/queryable[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[HEAD](#HEAD 请求)
## 父资源
[tempLayer](tempLayer.htm)
## 介绍
作为 tempLayer 的一个子资源，queryable 资源用于标识临时图层是否可查询，通过对 queryable 资源执行 PUT 请求，还可以改变该图层的可查询状态。
支持的方法：
- [GET](#GET 请求)：获取临时图层是否可查询的表述。
- [PUT](#PUT 请求)：修改临时图层的可查询性。
- [HEAD](#HEAD 请求)：检查 queryable 资源是否存在，或权限是否可以访问 queryable 资源。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../../../assets/images/root/maps/map/tempLayersSet/tempLayers/tempLayer/tempLayer_queryable.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，"世界地图"是地图名（{mapName}），1是"世界地图" 中的一个临时图层集（{tempLayersID}），URI 表示的是"世界地图"中的 ID 是1的临时图层集合，即 tempLayers 资源，Capitals@world 是临时图层集中 World 图层的一个子图层，URI 表示临时图层 Capitals@world 的 queryable 资源。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1/Capitals@World@@世界地图/queryable.rjson
### ](../../../../../root.htm)GET 请求
获取临时图层是否可见的描述，返回 true 表示可见，false 表示不可见。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 queryable 资源执行 GET 请求，返回一个布尔值，表示图层是否可查询，true 表示可查询。
#### 响应示例
对如下 queryable 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1/Capitals@World@@世界地图/queryable.rjson，执行 GET 请求，返回 Capitals@world 临时图层是否可查询的信息如下：
true
### PUT 请求
修改临时图层的可查询性。
描述
#### 请求参数
为执行 PUT 请求来修改临时图层是否可查询，PUT 请求体中必须包含一些参数，如果参数合法，iServer 服务器会根据这些参数对图层是否可查询进行修改。
这里请求体中的参数为一个布尔值，表示图层是否可查询，true 表示可查询，false 表示不可查询。
#### 响应结构
对 queryable 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 修改临时图层可查询性是否成功。如果不成功会有错误信息。 |
| error | HttpError | 出错信息，如果修改成功，则没有本字段。 |
#### 响应示例
对 queryable 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/tempLayersSet/1/Capitals@World@@世界地图/queryable.rjson 执行 PUT 请求，修改临时图层 Capitals@world 为不可查询，请求体如下：
false
修改成功时，返回 rjson 格式的操作结果表述如下：
{
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 queryable 资源是否存在，或者客户端是否有权限访问 queryable 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 queryable 资源是否支持<format>格式的表述。
## 请参见
- [tempLayer](tempLayer.htm)
- [客户端构建 REST 请求](../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../../resource_hierarchy.htm)