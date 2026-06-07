# kernelDensity

## URI
<[datasetDensityAnalyst_uri](datasetDensityAnalyst.htm#URI)>/kernel[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasetDensityAnalyst](datasetDensityAnalyst.htm)
## 子资源
[kernelDensityResult](kernelDensityResult.htm)
## 介绍
核密度分析结果集资源。对该资源发送 POST 请求可以创建一个核密度分析结果资源。
核密度分析，即使用核函数来计算点或线邻域范围内的每单位面积量值。其结果是中间值大周边值小的光滑曲面，在邻域边界处降为0。
对于点对象，其核密度曲面与下方的平面所围成的空间的体积近似于此点的测量值；对于线对象，其核密度曲面与下方的平面所围成的空间的体积近似于此线的测量值与线长度的乘积。点或线的邻域叠加处，其密度值也相加。每个输出栅格的密度均为叠加在栅格上的所有核曲面值之和。
支持的方法：
- [GET](#GET 请求)：html表述返回一个 POST 请求的表单，其他表述返回核密度分析结果集列表。
- [POST](#POST 请求)：执行一次核密度分析，即创建一个核密度分析结果资源。
- [HEAD](#HEAD 请求)：检查 kernelDensity 资源是否存在，或权限是否可以访问 kernelDensity 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/Density/img/kernelDensity.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/densityanalyst/kernel.rjson
### ](../../../root.htm)GET 请求
html表述返回一个 POST 请求的表单，其他表述返回核密度分析结果集列表。
### POST 请求
执行一次核密度分析，即创建一个核密度分析结果资源。
#### 请求参数
请求体中传递参数如下表所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| bounds | Rectangle2D | 密度分析的范围，用于确定运行结果所得到的栅格数据集的范围。默认为当前数据集的范围。 |
| resultGridDatasetResolution | double | 【必填参数】 密度分析结果栅格数据的分辨率，单位与当前数据集相同。默认值为当前数据集的长宽中的最小值除500。 |
| searchRadius | double | 栅格邻域内用于计算密度的查找半径，单位与当前数据集相同。默认值为当前数据集的长宽中的最大值除30。 |
| fieldName | String | 【必填参数】 指定用于进行密度分析的测量值的字段名称。密度分析不支持文本类型的字段。 |
| targetDatasource | String | 指定的存储结果数据集的数据源，默认为当前分析的数据集所在的数据源。 |
| resultGridName | String | 指定的结果数据集。 |
| deleteExistResultDataset | boolean | 是否覆盖已存在的同名数据集。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | Boolean | 分析是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 kernelDensity 资源 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/densityanalyst/kernel.rjson，执行 POST 请求，传递 rjson 格式请求体如下：
{
"resultGridDatasetResolution": 3000,
"searchRadius": 2000,
"fieldName": "AVG_TMP",
"targetDatasource": "Interpolation",
"resultGridName": "test",
"deleteExistResultDataset": true
}
则返回的 rjson 格式响应结果如下：
{
"succeed": true,
"newResourceID": "6b7fe42a934c49fa93fe5b8b7541d2db_568ab41863944b739a73aae99fac5bfd",
"postResultType": "CreateChild",
"newResourceLocation": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/densityanalyst/kernel/6b7fe42a934c49fa93fe5b8b7541d2db_568ab41863944b739a73aae99fac5bfd"
}
其中，返回的子资源 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/densityanalyst/kernel/6b7fe42a934c49fa93fe5b8b7541d2db_568ab41863944b739a73aae99fac5bfd，即包含了核密度分析的结果数据集。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 kernelDensity 资源是否存在，或者客户端是否有权限访问 kernelDensity 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 kernelDensity 资源是否支持<format>格式的表述。
## 请参见
- [datasetDensityAnalyst](datasetDensityAnalyst.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)