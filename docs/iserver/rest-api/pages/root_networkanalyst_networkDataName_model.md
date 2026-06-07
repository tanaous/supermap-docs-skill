# model

## URI
[<networkDataName_uri>](networkDataName.htm#URI)/model[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[HEAD](#HEAD 请求)
## 父资源
[networkDataName](networkDataName.htm)
## 介绍
用于重新加载网络分析服务中的模型。
支持的方法：
- [GET](#GET 请求)：获取当前资源。
- [PUT](#PUT 请求)：重新加载网络分析服务中的模型。
- [HEAD](#HEAD 请求)：检查 model 资源是否存在，或权限是否可以访问 model 资源。
支持的表述格式：（rjson、json、jsonp、html、xml）。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/model.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/model
### ](../../root.htm)GET 请求
获取当前资源。
### PUT 请求
通过 PUT 请求可以实现重新加载网络分析服务中的模型。
构建 PUT 请求无需请求参数。
**响应结构**
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 显示更新弧段权值是否成功。 |
| errorMsg | String | 如果出错，错误的详细信息。 |
| code | int | 错误的响应码。 |
**响应示例**
对 RoadNet@Changchun 的模型重新加载，即对 http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/model.rjson 执行 PUT 请求，返回的响应结果如下：
{
"succeed":true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 model 资源是否存在，或者客户端是否有权限访问 model 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 model 资源是否支持<format>格式的表述。
## 请参见
- [networkDataName](networkDataName.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)