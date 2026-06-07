# datasetIsolineResults

## URI
URI1：[<dataset_uri>](../dataset.htm#URI)/isoline[.<format>]
URI2：[<dataset_uri>](../dataset.htm#URI)/isoline/{zValuedFieldName}/{resolution}[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[datasetIsolineResult](datasetIsolineResult.htm)
## 介绍
可以对栅格数据集和点数据集提取等值线，对栅格数据集提取等值线时，filterQueryParameter，zValueFieldName，resolution 三个参数是不需要的。同时，对点数据集提取等值线还可以使用 URI2，此时 zValueFile 和 resolution 在 URL 中传递。
支持的方法：
- [GET](#GET 请求)：html表述返回一个 POST 请求的表单，其他表述返回对栅格数据集和点数据集提取等值线结果集列表。
- [POST](#POST 请求)：创建一个提取等值线的结果资源，相当于进行了一次提取等值线的表面分析。
- [HEAD](#HEAD 请求)：检查 datasetIsolineResults 资源是否存在，或权限是否可以访问 datasetIsolineResults 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/sp_ds_dt_isolineresults.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/isoline.rjson
### ](../../../root.htm)GET 请求
html表述返回一个 POST 请求的表单，其他表述返回对栅格数据集和点数据集提取等值线结果集列表。
### POST 请求
对资源进行 POST 请求，传递相关参数后，就创建了一个表面分析结果资源，相当于进行了一次提取等值线的表面分析。
#### 请求参数
URI 中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| asynchronousReturn | boolean | 是否采用异步操作。如果为 true，则在客户端提交请求后会立即返回新资源的 URI（即 returnContent 的设置不起作用）； 为 false，则服务端在分析完成后根据 returnContent 的设置返回新资源的表述或者新资源的 URI。默认为 false。 |
| returnContent | boolean | 是否立即返回新创建资源的表述还是返回新资源的 URI。如果为 true，则直接返回新创建资源，即分析结果的表述。为 false，则返回的是分析结果资源的 URI。默认为 false。 |
URI1可用于对栅格和点数据集提取等值线，请求体参数如下：
其中，对栅格数据集提取等值线时，filterQueryParameter，zValueFieldName，resolution 三个参数是不需要的。
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| extractParameter | [ExtractParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ExtractParameter.html) | 提取操作需要的参数。 |
| resultSetting | [DataReturnOption](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/DataReturnOption.html) | 返回的提取结果设置，包括结果数据源名称、结果数据集名称、最大返回记录、数据返回模式、是否覆盖已有数据等参数。
对于结果数据源名称，若设置了指定数据源名称，则将在原工作空间中创建该名称的数据源用于保存结果数据集；若您不进行设置，当被分析数据集所在数据源为udb或udbx时，则结果数据集将保存至原数据源，若数据源为只读类型矢量文件格式数据源，则结果数据集将保存至内存数据源中。
对于数据返回模式，包括只返回数据集标识（DATASET_ONLY）、只返回记录集（RECORDSET_ONLY）和返回数据集标识和记录集（DATASET_AND_RECORDSET）三种模式，默认为只返回数据集标识。
请注意，当返回的结果数据量较大时，建议您使用只返回数据集标识模式返回数据，对返回的数据集可以进行其他空间分析操作。 |
| filterQueryParameter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 对待插值点进行筛选的过滤参数，只有满足条件的点才能进行差值。 |
| zValuedFieldName | String | 用于提取操作的字段名称。提取等值线时，将使用该字段中的值，对点记录集中的点数据进行插值分析，得到栅格数据集（中间结果），接着从栅格数据集提取等值线。 |
| resolution | double | 中间结果栅格数据集的分辨率，表示一个像元所代表的实地距离，其单位与源操作数据集单位相同。该值越小，表示中间结果栅格数据集的精度越高，从而所提取的等值线精度也越高。该值的取值范围有如下限制：
- 为保证数据的有效性，该值不能大于待分析数据集范围的短边边长；
- 为保证服务器的运行效率，该值不能小于数据范围长边边长的万分之一，即控制结果栅格行列数（即原点数据集范围边长除以分辨率）均在10000以内。
建议值为：原点数据集范围边长的1/500左右。 |
| clipRegion | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 【可选参数】
裁剪面对象，如果不需要对操作结果进行裁剪，可以使用 null 值取代该参数。 |
| expectedZValues | double[] | 【可选参数】
期望分析结果的 Z 值集合。 |
URI2用于对点数据集提取等值线，请求体参数如下：（zValueFieldName 和 resolution 在 URL 中传递，参数说明与上表相同。）
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| parameter | [ExtractParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ExtractParameter.html) | 提取操作需要的参数。 |
| resultSetting | [DataReturnOption](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/DataReturnOption.html) | 返回的提取结果设置，包括结果数据集名称、最大返回记录、数据返回模式、是否覆盖已有数据等参数。
对于数据返回模式，包括只返回数据集标识（DATASET_ONLY）、只返回记录集（RECORDSET_ONLY）和返回数据集标识和记录集（DATASET_AND_RECORDSET）三种模式，默认为 只返回数据集标识。
请注意，当返回的结果数据量较大时，建议您使用只返回数据集标识模式返回数据，对返回的数据集可以进行其他空间分析操作。 |
| filterQueryParameter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 对待插值点进行筛选的过滤参数，只有满足条件的点才能进行差值。 |
| clipRegion | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 【可选参数】
裁剪面对象，如果不需要对操作结果进行裁剪，可以使用 null 值取代该参数。 |
| expectedZValues | double[] | 【可选参数】
期望分析结果的 Z 值集合。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 分析是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 datasetIsolineResults 资源：http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/isoline.rjson，执行 POST 请求，参数如下：
{
"zValueFieldName": "AVG_TMP",
"resolution": 3000,
"filterQueryParameter": {
"attributeFilter": "",
"ids": null
},
"extractParameter": {
"datumValue": 0,
"interval": 100,
"resampleTolerance": 0,
"smoothMethod": "BSPLINE",
"smoothness": 3
},
"resultSetting": {
"dataset": "pointIsoline",
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
"newResourceLocation": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/isoline/1"
}
对 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/isoline/1.rjson 执行 GET 请求，即可获分析结果的具体信息。请参见[datasetIsolineResult](datasetIsolineResult.htm)。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetIsolineResults 资源是否存在，或者客户端是否有权限访问 datasetIsolineResults 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetIsolineResults 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)，[datasetIsolineResult](datasetIsolineResult.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)