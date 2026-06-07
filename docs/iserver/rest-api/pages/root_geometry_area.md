# area

## URI
[<geometry_uri>](geometry.htm#URI)/area[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[geometry](geometry.htm)
## 介绍
area 资源是一个算法资源，作为 geometry 资源的一个子资源，用于根据给定参数量算面积。参数必须包含在 
URI 中，不能放在请求体里。
支持的方法：
- [GET](#GET 请求)：根据参数量算面积，返回量算结果。
- [HEAD](#HEAD 请求)：获取 area 资源的元数据信息。检查该 
area 资源是否存在、参数是否合法，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/root/geometry/area.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/area.rjson
### ](../root.htm)GET 请求
用于根据参数量算地图上的具体面积。
请注意，当构成面的点串为顺时针顺序时，面积值为正数；当构成面的点串为逆时针顺序时，面积值为负数。
#### 请求参数
对 area 资源执行 GET 请求，支持以下参数，必须包含在 URI 中，不能放在请求体里。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| point2Ds | Point2D[] | 【必填参数】 用于量算的点集。 |
| unit | Unit | 【必填参数】 期望返回结果的单位。 |
| prjCoordSys | [PrjCoordSys](../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 【必填参数】 
用于量算的点集的坐标参考系统。 
参数使用时，需按照[PrjCoordSys](../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 
epsgCode 的方式传入坐标参考系，如： 
prjCoordSys={"epsgCode":3857}。 |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 area 资源执行 GET 请求，返回操作结果的表述如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| area | double | 量算的面积大小的值。 |
| unit | Unit | 量算结果的单位。 |
#### 响应示例
对 area 资源：http://localhost:8090/iserver/services/geometry/restjsr/v1/geometry/area.rjson?point2Ds=%5B%7B"x"%3A%2023.00%2C"y"%3A34.00%7D%2C%0A%7B"x"%3A%2053.55%2C"y"%3A12.66%7D%2C%0A%7B"x"%3A%2073.88%2C"y"%3A12.6%7D%2C%0A%7B"x"%3A%2023.00%2C"y"%3A34.00%7D%5D&unit=KILOMETER&prjCoordSys=%7Bepsgcode%3A4326%7D.rjson，执行 
GET 请求，返回 rjson 格式的资源描述如下：
{
"area": 3157590.930368346,
"distance": -1,
"unit": "KILOMETER"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 area 资源是否存在，或者客户端是否有权限访问 area 资源。通过对加.<format>的 
URI 执行 HEAD 请求，还可以快速判断 area 资源是否支持<format>格式的表述。
## 请参见
- [geometry](geometry.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)