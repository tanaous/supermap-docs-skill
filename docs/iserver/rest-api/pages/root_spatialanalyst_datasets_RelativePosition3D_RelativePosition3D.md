# RelativePosition3D

## URI
<[dataset_uri](../dataset.htm#URI)>/RelativePosition3D[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[datasetGetRelativePosition3DResult](datasetGetRelativePosition3DResult.htm)
## 介绍
基于数据集的三维空间查询结果集资源。对该资源发送POST请求，则可以创建一个三维空间查询结果资源，查询获得数据的空间关系。
支持的方法：
- [GET](#GET 请求)：返回一个进行POST请求的表单。
- [POST](#POST 请求)：创建一个三维空间查询结果资源。
- [HEAD](#HEAD 请求)：检查 RelativePosition3D 
资源是否存在，或权限是否可以访问 RelativePosition3D 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../../assets/images/root/spatialanalyst/datasets/RelativePosition3D/sp_ds_RelativePosition3D.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/spatialAnalysis-BIM2/restjsr/spatialanalyst/datasets/结构柱%408ExportModel/RelativePosition3D.rjson
### ](../../../root.htm)GET 请求
返回一个进行POST请求的表单。
### POST 请求
对资源执行 POST 请求，传递相关参数后，就创建了一个三维空间查询结果资源。
#### 请求参数
当操作对象是数据集时，请求体中需传递如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| operateDataset | String | 【必填参数】指定操作数据集进行三维空间查询 |
| operateDatasetFilter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 对操作数据集进行过滤，包括属性过滤和ID过滤，只有满足条件的对象才参与三维空间分析。 |
| sourceDatasetFilter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 对源数据集进行过滤，包括属性过滤和ID过滤，只有满足条件的对象才参与三维空间分析。 |
| resultSetting | [GeometrySpatialAnalystResultSetting](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/GeometrySpatialAnalystResultSetting.html) | 三维空间分析结果设置 |
当操作对象是几何面时，请求体中需传递如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| operateRegion | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 【必填参数】指定操作几何面进行三维空间查询 |
| bottomAltitude | double | 指定几何对象的底部高程值 |
| extendedHeight | double | 指定几何对象的拉伸高度 |
| sourceDatasetFilter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 对源数据集进行过滤，包括属性过滤和ID过滤，只有满足条件的对象才参与三维空间分析。 |
| resultSetting | [GeometrySpatialAnalystResultSetting](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/GeometrySpatialAnalystResultSetting.html) | 三维空间分析结果设置 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| postResultType | [postResultType](../../../../../iServerJavaDoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceID | String | 分析结果资源的 ID。 |
| succeed | boolean | 分析是否成功。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例1
对RelativePosition3D资源：http://supermapiserver:8090/iserver/services/spatialAnalysis-BIM2/restjsr/spatialanalyst/datasets/结构柱%408ExportModel/RelativePosition3D.rjson，操作对象选择为数据集，执行 
POST 请求，请求参数如下：
{
"operateDataset":"结构柱@8ExportModel",
"operateDatasetFilter":{"attributeFilter":""},
"sourceDatasetFilter":{"attributeFilter":""}
}
则返回的 rjson 格式的资源描述如下：
{
"postResultType":"CreateChild",
"newResourceID":"2fe735b026974a13a1bbf00ac710ddef_5462ef8fe01a456f9168537f48257747",
"succeed":true,
"newResourceLocation":"http://localhost:8090/iserver/services/spatialAnalysis-BIM2/restjsr/spatialanalyst/datasets/%E7%BB%93%E6%9E%84%E6%9F%B1@8ExportModel/RelativePosition3D/2fe735b026974a13a1bbf00ac710ddef_5462ef8fe01a456f9168537f48257747"
}
#### 响应示例2
对RelativePosition3D资源：http://supermapiserver:8090/iserver/services/spatialAnalysis-BIM2/restjsr/spatialanalyst/datasets/结构柱%408ExportModel/RelativePosition3D.rjson，操作对象选择为几何面，执行 
POST 请求，请求参数如下：
{
"operateRegion":{"type":"REGION", 
"points":[{"x":23, "y":23}, {"x":33, 
"y":35}, {"x":43, "y":22}]},
"bottomAltitude":"1",
"extendedHeight":"1",
"sourceDatasetFilter":{"attributeFilter":"", 
"ids":[16]}
}
则返回的 rjson 格式的资源描述如下：
{
"postResultType":"CreateChild",
"newResourceID":"2fe735b026974a13a1bbf00ac710ddef_77a16055c7c74b64b38a7c840b23317c",
"succeed":true,
"newResourceLocation":"http://localhost:8090/iserver/services/spatialAnalysis-BIM2/restjsr/spatialanalyst/datasets/%E7%BB%93%E6%9E%84%E6%9F%B1@8ExportModel/RelativePosition3D/2fe735b026974a13a1bbf00ac710ddef_77a16055c7c74b64b38a7c840b23317c"
}
###  
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 RelativePosition3D资源是否存在，或者客户端是否有权限访问 
RelativePosition3D资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 RelativePosition3D资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)，[datasetGetRelativePosition3DResult](datasetGetRelativePosition3DResult.htm)
- [客户端构建 
REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)