# NaiveBayesClassificationFit

## URI
<[machinelearning_uri](../machineLearning.htm)>/ml-process:NaiveBayesClassificationFit[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[machineLearning](../machineLearning.htm)
## 介绍
对空间数据进行朴素贝叶斯分类训练。
支持的方法：
- [GET](#GET 请求)：返回分析的交互操作页面。
- [POST](#POST 请求)：执行分析。
- [HEAD](#HEAD 请求)：检查datasource资源是否存在，或权限是否可以访问datasource资源。
支持的表述格式：JSONP、RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/machinelearning/NaiveBayesClassificationFit/NaiveBayesClassificationFit.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/services/machinelearning/restjsr/sps.WorkflowProcessFactory.models.ml-process:naivebayesclassificationfit
### ](../../root.htm)GET 请求
返回分析的交互操作页面。
### POST 请求
执行分析。
**请求参数**
请求参数列表：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| readasfeaturerdd-dataConnInfo
【必填】 | String | 训练数据集，需要包含数据类型，连接参数，数据集名字等信息。 |
| readasfeaturerdd-filter
【可选参数】 | String | 数据查询条件 |
| dependent
【必填】 | String | 建模字段 |
| explanatory
【必填】 | String | 解释字段，该集合输入训练数据集的一个或多个字段名称作为模型的解释变量。 |
| smoothing
【可选参数】 | String | 平滑参数，取值范围大于0，默认值为1.0。 |
| methodType
【可选参数】 | String | 朴素贝叶斯模型类型，可选值有多项式模型（Multinomial）和伯努利模型（Bernoulli）,默认为Multinomial。 |
| explanatoryDistanceRDDs
【可选参数】 | String | 距离解释变量数据集，支持点线面数据集。 |
| modelPath
【可选参数】 | String | 模型保存目录 |
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 naiveBayesClassificationFit 资源是否存在，或者客户端是否有权限访问 naiveBayesClassificationFit 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 naiveBayesClassificationFit 资源是否支持<format>格式的表述。
## 请参见
- [machineLearning](../machineLearning.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)