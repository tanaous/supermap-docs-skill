# datasetMinDistanceResults

## URI
<[dataset_uri](../dataset.htm#URI)>/mindistance[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[datasetMinDistanceResult](datasetMinDistanceResult.htm)
## 介绍
最近距离计算的结果集资源。最近距离计算，即求算“被计算数据集”中每一个要素到“参考数据集”中在查询范围内的所有要素的距离中的最小值。“被计算数据集”目前仅支持二维点数据集，“参考数据集”可以是二维点、线、面数据集或二维网络数据集。
支持的方法：
- [GET](#GET 请求)：获取 POST 请求的表单。
- [POST](#POST 请求)：创建一个最近距离计算结果资源。
- [HEAD](#HEAD 请求)：检查 datasetMinDistanceResults 资源是否存在，或权限是否可以访问 datasetMinDistanceResults 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/datasetMinDistanceResults/sp_ds_datasetMinDistanceResults.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/mindistance.rjson
### ](../../../root.htm)GET 请求
获取一个 POST 请求的表单。
### POST 请求
对资源执行 POST 请求，传递相关参数后，就创建了一个最近距离计算结果资源，相当于进行了最近距离计算。
#### 请求参数
请求体中需传递如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| inputFilterQueryParameter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 【可选参数】 对被计算数据集的要素进行过滤的属性过滤条件。只有满足此条件的要素才参与最近距离计算。 |
| referenceDatasetName | String | 【必选参数】 参考数据集的名称。可以是二维点、线、面数据集或二维网络数据集 |
| referenceFilterQueryParameter | [QueryParameter](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 【可选参数】  对参考数据集中的要素进行过滤的属性过滤条件。不设置时默认为 null，即以参考数据集中的所有要素为参考要素进行计算。 |
| createResultDataset | boolean | 是否创建结果数据集。 |
| resultDatasetName | String | 结果数据集名称。 |
| resultDatasourceName | String | 结果数据集所在数据源的名称。 |
| minDistance | double | 【必选参数】 指定的查询范围的最小距离。取值范围为大于或等于 0。单位与被计算记录集所属数据集的单位相同。 |
| maxDistance | double | 【必选参数】 指定的查询范围的最大距离。取值范围为大于 0 的值及 -1。当设置为 -1 时，表示不限制最大距离。单位与被计算记录集所属数据集的单位相同。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 分析是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [postResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 mindistance 资源：http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/mindistance.rjson，执行 POST 请求，请求参数如下：
{
"referenceDatasetName":"Bounds@Interpolation",
"createResultDataset":true,
"minDistance":"0",
"maxDistance":"-1",
"resultDatasetName":"minDistanceBounds",
"resultDatasourceName":"Interpolation"
}
则返回的 rjson 格式的资源描述如下：
{
"succeed":true,
"newResourceID":"mvrpzwln_e6b1f1cbcd5a49faa580349a741bca92",
"postResultType":"CreateChild",
"newResourceLocation":"http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/mindistance/mvrpzwln_e6b1f1cbcd5a49faa580349a741bca92"
}
对 http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/mindistance/mvrpzwln_e6b1f1cbcd5a49faa580349a741bca92执行 GET 请求，即可获取最近距离计算的具体信息。请参见[datasetMinDistanceResult](datasetMinDistanceResult.htm)。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetMinDistanceResults 资源是否存在，或者客户端是否有权限访问 datasetMinDistanceResults 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetMinDistanceResults 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)，[datasetMinDistanceResult](datasetMinDistanceResult.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)