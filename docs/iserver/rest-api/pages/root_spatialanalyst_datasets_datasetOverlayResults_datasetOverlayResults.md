# datasetOverlayResults

## URI
[<dataset_uri>](../dataset.htm#URI)/overlay[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[datasetOverlayResult](datasetOverlayResult.htm)
## 介绍
对数据集进行叠加分析的分析结果集资源。注：不支持对无投影坐标系的数据集进行叠加分析。
支持的方法：
- [GET](#GET 请求)：返回一个进行 POST 请求的表单。
- [POST](#POST 请求)：创建一个叠加分析结果资源，相当于进行了一次叠加分析。
- [HEAD](#HEAD 请求)：检查 datasetOverlayResults 资源是否存在，或权限是否可以访问 datasetOverlayResults 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/sp_ds_dt_overlayresults.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/overlay.rjson
### ](../../../root.htm)GET 请求
返回一个进行 POST 请求的表单。
### POST 请求
对资源进行 POST 请求，传递相关参数后，就创建了一个叠加分析结果资源，相当于进行了一次叠加分析。
#### 请求参数
URI 中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| asynchronousReturn | boolean | 是否采用异步操作。如果为 true，则在客户端提交请求后会立即返回新资源的 URI（即 returnContent 的设置不起作用）； 为 false，则服务端在分析完成后根据 returnContent 的设置返回新资源的表述或者新资源的 URI。默认为 false。 |
| returnContent | boolean | 是否立即返回新创建资源的表述还是返回新资源的 URI。如果为 true，则直接返回新创建资源，即分析结果的表述。为 false，则返回的是分析结果资源的 URI。默认为 false。 |
请求体中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| operation | String | 叠加操作，可选值为 clip（裁剪）、erase（擦除）、identity（同一）、intersect（相交）、union（合并）、update（更新）、XOR（对称差）。 
其中，对于 clip（裁剪）、erase（擦除）、identity（同一）三种操作，操作数据集支持的数据类型为面数据集，或者面状几何对象数据，被操作数据集的数据类型为点、线、面数据集。 
而对于 union（合并）、update（更新）、XOR（对称差）三种操作，操作数据集支持的数据类型为面数据集，或者面状几何对象数据，被操作数据集的数据类型只能是面数据集。 
对于 intersect（相交）操作，操作数据集支持的数据类型为面数据集、线数据集，或者面状几何对象数据，被操作数据集的数据类型为点、线、面数据集；仅当被操作数据集为线数据集时，操作数据集才可为线数据集，此时分析结果为点数据集。 |
| operateDataset | String | 操作的数据集标识，表示与该数据集进行叠加分析。与 operateRegions 参数互斥，冲突时以本参数为准。 |
| operateDatasetFilter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 用于对操作数据集进行过滤的过滤条件。不支持对操作数据集和源数据集均为面对象的相交操作进行过滤。 |
| operateRegions | Geometry[] | 操作面对象集合，表示与这些面对象进行叠加分析。与 operateDataset 参数互斥，冲突时以 operateDataset 为准。 |
| sourceDatasetFilter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 用于对源数据集进行过滤的过滤条件。设置了过滤参数后，只有满足条件的对象参与叠加分析。不支持对操作数据集和源数据集均为面对象的相交操作进行过滤。 |
| tolerance | double | 叠加分析的容限值。叠加分析后，若两个节点之间的距离小于此值，则将这两个节点合并。 |
| dataReturnOption | DataReturnOption | 返回的提取结果设置，包括结果数据源名称、结果数据集名称、最大返回记录、数据返回模式、是否覆盖已有数据等参数。
对于结果数据源名称，若设置了指定数据源名称，则将在原工作空间中创建该名称的数据源用于保存结果数据集；若您不进行设置，当被分析数据集所在数据源为udb或udbx时，则结果数据集将保存至原数据源，若数据源为只读类型矢量文件格式数据源，则结果数据集将保存至内存数据源中。
对于数据返回模式，包括只返回数据集标识（DATASET_ONLY）、只返回记录集（RECORDSET_ONLY）和返回数据集标识和记录集（DATASET_AND_RECORDSET）三种模式，默认为只返回数据集标识。
请注意，当返回的结果数据量较大时，建议您使用只返回数据集标识模式返回数据，对返回的数据集可以进行其他空间分析操作。 |
| sourceDatasetFields | String[] | 源数据集中要复制的字段。 |
| operateDatasetFields | String[] | 操作数据集中要复制的字段。 |
| supportOverlapInLayer | boolean | 是否支持面内自交叠，默认为 true |
说明：设置结果数据集字段时，如果 sourceDataset 和 operateDataset 中有相同的字段名（比如两个数据集都有 Code 字段），则 sourceDataset 中的字段保留到结果数据集中自动设为 Code_1，operateDataset 中的 Code 字段保留到结果数据集中自动设为 Code_2。
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 查询是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 请求及响应示例
对 overlay 资源： http://supermapiserver:8090/iserver/services/spatialAnalysis-Changchun/restjsr/spatialanalyst/datasets/Park@Changchun/overlay.rjson，执行 POST 请求，参数如下：
{
"operateDataset":"Frame_R@Changchun",
"operateDatasetFilter":{
"attributeFilter":""
},
"operation":"INTERSECT",
"tolerance":0,
"supportOverlapInLayer":true,
"sourceDatasetFilter":{
"attributeFilter":""
},
"dataReturnOption":{
"dataset":"",
"dataReturnMode":"DATASET_ONLY",
"expectCount":100,
"deleteExistResultDataset":false
}
}
则返回的 rjson 格式的资源描述如下：
{
"succeed": true,
"newResourceID": "a7a9f59c9b3641448a1a3304fd91eb9f_0833e4c0c5e64bc791af45a750d56b2b",
"postResultType": "CreateChild",
"newResourceLocation": "http://supermapiserver:8090/iserver/services/spatialAnalysis-Changchun/restjsr/spatialanalyst/datasets/Park@Changchun/overlay/a7a9f59c9b3641448a1a3304fd91eb9f_0833e4c0c5e64bc791af45a750d56b2b"
}
对 http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/overlay/1.rjson 执行 GET 请求，即可获取叠加分析的具体结果。请参见[datasetOverlayResult](datasetOverlayResult.htm)。
### HEAD 请求
获取资源所支持的操作以及所支持的内容格式。
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetOverlayResults 资源是否存在，或者客户端是否有权限访问 datasetOverlayResults 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetOverlayResults 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)，[datasetOverlayResult](datasetOverlayResult.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)