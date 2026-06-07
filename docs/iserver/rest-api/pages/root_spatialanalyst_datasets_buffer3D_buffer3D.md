# buffer3D

## URI
<[dataset_uri](../dataset.htm#URI)>/buffer3d[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[datasetBuffer3DResult](datasetBuffer3DResult.htm)
## 介绍
模型数据集进行三维缓冲区分析，该资源只针对模型数据集，获取指定模型数据集的三维缓冲区结果。目前支持三维点、三维线、三维面数据集。
对该资源发送POST请求，则可以创建一个三维缓冲区分析结果资源。
支持的方法：
- [GET](#GET 请求)：返回一个进行POST请求的表单。
- [POST](#POST 请求)：创建一个三维缓冲区分析结果资源。
- [HEAD](#HEAD 请求)：检查 buffer3D 资源是否存在，或权限是否可以访问 buffer3D 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/buffer3D/sp_ds_buffer3D.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialAnalysis-Pipe3D/restjsr/spatialanalyst/datasets/PipeLine3D%40Pipe3D/buffer3d.rjson
### ](../../../root.htm)GET 请求
返回一个进行POST请求的表单。
### POST 请求
创建一个三维缓冲区分析结果资源。
#### 请求参数
请求体中需传递如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sourceDatasetFilter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 过滤查询参数，包括属性过滤和ID过滤，只有满足条件的对象才参与三维缓冲区分析。 |
| param | [BufferAnalyst3DParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/BufferAnalyst3DParameter.html) | 【必填参数】三维缓冲区参数设置，包括是否为经纬度、缓冲结果类型、拐角类型、缓冲距离， 其中缓冲结果类型可选三维体、三维面，拐角类型可选圆角、方角、尖角 |
| resultSetting | [DatasetSpatialAnalyst3DResultSetting](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/DatasetSpatialQuery3DResultSetting.html) | 结果设置，包括结果数据集名称、最大返回记录、数据返回模式、是否覆盖已有数据。 对于数据返回模式，包括只返回数据集标识（DATASET_ONLY）、只返回记录集（RECORDSET_ONLY）和返回数据集标识和记录集（DATASET_AND_RECORDSET）三种模式，默认为只返回数据集标识。 请注意，当返回的结果数据量较大时，建议您使用只返回数据集标识模式返回数据，对返回的数据集可以进行其他空间分析操作。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| postResultType | [postResultType](file://E:/iServer_Help/doc/trunk/OnlineHelp/API/iServerJavaDoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceID | String | 分析结果资源的 ID。 |
| succeed | boolean | 分析是否成功。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对buffer3D资源：http://supermapiserver:8090/iserver/services/spatialAnalysis-Pipe3D/restjsr/spatialanalyst/datasets/PipeLine3D%40Pipe3D/buffer3d.rjson，操作对象选择为数据集，执行 POST 请求，请求参数如下：
{
"filterQueryParameter":{"attributeFilter":""}, "distance":1, "resultType":"BODY", "joinType":"ROUND"
}
则返回的 rjson 格式的资源描述如下：
{
"postResultType":"CreateChild",
"newResourceID":"3574f",
"succeed":true,
"newResourceLocation":"http://supermapiserver:8090/iserver/services/spatialAnalysis-Pipe3D/restjsr/spatialanalyst/datasets/PipeLine3D@Pipe3D/buffer3d/3574f"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 buffer3D 资源是否存在，或者客户端是否有权限访问 buffer3D 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 buffer3D 资源是否支持<format>格式的表述。
## 请参见
- [datasetBuffer3DResult](datasetBuffer3DResult.htm), [dataset](../dataset.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)