# interpolationRBF

## URI
<datasetInterpolation_uri>/rbf[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasetInterpolation](../interpolation.htm)
## 子资源
[interpolationRBFResult](interpolationRBFResult.htm)
## 介绍
样条插值（样条插值法）是使用径向基函数进行曲面逼近的一种方法。该方法假设变化是平滑的，它有两个特点： 1、表面必须精确通过采样点； 2、表面必须有最小曲率。样条插值在利用大量采样点创建有视觉要求的平滑表面方面具有优势，但难以对误差进行估计，如样点在较短的水平距离内表面值发生急剧变化，或存在测量误差及具有不确定性时，不适合使用此算法。
对该资源发送 POST 请求可以创建一个样条插值分析结果资源。
支持的方法：
- [GET](#GET 请求)：html表述返回一个 POST 请求的表单，其他表述样条插值分析集列表。
- [POST](#POST 请求)：创建一个样条插值结果资源，相当于进行了一次插值分析。
- [HEAD](#HEAD 请求)：检查 interpolationRBF 资源是否存在，或权限是否可以访问 interpolationRBF 资源。
支持的表述格式：（rjson、json、jsonp、html、xml）。
## 资源层次
!\[](../../../../../../../assets/images/root/spatialanalyst/datasets/sp_ds_interpolationRBF.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/rbf.rjson
### ](../../../../root.htm)GET 请求
html表述返回一个 POST 请求的表单，其他表述样条插值分析集列表。
### POST 请求
创建一个样条插值结果资源，相当于进行了一次插值分析。
#### 请求参数
描述执行 POST 请求时，请求体需包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| smooth | double | 光滑系数，值域为 0到1，默认值约为0.1，常用取值如0、0.001、0.01、0.1、和0.5。 该值表示插值函数曲线与点的逼近程度，此数值越大，函数曲线与点的偏差越大，反之越小。 |
| tension | double | 张力系数，默认为40，常用取值如0、1、5和10。 用于调整结果栅格数据表面的特性，张力越大，插值时每个点对计算结果影响越小，反之越大。 |
| bounds | [Rectangle2D](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 插值分析的范围，用于确定结果栅格数据集的范围。如果缺省，则默认为原数据集的范围。 鉴于此差值方法为内插方法，原数据集的范围内的插值结果才相对有参考价值，因此建议此参数不大于原数据集范围。 |
| searchMode | [SearchMode](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/SearchMode.html) | 插值运算时，查找参与运算点的方式，有固定点数查找、定长查找、块查找。 |
| expectedCount | int | 【固定点数查找】 设置待查找的点数，即参与差值运算的点数。默认为12。 |
| searchRadius | double | 【定长查找】 参与运算点的查找范围。 |
| maxPointCountForInterpolation | int | 【块查找】 最多参与插值的点数。默认为200。 |
| maxPointCountInNode | int | 【块查找】 单个块内最多参与运算点数。默认为50。 |
| zValueFieldName | String | 用于进行插值分析的字段的名称，插值分析不支持文本类型的字段。 |
| zValueScale | double | 用于进行插值分析值的缩放比率，默认为1。 参加插值分析的值将乘以该参数值后再进行插值，也就是对进行插值分析的值进行统一的扩大或缩小。 |
| resolution | double | 插值结果栅格数据集的分辨率，即一个像元所代表的实地距离，与点数据集单位相同，建议该值不超过待分析数据集的范围边长。 且该值设置时，应该考虑研究区域的大小，如果研究区域较大，而 resolution 又很小，则会影响运算效率。这种情况下可以对研究区域分块处理，得到结果栅格数据集后再进行拼接。 |
| filterQueryParameter | [QueryParameter](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 属性过滤条件。对数据集中的点进行过滤，只有满足条件的点对象才参与分析。 |
| outputDatasetName | String | 插值分析结果数据集的名称。 |
| outputDatasourceName | String | 插值分析结果数据源的名称。 |
| pixelFormat | [PixelFormat](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/PixelFormat.html) | 指定结果栅格数据集存储的像素格式，支持的有 BIT8、BIT16、BIT32、DOUBLE、SINGLE、UBIT1、UBIT4、UBIT8、UBIT16、UBIT32。 |
| clipParam | [ClipParameter](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ClipParameter.html) | 对插值分析结果进行裁剪的参数。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 查询是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 interpolationDensity 资源执行 POST 请求，即对 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/rbf.rjson 提交请求体如下：
{
"smooth": 0.1,
"tension": 40,
"searchMode": "QUADTREE",
"maxPointCountForInterpolation": 20,
"maxPointCountInNode": 5,
"pixelFormat": "BIT16",
"zValueFieldName": "AVG_TMP",
"resolution": 3000,
"filterQueryParameter": {
"attributeFilter": ""
},
"outputDatasetName": "test_rbf",
"outputDatasourceName":"Interpolation"
}
则返回的 rjson 格式结果如下：
{
"succeed": true,
"newResourceID": "7akwbldn_c6ce72973e9c43c487633d61a6add313",
"postResultType": "CreateChild",
"newResourceLocation": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/rbf/7akwbldn_c6ce72973e9c43c487633d61a6add313"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 interpolationRBF 资源是否存在，或者客户端是否有权限访问 interpolationRBF 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 interpolationRBF 资源是否支持<format>格式的表述。
## 请参见
- [datasetInterpolation](../interpolation.htm)、[interpolationRBFResult](interpolationRBFResult.htm)
- [客户端构建 REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../resource_hierarchy.htm)