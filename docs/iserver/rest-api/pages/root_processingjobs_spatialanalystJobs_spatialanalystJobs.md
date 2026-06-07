# spatialanalystJobs

## URI
<[processingJobs_uri](../jobs.htm)>/spatialanalyst[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[processingJobs](../jobs.htm)
## 子资源
[aggregatePoints](aggregatePoints/aggregatePoints.htm)、[density](density/kernelDensityJobs.htm)、[query](query/query.htm)、[vectorClip](vectorClip/overlayanalystgeo.htm)、[summaryRegion](summaryRegion/summaryRegion.htm)、[topologyValidator](topologyValidator/topologyvalidator.htm)、[featureJoin](featureJoin/featurejoin.htm)、[buffers](buffers/buffers.htm)、[overlay](overlay/overlay.htm)、[summaryAttributes](summaryAttributes/summaryAttributes.htm)、[reconstructtracks](reconstructtracks/reconstructtracks.htm)、[calculateODMatrix](odlineMake/odlineMake.htm)
## 介绍
分布式空间分析作业根目录。
支持的方法：
- [GET](#GET 请求)：获取分布式空间分析作业的入口。
- [HEAD](#HEAD 请求)：检查 spatialanalystJobs 
资源是否存在，或权限是否可以访问 spatialanalystJobs 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/root/processingjobs/spatialanalystJobs/spatialanalystJobs.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/distributedanalyst/rest/v1/jobs/spatialanalyst.rjson
### ](../../root.htm)GET 请求
获取分布式空间分析作业的入口。
#### 响应结构
对 spatialanalystJobs 资源执行 GET 请求，在响应消息的实体主体里是一个数据处理资源描述集，其中单个资源描述的结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 空间分析作业名称。 |
| path | String | 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 响应示例
对spatialanalystJobs 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[{
"name": "kernelDensityJobs",
"path": "http://supermapiserver:8090/iserver/services/distributedanalyst/rest/jobs/spatialanalyst/kernelDensity",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
}]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 spatialanalystJobs 资源是否存在，或者客户端是否有权限访问 
spatialanalystJobs 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 spatialanalystJobs 
资源是否支持<format>格式的表述。
## 请参见
- [processingJobs](../jobs.htm)，[aggregatePoints](aggregatePoints/aggregatePoints.htm)、[density](density/kernelDensityJobs.htm)、[query](query/query.htm)、[vectorClip](vectorClip/overlayanalystgeo.htm)、[summaryRegion](summaryRegion/summaryRegion.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)