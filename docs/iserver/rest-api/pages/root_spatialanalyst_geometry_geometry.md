# geometry

## URI
[<spatialAnalyst_uri>](../spatialanalyst.htm#URI)/geometry[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[spatialAnalyst](../spatialanalyst.htm)
## 子资源
[geometryBufferResults](geometryBufferResults/geometryBufferResults.htm)，[geometryOverlayResults](geometryOverlayResults/geometryOverlayResults.htm)，[geometryIsolineResults](geometryIsolineResults/geometryIsolineResults.htm)，[geometryIsoregionResults](geometryIsoregionResults/geometryIsoregionResults.htm)、[geometryThiessenPolygonResults](geometryThiessennResults/geometryThiessennResults.htm)、[routeCalculateMeasureResults](routeCalculateMeasureResults/routeCalculateMeasureResults.htm)、[routeLocatorResults](routeLocatorResults/routeLocatorResults.htm)、[geometryInterpolation](geometryInterpolation/geometryInterpolation.htm)、[relativePosition3D](../geometry_relativePosition3D/geometryGetRelativePositionResults.htm)、[booleanOperator3D](booleanOperator3D/geometryBooleanOperator3DResults.htm)、[convexhull](convexhull/geometryConvexHullResults.htm)、[loft](loft/geometryLoftResults.htm)、[geometryMinDistanceResults](geometryMinDistanceResults/geometryMinDistanceResults.htm)、[viewShedBody](viewShedBody/viewShedBody.htm)、[buffer3D](buffer3D/buffer3D.htm)、[skylineSectorBody](skylineSectorBody/skylineSectorBody.htm)、[geometry3DEnvelop](geometry3DEnvelop/geometry3DEnvelop.htm)、[geometry3DInfo](geometry3DInfo/geometry3DInfo.htm)、[geometryExtractVector3D](geometryExtractVector3D/geometryExtractVector3D.htm)
## 介绍
对 Geometry 进行空间分析的根资源。
支持的方法：
- [GET](#GET 请求)：返回子资源，即支持的对 geometry 
进行空间分析的列表。
- [HEAD](#HEAD 请求)：检查 geometry 资源是否存在，或权限是否可以访问 geometry 
资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
![](../../../../../assets/images/root/spatialanalyst/geometry/sp_geometry.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/geometry.rjson
### ](../../root.htm)GET 请求
返回子资源，即支持的对 geometry 进行空间分析的列表。
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | string | 空间分析功能的名称。 |
| path | string | 空间分析功能的访问路径。 |
#### 响应示例
对资源：http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/geometry.rjson，执行 
GET 请求，返回的响应结果如下：
{
[{
"name": 
"buffer",
"path": 
"http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/geometry/buffer",
"supportedMediaTypes": 
null,
"resourceType": 
null
},
{
"name": 
"overlay",
"path": 
"http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/geometry/overlay",
"supportedMediaTypes": 
null,
"resourceType": 
null
}]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geometry 资源是否存在，或者客户端是否有权限访问 geometry 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断  geometry 资源是否支持<format>格式的表述。
## 请参见
- [spatialAnalyst](../spatialanalyst.htm)，[geometryBufferResults](geometryBufferResults/geometryBufferResults.htm)，[geometryOverlayResults](geometryOverlayResults/geometryOverlayResults.htm)，[geometryIsolineResults](geometryIsolineResults/geometryIsolineResults.htm)，[geometryIsoregionResults](geometryIsoregionResults/geometryIsoregionResults.htm)、[geometryThiessenPolygonResults](geometryThiessennResults/geometryThiessennResults.htm)、[routeCalculateMeasureResults](routeCalculateMeasureResults/routeCalculateMeasureResults.htm)、[routeLocatorResults](routeLocatorResults/routeLocatorResults.htm)、[relativePosition3D](../geometry_relativePosition3D/geometryGetRelativePositionResults.htm)、[geometryBooleanOperator3D](booleanOperator3D/geometryBooleanOperator3DResults.htm)、[booleanOperator3D](booleanOperator3D/geometryBooleanOperator3DResults.htm)、[convexhull](convexhull/geometryConvexHullResults.htm)、[loft](loft/geometryLoftResults.htm)、[viewShedBody](viewShedBody/viewShedBody.htm)、[buffer3D](buffer3D/buffer3D.htm)、[skylineSectorBody](skylineSectorBody/skylineSectorBody.htm)、[geometry3DEnvelop](geometry3DEnvelop/geometry3DEnvelop.htm)、[geometry3DInfo](geometry3DInfo/geometry3DInfo.htm)、[geometryExtractVector3D](geometryExtractVector3D/geometryExtractVector3D.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 
服务资源层次结构](../../../resource_hierarchy.htm)