# ObjectExtraction

## URI
<[machinelearning_uri](../machineLearning.htm)>/ml-process:ObjectExtraction[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[machineLearning](../machineLearning.htm)
## 介绍
使用神经网络模型对影像进行对象提取。
支持的方法：
- [GET](#GET 请求)：返回分析的交互操作页面。
- [POST](#POST 请求)：执行分析。
- [HEAD](#HEAD 请求)：检查datasource资源是否存在，或权限是否可以访问datasource资源。
支持的表述格式：JSONP、RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/machinelearning/ObjectExtraction/ObjectExtraction.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/machinelearning/restjsr/ml-process:objectextraction
### ](../../root.htm)GET 请求
返回分析的交互操作页面。
### POST 请求
执行分析。
**请求参数**
请求参数列表：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| inputDatasource
【必填】 | String | 指定进行分析影像数据集所在数据源，目前只支持udb,udbx两种数据源。 |
| inputDatasetName
【必填】 | String | 指定进行分析的影像数据集名字。 |
| modelFile
【必填】 | String | 用于进行分析的训练好的模型文件。 |
| return_bbox
【可选参数】 | bool | 返回最小外接矩形 |
| scoreThresh
【可选参数】 | double | 概率阈值，仅保留预测概率高于该值的目标。默认值为0.5。 |
| nmsThresh
【可选参数】 | double | 去重阈值，去除重复目标的阈值。默认值为0.3。 |
| outputDatasource
【必填】 | String | 指定分析结果存放的数据源路径，支持udb,udbx,geotiff, 输出文件格式需要与输入匹配，在文件不存在时会自行创建。 |
| outputDatasetName
【可选参数】 | String | 结果数据集名，默认值为objextract_result。 |
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 objectExtraction 资源是否存在，或者客户端是否有权限访问objectExtraction 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 objectExtraction 资源是否支持<format>格式的表述。
## 请参见
- [machineLearning](../machineLearning.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)