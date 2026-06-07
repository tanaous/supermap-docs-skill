# densityclusteranalyst

## URI
<[machinelearning_uri](../machinelearning/machinelearning.htm)>/ml-process:densityclusteranalyst[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[machineLearning](../machinelearning/machinelearning.htm)
## 介绍
对空间数据进行密度聚类分析。
支持的方法：
- [GET](#GET 请求)：返回分析的交互操作页面。
- [POST](#POST 请求)：执行分析。
- [HEAD](#HEAD 请求)：检查datasource资源是否存在，或权限是否可以访问datasource资源。
支持的表述格式：JSONP、RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/machinelearning/densityclusteranalyst/densityclusteranalyst.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/machinelearning/restjsr/sps.WorkflowProcessFactory.models.ml-process:densityclusteranalyst
### ](densityClusterAnalyst.htm)GET 请求
返回分析的交互操作页面。
### POST 请求
执行分析。
**请求参数**
请求参数列表：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| readasfeaturerdd-dataConnInfo
【必填】 | String | 待分析数据集，需要包含数据类型，连接参数，数据集名字等信息。 |
| readasfeaturerdd-filter
【可选参数】 | String | 数据查询条件 |
| eps
【必填】 | String | 聚类半径 |
| minPoints
【必填】 | String | 聚类数目阈值 |
| fieldName
【必填】 | String | 保存聚类类别的字段名 |
| savedFields 【可选参数】 | String | 需要保留到结果数据集中的字段，默认情形下保留存有字段。 |
| saveas-dataConnInfo 【必填】 | String | 结果数据集-需要包含数据类型，连接参数，数据集名字等信息。 |
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 densityClusterAnalyst 资源是否存在，或者客户端是否有权限访问 densityClusterAnalyst 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 densityClusterAnalyst 资源是否支持<format>格式的表述。
## 请参见
- [machineLearning](../machinelearning/machinelearning.htm)
- [客户端构建 REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)