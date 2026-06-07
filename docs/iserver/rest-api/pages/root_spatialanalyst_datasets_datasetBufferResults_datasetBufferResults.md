# datasetBufferResults

## URI
[<dataset_uri>](../dataset.htm#URI)/buffer[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[datasetBufferResult](datasetBufferResult.htm)
## 介绍
数据集缓冲区分析结果集资源，支持对数据集、记录集进行缓冲区分析。注：不支持对无投影坐标系的数据集进行缓冲区分析。
支持的方法：
- [GET](#GET 请求)：html表述返回一个 POST 请求的表单，其他表述返回数据集缓冲区分析结果集列表。
- [POST](#POST 请求)：创建一个缓冲区分析结果资源，相当于进行了一次缓冲区分析。
- [HEAD](#HEAD 请求)：检查 datasetBufferresults 资源是否存在，或权限是否可以访问 datasetBufferresults 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/sp_ds_dt_bufferresults.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/buffer.rjson
### ](../../../root.htm)GET 请求
html表述返回一个 POST 请求的表单，其他表述返回数据集缓冲区分析结果集列表。
### POST 请求
对资源进行 POST 请求，传递相关参数后，就创建了一个缓冲区分析结果资源，相当于进行了一次缓冲区分析。
#### 请求参数
对资源进行 POST 请求，可以实现对象的缓冲区分析。
URI 中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| asynchronousReturn | boolean | 是否采用异步操作。如果为 true，则在客户端提交请求后会立即返回新资源的 URI（即 returnContent 的设置不起作用）； 为 false，则服务端在分析完成后根据 returnContent 的设置返回新资源的表述或者新资源的 URI。默认为 false。 |
| returnContent | boolean | 是否立即返回新创建资源的表述还是返回新资源的 URI。如果为 true，则直接返回新创建资源，即分析结果的表述。为 false，则返回的是分析结果资源的 URI。默认为 false。 |
请求体中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| isAttributeRetained | boolean | 是否保留属性字段，isUnion 为 false 时有效。 |
| isUnion | boolean | 是否合并结果面对象。 |
| bufferAnalystParameter | [BufferAnalystParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/BufferAnalystParameter.html) | 缓冲区分析参数，为缓冲区分析提供必要的参数信息，包括左缓冲距离、右缓冲距离、端点类型、平头缓冲、圆头缓冲圆弧处线段的个数等信息，详见 BufferAnalystParameter。 |
| filterQueryParameter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 用来对数据集中的几何对象进行过滤的查询条件。只有满足此条件的几何对象才参与缓冲区分析。 |
| dataReturnOption | [DataReturnOption](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/DataReturnOption.html) | 返回的提取结果设置，包括结果数据源名称、结果数据集名称、最大返回记录、数据返回模式、是否覆盖已有数据等参数。
对于结果数据源名称，若设置了指定数据源名称，则将在原工作空间中创建该名称的数据源用于保存结果数据集；若您不进行设置，当被分析数据集所在数据源为udb或udbx时，则结果数据集将保存至原数据源，若数据源为只读类型矢量文件格式数据源，则结果数据集将保存至内存数据源中。
对于数据返回模式，包括只返回数据集标识（DATASET_ONLY）、只返回记录集（RECORDSET_ONLY）和返回数据集标识和记录集（DATASET_AND_RECORDSET）三种模式，默认为只返回数据集标识。
请注意，当返回的结果数据量较大时，建议您使用只返回数据集标识模式返回数据，对返回的数据集可以进行其他空间分析操作。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 分析是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 buffer 资源：http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/buffer.rjson，进行 POST 请求，参数如下：
{
"isAttributeRetained": false,
"isUnion": false,
"bufferAnalystParameter": {
"endType": "ROUND",
"semicircleLineSegment": 4,
"leftDistance": {
"value": 100
},
"rightDistance": {
"value": null
},
"radiusUnit":"METER"
},
"filterQueryParameter": {
"attributeFilter": ""
},
"dataReturnOption": {
"dataset": "SamplePbuffer",
"dataReturnMode": "DATASET_ONLY",
"expectCount": 100,
"deleteExistResultDataset": false
}
}
则返回的 rjson 格式的资源描述如下：
{
"succeed": true,
"newResourceID": "1",
"postResultType": "CreateChild",
"newResourceLocation": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/buffer/1"
}
对 http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/buffer/1.rjson ,执行 GET 请求，即可获取缓冲区分析结果的具体信息。请参见[datasetBufferResult](datasetBufferResult.htm)。
### HEAD 请求
获取资源所支持的操作以及所支持的内容格式。
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetBufferresults 资源是否存在，或者客户端是否有权限访问 datasetBufferresults 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetBufferresults 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)，[datasetBufferResult](datasetBufferResult.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)