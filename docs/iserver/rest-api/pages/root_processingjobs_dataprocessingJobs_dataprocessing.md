# dataProcessingJobs

## URI
<[processingjobs_uri](../jobs.htm#URI)>/{version}/jobs[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[processingJobs](../jobs.htm)
## 子资源
[buildIndex](buildindex/buildindex.htm)、[buildRegionGrid](buildregiongrid/buildregiongrid.htm)、[buildRasterPyramid](buildRasterPyramid/buildRasterPyramid.htm)
## 介绍
dataProcessingJobs 资源表示数据处理作业的根目录，列出所有可用的数据处理作业资源。
支持的方法：
- [GET](#GET 请求)：获取 iServer 支持的数据处理作业列表。
- [HEAD](#HEAD 请求)：检查 dataProcessingJobs 资源是否存在，或权限是否可以访问 dataProcessingJobs 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/processingjobs/dataprocessingJobs/dataprocessingJobs.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/distributedanalyst/rest/v1/jobs/dataprocessing.rjson
### ](../../root.htm)GET 请求
获取数据处理作业列表。
**响应结构**
对 dataProcessingJobs 资源执行 GET 请求，在响应消息的实体主体里是一个数据处理资源描述集，其中单个资源描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 数据处理资源的名称。 |
| path | String | 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
**响应示例**
对 dataProcessingJobs 资源执行 GET 请求，返回 rjson 格式的资源描述如下：：
[{
"resourceConfigID": null,
"supportedMediaTypes": null,
"path": "http://supermapiserver:8090/iserver/services/distributedanalyst/rest/v1/jobs/dataprocessing/buildindex",
"name": "buildIndex",buildindex
"resourceType": null
}]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 dataProcessingJobs 资源是否存在，或者客户端是否有权限访问 dataProcessingJobs 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 dataProcessingJobs 资源是否支持<format>格式的表述。
## 请参见
- [processingJobs](../jobs.htm)，[buildIndex](buildindex/buildindex.htm)、[buildRegionGrid](buildregiongrid/buildregiongrid.htm)、[buildRasterPyramid](buildRasterPyramid/buildRasterPyramid.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)