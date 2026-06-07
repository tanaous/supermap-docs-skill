# clip

## URI
<[dataset_uri](../dataset.htm#URI)>/clip[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[datasetClipResult](datasetclipResult.htm)
## 介绍
模型数据集进行裁剪，该资源只针对模型数据集，获取指定模型数据集的裁剪结果。
对该资源发送POST请求，则可以创建一个模型数据集裁剪结果资源。
支持的方法：
- [GET](#GET 请求)：返回一个进行POST请求的表单。
- [POST](#POST 请求)：创建一个模型数据集裁剪结果资源。
- [HEAD](#HEAD 请求)：检查 clip 资源是否存在，或权限是否可以访问 clip 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/clip/sp_ds_clip.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 json 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialAnalysis-BIM/restjsr/spatialanalyst/datasets/结构框架%40管廊0629/clip.json
### ](../../../root.htm)GET 请求
返回一个进行POST请求的表单。
### POST 请求
创建一个模型数据集裁剪结果资源。
#### 请求参数
请求体中需传递如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sourceDataset | String | 模型数据集名称。 |
| sourceDatasetFilter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 可选参数，过滤查询参数，包括属性过滤和ID过滤，只有满足条件的对象才能进行裁剪。 |
| clipRegions | [Geometry[]](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 裁剪面数组，支持Region、Region3D、RegionEPS三种类型。 |
| clipType | [ClipType](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ClipType.html) | 模型数据集裁剪类型，包括保留内部、保留外部两种裁剪类型。 |
| constraintType | [ConstraintType](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ConstraintType.html) | 约束类型，包括软约束、硬约束类型。 |
| resultSetting | [DatasetSpatialAnalyst3DResultSetting](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/DatasetSpatialAnalyst3DResultSetting.html) | 结果设置，包括结果数据集名称、最大返回记录、数据返回模式、是否覆盖已有数据。 对于数据返回模式，包括只返回数据集标识（DATASET_ONLY）、只返回记录集（RECORDSET_ONLY）和返回数据集标识和记录集（DATASET_AND_RECORDSET）三种模式，默认为只返回数据集标识。 请注意，当返回的结果数据量较大时，建议您使用只返回数据集标识模式返回数据，对返回的数据集可以进行其他空间分析操作。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| postResultType | [postResultType](../../../../../iServerJavaDoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceID | String | 分析结果资源的 ID。 |
| succeed | boolean | 分析是否成功。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对clip资源：http://supermapiserver:8090/iserver/services/spatialAnalysis-BIM/restjsr/spatialanalyst/datasets/结构框架%40管廊0629/clip.json，操作对象选择为模型数据集，执行 POST 请求，请求参数如下：
{
"filterQueryParameter":{"attributeFilter":""}, "clipRegions":[{"type":"REGION3D", "points":[{"x":120.2124, "y":40.2, "z":0}, {"x":120.2124, "y":39.2, "z":0}, {"x":120.2224, "y":40.2, "z":0}]}, {"type":"REGION3D", "points":[{"x":120.2124, "y":38.2, "z":0}, {"x":120.2124, "y":37.2, "z":0}, {"x":120.2224, "y":38.2, "z":0}]}], "clipType":"KEEPINSIDE", "constraintType":"SOFTCONSTRAINT"
}
则返回的 json 格式的资源描述如下：
{
"postResultType":"CreateChild",
"newResourceID":"f554f35e301649468ef763c3a88b3687_9631b78d9d7c46c4ac310ffa8a55542e",
"succeed":true,
"newResourceLocation":"http://localhost:8090/iserver/services/spatialAnalysis-BIM/restjsr/spatialanalyst/datasets/%E7%BB%93%E6%9E%84%E6%A1%86%E6%9E%B6@%E7%AE%A1%E5%BB%8A0629/clip
/f554f35e301649468ef763c3a88b3687_9631b78d9d7c46c4ac310ffa8a55542e"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 clip 资源是否存在，或者客户端是否有权限访问 clip 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 clip 资源是否支持<format>格式的表述。
## 请参见
- [datasetClipResult](datasetclipResult.htm)，[dataset](../dataset.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)