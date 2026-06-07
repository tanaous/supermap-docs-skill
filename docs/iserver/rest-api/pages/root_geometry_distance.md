# distance

## URI
[<geometry_uri>](geometry.htm#URI)/distance[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[geometry](geometry.htm)
## 介绍
distance 资源是一个算法资源，作为 geometry 资源的一个子资源，用于根据给定参数（point2Ds 和 unit）量算距离，参数必须包含在 URI 中，不能放在请求体里。
支持的方法：
- [GET](#GET 请求)：根据参数量算距离，返回量算结果。
- [HEAD](#HEAD 请求)：检查 distance 资源是否存在，或权限是否可以访问 distance 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../assets/images/root/geometry/distance.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/distance.rjson
### ](../root.htm)GET 请求
用于根据参数量算距离。
#### 请求参数
对 distance 资源执行 GET 请求，支持以下参数，必须包含在 URI 中，不能放在请求体里。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| point2Ds | Point2D[] | 【必填参数】用于量算的点集。 |
| unit | Unit | 【必填参数】期望返回结果的单位。 |
| prjCoordSys | [PrjCoordSys](../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 【必填参数】 用于量算的点集的坐标参考系统。   参数使用时，需按照[PrjCoordSys](../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html)中的字段结构来构建，同时也支持通过只传递 epsgCode 的方式传入坐标参考系，如： prjCoordSys={"epsgCode":3857}。 |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
| distanceMode | [DistanceMode[]](../../../../mergedProjects/iServerJavadoc/com/supermap/services/components/commontypes/DistanceMode.html) | 【可选参数】距离量算模式。包括： Geodesic：测地线模式，沿着地球椭球体的最短距离,默认采用该模式。 Planar：平面模式，两点直线距离，当且仅当量算时点串坐标系是投影坐标系有效。 |
#### 响应结构
对 distance 资源执行 GET 请求，返回操作结果的表述如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| distance | double | 量算的距离的值。 |
| unit | Unit | 量算结果的单位。 |
#### 响应示例
对 distance 资源：http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/distance?point2Ds=[{%22x%22:%2023.00,%22y%22:34.00},{%22x%22:%2053.55,%22y%22:12.66},{%22x%22:%2073.88,%22y%22:12.6}]&unit=KILOMETER&prjCoordSys={epsgcode:4326}&distanceMode=Geodesic 执行 GET 请求，返回 rjson 格式的资源描述如下：
{
"area": -1,
"distance": 6098.355576672728,
"unit": "KILOMETER"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 distance 资源是否存在，或者客户端是否有权限访问 distance 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 distance 资源是否支持<format>格式的表述。
## 请参见
- [geometry](geometry.htm)
- [客户端构建 REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)