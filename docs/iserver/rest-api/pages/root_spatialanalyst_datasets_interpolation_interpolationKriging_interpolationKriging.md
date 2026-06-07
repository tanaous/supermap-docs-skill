# interpolationKriging

## URI
[<datasetInterpolation_uri>](../interpolation.htm#URI)/kriging[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasetInterpolation](../interpolation.htm)
## 子资源
[interpolationKrigingResult](interpolationKrigingResult.htm)
## 介绍
克吕金插值分析结果集资源，对该资源发送 POST 请求可以创建一个克吕金插值分析结果。
克吕金（Kriging）法为地统计学上一种空间数据内插处理方法，主要的目的是利用各数据点间变异数（variance）的大小来推求某一未知点与各已知点的权重关系，再由各数据点的值和其与未知点的权重关系推求未知点的值。Kriging 法最大的特色不仅是提供一个最小估计误差的预测值，并且可明确的指出误差值的大小。一般而言，许多地质参数，如地形面，本身即具有连续性，故在一段距离内的任两点必有空间上的关系。反之，在一不规则面上的两点若相距甚远，则在统计意义上可视为互为独立 (stastically indepedent)。这种随距离而改变的空间上连续性，可用半变异图 (semivariogram) 来表现。
因此，若想由已知的散乱点来推求某一未知点的值，则可利用半变异图推求各已知点与未知点的空间关系，即下图中的各个参数。然后，由此空间参数推求半变异数，由各数据点间的半变异数可推求未知点与已知点间的权重关系，进而推求出未知点的值。
!\[](../../../../../../../assets/images/root/spatialanalyst/datasets/kriging1.png)
- 
块金值（nugget）：当采样点间距为0时，理论上半变异函数值为0，但时间上两采样点非常接近时半变异函数值并不为0，即产生了上图所示的块金效应，对应的半变异函数值为块金值。块金值可能由于测量误差或者空间变异产生。
- 
基台值（sill）：随着采样点间距的不断增大，半变异函数的值趋向一个稳定的常数，该常数成为基台值。到达基台值后，半变异函数的值不再随采样点间距而改变，即大于此间距的采样点不再具有空间相关性。
- 
偏基台值：基台值与块金值的差值。
- 
自相关阈值（range）：也称变程，是半变异函数值达到基台值时，采样点的间距。超过自相关阈值的采样点不再具有空间相关性，将不对预测结果产生影响。
由上述可知，半变异函数是克吕金插值的关键，因此选择合适的半变异函数模型非常重要，SuperMap 提供了以下三种半变异函数模型：
- 
指数型（EXPONENTIAL）：适用于空间相关关系随样本间距的增加成指数递减的情况，其空间自相关关系在样本间距的无穷远处完全消失。
- 
球型（SPHERICAL）：适用于空间自相关关系随样本间距的增加而逐渐减少，直到超出一定的距离时空间自相关关系消失的情况。
- 
高斯型（GAUSSIAN）：适用于半变异函数值渐进地逼近基台值的情况。
半变异函数中，有一个关键参数即插值的字段值的期望（平均值），由于对于此参数的不同处理方法而衍生出了不同的 Kriging 方法。SuperMap 的差值功能基于以下三种常用 Kriging 算法：
- 
简单克吕金（Simple Kriging）：该方法假定用于插值的字段值的期望（平均值）已知的某一常数。
- 
普通克吕金（Kriging）：该方法假定用于插值的字段值的期望（平均值）未知且恒定。它利用一定的数学函数，通过对给定的空间点进行拟合来估算单元格的值，生成栅格数据集。它不仅可以生成一个表面，还可以给出预测结果的精度或者确定性的度量。因此，此方法计算精度较高，常用于地学领域。
- 
泛克吕金（Universal Kriging）：该方法假定用于插值的字段值的期望（平均值）是未知的变量。在样点数据中存在某种主导趋势且该趋势可以通过某一个确定的函数或者多项式进行拟合的情况下，适用泛克吕金插值法。
克吕金法的优点是以空间统计学作为其坚实的理论基础，物理含义明确；不但能估计测定参数的空间变异分布，而且还可以估算参数的方差分布。克吕金法的缺点是计算步骤较烦琐，计算量大，且变异函数有时需要根据经验人为选定。
支持的方法：
- [GET](#GET 请求)：html表述返回一个 POST 请求的表单，其他表述返回克吕金插值结果集列表。
- [POST](#POST 请求)：创建一个克吕金插值结果资源，相当于进行了一次插值分析。
- [HEAD](#HEAD 请求)：检查 interpolationKriging 资源是否存在，或权限是否可以访问 interpolationKriging 资源。
支持的表述格式：（rjson、json、jsonp、html、xml）。
## 资源层次
!\[](../../../../../../../assets/images/root/spatialanalyst/datasets/sp_ds_interpolationKriging.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/kriging.rjson
### ](../../../../root.htm)GET 请求
html表述返回一个 POST 请求的表单，其他表述返回克吕金插值结果集列表。
### POST 请求
创建一个克吕金插值结果资源，相当于进行了一次插值分析。
#### 请求参数
执行 POST 请求时，请求体需包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| type | [InterpolationAlgorithmType](../../../../../../iServerJavadoc/com/supermap/services/rest/commontypes/InterpolationAlgorithmType.html) | 克吕金插值的类型。 |
| mean | double | 【简单克吕金】 插值字段的平均值，即采样点插值字段值总和除以采样点数目。 |
| angle | double | 克吕金算法中旋转角度值。此角度值指示了每个查找邻域相对于水平方向逆时针旋转的角度。默认值为0。 |
| nugget | double | 克吕金算法中块金效应值。默认值为0。 |
| range | double | 克吕金算法中自相关阈值，单位与原数据集单位相同。默认值为0。 |
| sill | double | 克吕金算法中基台值。默认值为0。 |
| variogramMode | [VariogramMode](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/VariogramMode.html) | 克吕金插值时的半变函数类型，包括指数型（EXPONENTIAL）、球型（SPHERICAL）、高斯型（GAUSSIAN），默认为球型（SPHERICAL）。 用户所选择的半变函数类型会影响未知点的预测，特别是曲线在原处的不同形状有重要意义。曲线在原点处越陡，则较近领域对该预测值的影响就越大，因此输出表面就会越不光滑。 |
| exponent | [Exponent](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Exponent.html) | 【泛克吕金】 用于插值的样点数据中趋势面方程的阶数，可选值为 exp1、exp2，默认为 exp1。 |
| bounds | [Rectangle2D](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Rectangle2D.html) | 插值分析的范围，用于确定结果栅格数据集的范围。如果缺省，则默认为原数据集的范围。 鉴于此差值方法为内插方法，原数据集的范围内的插值结果才相对有参考价值，因此建议此参数不大于原数据集范围。 |
| searchMode | [SearchMode](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/SearchMode.html) | 插值运算时，查找参与运算点的方式，有固定点数查找、定长查找、块查找，简单克吕金和泛克吕金不支持块查找。 |
| expectedCount | int | 【固定点数查找】 设置待查找的点数，即参与差值运算的点数。默认为12。 【定长查找】 查找的最小点数，默认为12。 |
| searchRadius | double | 【定长查找】 参与运算点的查找范围。 |
| maxPointCountForInterpolation | int | 【块查找】 最多参与插值的点数。默认为200。 仅用于普通克吕金插值，简单克吕金和泛克吕金不支持块查找。 |
| maxPointCountInNode | int | 【块查找】 单个块内最多参与运算点数。默认为50。 仅用于普通克吕金插值，简单克吕金和泛克吕金不支持块查找。 |
| zValueFieldName | String | 用于进行插值分析的字段的名称，插值分析不支持文本类型的字段。 |
| zValueScale | double | 用于进行插值分析值的缩放比率，默认为1。 参加插值分析的值将乘以该参数值后再进行插值，也就是对进行插值分析的值进行统一的扩大或缩小。 |
| resolution | double | 插值结果栅格数据集的分辨率，即一个像元所代表的实地距离，与点数据集单位相同。该值不能超过待分析数据集的范围边长。 且该值设置时，应该考虑研究区域的大小，如果研究区域较大，而 resolution 又很小，则会影响运算效率。这种情况下可以对研究区域分块处理，得到结果栅格数据集后再进行拼接。 |
| filterQueryParameter | [QueryParameter](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/QueryParameter.html) | 属性过滤条件。对数据集中的点进行过滤，只有满足条件的点对象才参与分析。 |
| outputDatasetName | String | 插值分析结果数据集的名称。 |
| outputDatasourceName | String | 插值分析结果数据源的名称。 |
| pixelFormat | [PixelFormat](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/PixelFormat.html) | 指定结果栅格数据集存储的像素格式，支持的有 BIT8、BIT16、BIT32、DOUBLE、SINGLE、UBIT1、UBIT4、UBIT8、UBIT16、UBIT32。 |
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
对 interpolationKriging 资源执行 POST 请求，即对 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/kriging.rjson 提交请求体如下：
{
"type": "KRIGING",
"angle": 0,
"nugget": 30,
"range": 50,
"sill": 300,
"variogramMode": "EXPONENTIAL",
"searchMode": "QUADTREE",
"maxPointCountForInterpolation": 20,
"maxPointCountInNode": 5,
"pixelFormat": "BIT16",
"zValueFieldName": "AVG_TMP",
"zValueScale": 1,
"resolution": 3000,
"filterQueryParameter": {
"attributeFilter": ""
},
"outputDatasetName": "",
"outputDatasourceName": ""
}
则返回的 rjson 格式的响应信息如下：
{
"succeed": true,
"newResourceID": "93e9349897944f44ac08633fc722942b_291a19df41274c89bbd8aeddd64941aa",
"postResultType": "CreateChild",
"newResourceLocation": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/kriging/93e9349897944f44ac08633fc722942b_291a19df41274c89bbd8aeddd64941aa"
}
对 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation/kriging/93e9349897944f44ac08633fc722942b_291a19df41274c89bbd8aeddd64941aa.rjson，执行 GET 请求，即可获取克吕金插值分析结果的具体信息。请参见 [interpolationKrigingResult](interpolationKrigingResult.htm)。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 interpolationKriging 资源是否存在，或者客户端是否有权限访问 interpolationKriging 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 interpolationKriging 资源是否支持<format>格式的表述。
## 请参见
- [datasetInterpolation](../interpolation.htm)、[interpolationKrigingResult](interpolationKrigingResult.htm)
- [客户端构建 REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../resource_hierarchy.htm)