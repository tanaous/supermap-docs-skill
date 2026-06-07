# interpolationKrigingResult

## URI
[<interpolationKriging_uri>](interpolationKriging.htm#URI)/{interpolationKrigingResultID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[interpolationKriging](interpolationKriging.htm)
## 介绍
克吕金插值结果资源，用于获取一次克吕金权插值结果。
支持的方法：
- [GET](#GET 请求)：获取一次克吕金权插值结果。
- [HEAD](#HEAD 请求)：检查 interpolationKrigingResult 
资源是否存在，或权限是否可以访问 interpolationKrigingResult 资源。
支持的表述格式：（rjson、json、html、xml）。
## 资源层次
![](../../../../../../../assets/images/root/spatialanalyst/datasets/sp_ds_interpolationKrigingRes.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/kriging/93e9349897944f44ac08633fc722942b_291a19df41274c89bbd8aeddd64941aa
### ](../../../../root.htm)GET 请求
返回 Kriging 插值分析结果资源。
#### 响应结构
正常响应情况，响应码200。  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 插值分析是否成功。 |
| message | String | 插值分析失败时返回的信息。 |
| dataset | String | 结果数据集标识 |
| recordset | Recordset | 结果记录集，用于存放空间对象信息。 |
#### 响应示例
对 interpolationKriging 资源的 POST 请求结果中的资源：http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/kriging/93e9349897944f44ac08633fc722942b_291a19df41274c89bbd8aeddd64941aa.rjson，执行 
GET 请求，则返回的 rjson 格式的表述如下：
{
"dataset": "test_Kriging@Interpolation",
"message": null,
"recordset": null,
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 interpolationKrigingResult 资源是否存在，或者客户端是否有权限访问 
interpolationKrigingResult 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 
interpolationKrigingResult 资源是否支持<format>格式的表述。
## 请参见
- [interpolationKriging](interpolationKriging.htm)
- [客户端构建 
REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 
服务资源层次结构](../../../../../resource_hierarchy.htm)