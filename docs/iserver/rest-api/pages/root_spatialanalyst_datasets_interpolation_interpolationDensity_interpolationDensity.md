# interpolationDensity

## URI
[<datasetInterpolation_uri>](../interpolation.htm#URI)/density[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasetInterpolation](../interpolation.htm)
## 子资源
[interpolationDensityResult](interpolationDensityResult.htm)
## 介绍
点密度插值分析结果集资源。对点数据集进行插值后，可以得到反映数据分布密度的栅格数据集。不同于其他插值方法的是，插值字段的含义为每个插值点在插值过程中的权重，插值结果反映的是原数据集数据点的分布密度。
对该资源发送 POST 请求可以创建一个点密度插值分析结果资源。
支持的方法：
- [GET](#GET 请求)：html表述返回一个 POST 请求的表单，其他表述返回点密度插值分析结果集列表。
- [POST](#POST 请求)：创建一个点密度插值结果资源，相当于进行了一次插值分析。
- [HEAD](#HEAD 请求)：检查 interpolationDensity 资源是否存在，或权限是否可以访问 interpolationDensity 资源。
支持的表述格式：（rjson、json、html、xml）。
## 资源层次
!\[](../../../../../../../assets/images/root/spatialanalyst/datasets/sp_ds_interpolationDensity.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/density.rjson
### ](../../../../root.htm)GET 请求
html表述返回一个 POST 请求的表单，其他表述返回点密度插值分析结果集列表。
### POST 请求
创建一个点密度插值结果资源，相当于进行了一次插值分析。
#### 请求参数
描述执行 POST 请求时，请求体需包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| searchRadius | double | 查找半径，即参与运算点的查找范围，与点数据集单位相同。计算某个位置的 Z 值时，会以该位置为圆心，以查找范围的值为半径，落在这个范围内的采样点都将参与运算。该值需要根据待插值点数据的分布状况和点数据集范围进行设置。 |
| pixelFormat | [PixelFormat](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/PixelFormat.html) | 指定结果栅格数据集存储的像素格式，支持的有 BIT8、BIT16、BIT32、DOUBLE、SINGLE、UBIT1、UBIT4、UBIT8、UBIT16、UBIT32。 |
| zValueFieldName | String | 存储用于进行插值分析的字段名称，插值分析不支持文本类型的字段。 含义为每个插值点在插值过程中的权重，可以将所有点此字段值设置为1，即所有点在整体插值中权重相同。 |
| zValueScale | double | 用于进行插值分析值的缩放比率，默认为1。 参加插值分析的值将乘以该参数值后再进行插值，也就是对进行插值分析的值进行统一的扩大或缩小。 |
| resolution | double | 插值结果栅格数据集的分辨率，即一个像元所代表的实地距离，与点数据集单位相同。该值不能超过待分析数据集的范围边长。 且该值设置时，应该考虑点数据集范围大小来取值，一般以结果栅格行列值（即结果栅格数据集范围除以分辨率）在500以内可以较好地体现密度走势。 |
| bounds | [Rectangle2D](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 插值分析的范围，用于确定结果栅格数据集的范围。如果缺省，则默认为原数据集的范围。 鉴于此插值方法为内插方法，原数据集的范围内的插值结果才相对有参考价值，因此建议此参数不大于原数据集范围。 |
| filterQueryParameter | [QueryParameter](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 属性过滤条件。对数据集中的点进行过滤，只有满足条件的点对象才参与分析。 |
| outputDatasetName | String | 插值分析结果数据集的名称。 |
| outputDatasourceName | String | 插值分析结果数据源的名称。 |
| clipParam | [ClipParameter](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/ClipParameter.html) | 对插值分析结果进行裁剪的参数。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | Boolean | 查询是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 interpolationDensity 资源执行 POST 请求，即对 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/density.rjson 提交请求体如下：
{
"searchRadius": "100000",
"pixelFormat": "BIT16",
"zValueFieldName": "AVG_TMP",
"resolution": 3000,
"filterQueryParameter": {
"attributeFilter": ""
},
"outputDatasetName": "test_Density",
"outputDatasourceName":"Interpolation"
}
则返回的 rjson 格式的响应信息如下：
{
"succeed": true,
"newResourceID": "mi92arb7_98450daa266f490ab20c9fb68a08b893",
"postResultType": "CreateChild",
"newResourceLocation": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/density/mi92arb7_98450daa266f490ab20c9fb68a08b893"
}
对 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/density/mi92arb7_98450daa266f490ab20c9fb68a08b893.rjson ,执行 GET 请求，即可获取点密度插值分析结果的具体信息。请参见 [interpolationResult](../interpolationIDW/interpolationIDWResult.htm)。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 interpolationDensity 资源是否存在，或者客户端是否有权限访问 interpolationDensity 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 interpolationDensity 资源是否支持<format>格式的表述。
## 请参见
- [datasetInterpolation](../interpolation.htm)、[interpolationDensityResult](interpolationDensityResult.htm)
- [客户端构建 REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../resource_hierarchy.htm)