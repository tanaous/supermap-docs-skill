# datasetDensityAnalyst

## URI
<[dataset_uri](../dataset.htm#URI)>/densityanalyst[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[kernelDensityAnalyst](kernelDensity.htm)
## 介绍
密度分析根资源，密度分析的入口。可计算每个输出栅格像元周围圆形邻域内指定的点或线对象的密度。 密度分析，在某种意义上来说，相当于在表面上将输入的点线对象的测量值散开来，将每个点或线对象的测量值分布在整个研究区域，并计算输出栅格中每个像元的密度值。
支持的方法：
- [GET](#GET 请求)：获取当前数据集所支持的密度分析方法。
- [HEAD](#HEAD 请求)：检查 datasetDensityAnalyst 
资源是否存在，或权限是否可以访问 datasetDensityAnalyst 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../../assets/images/root/spatialanalyst/datasets/Density/img/datasetDensityAnalyst.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP%40Interpolation/densityanalyst.rjson
### ](../../../root.htm)GET 请求
获取当前数据集所支持的密度分析方法。
#### 响应结构
返回当前数据集所支持的密度分析方法子资源信息列表，每个子资源包含的信息如下表所示。 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | string | 子资源的名称。 |
| path | string | 子资源的 URI 路径。 |
| resourceConfigID | string | 在资源配置文件中的 ID。 |
| resourceType | [ResourceType](../../../../../iServerJavadoc/com/supermap/services/rest/commontypes/ResourceType.html) | 资源的类型。 |
| supportedMediaTypes | string[] | 支持的表述类型。 |
#### 响应示例
对 datasetDensityAnalyst 资源 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/densityanalyst.rjson，执行 Get 请求，则返回的 rjson 格式相应结果如下：
[{
"name": "kernelDensity",
"path": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/densityanalyst/kernel",
"resourceConfigID": 
null,
"resourceType": null,
"supportedMediaTypes": 
null
}]
###  HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetDensityAnalyst 资源是否存在，或者客户端是否有权限访问 
datasetDensityAnalyst 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetDensityAnalyst 
资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)、[kernelDensity](kernelDensity.htm)
- [客户端构建 
REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)