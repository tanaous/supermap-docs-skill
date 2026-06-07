# statistic

## URI
[<field_uri>](field.htm#URI)/{statisticMode}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[field](field.htm)
## 介绍
statistic 资源表示对[<field_uri>](field.htm#URI)标识的字段的统计。所使用的统计方式由 URI 中的 {statisticMode} 决定。
关于本资源的使用方法，可参考开发指南：[字段的统计](../../../../../../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Data_Opr/FieldStatistic.htm)。
支持的方法：
- [GET](#GET 请求)：对数据集中的一个字段进行统计。
- [HEAD](#HEAD 请求)：检查 statistic 资源是否存在，或权限是否可以访问 statistic 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/fields/field/D_statistic.png) 
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，World 是服务器上的数据源名，Ocean 是 World 数据源里的一个数据集，WRLD30_ID 是 Ocean 数据集中的一个字段，AVERAGE 表明本示例 statistic 资源是对 WRLD30_ID 字段平均值的统计。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/WRLD30_ID/AVERAGE.rjson
### ](../../../../../../../root.htm)GET 请求
对数据集中的一个字段进行统计。
#### 请求参数
对 statistic 资源执行 GET 请求，对字段进行统计，需要在 URI 中包含统计方式的信息，即 URI 中的 {statisticMode}，该参数在 ? 之前，其可能的取值如下：
| 枚举值 | 说明 |
| --- | --- |
| AVERAGE | 统计所选字段的平均值。 |
| MAX | 统计所选字段的最大值。 |
| MIN | 统计所选字段的最小值。 |
| STDDEVIATION | 统计所选字段的标准差。 |
| SUM | 统计所选字段的总和。 |
| VARIANCE | 统计所选字段的方差。 |
#### 响应结构
对 statistic 资源执行 GET 请求，进行字段的统计，返回的请求体的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| mode | StatisticMode | 字段统计的方法。 |
| result | double | 字段统计的结果。 |
#### 示例
对示例 URI：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/WRLD30_ID/AVERAGE.rjson 执行 GET 请求，统计 WRLD30_ID 字段的平均值，返回 rjson 格式的表述如下：
{
"mode": "AVERAGE",
"result": 36.5
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 statistic 资源是否存在，或者客户端是否有权限访问 statistic 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 statistic 资源是否支持<format>格式的表述。
## 请参见
- [field](field.htm)
- [客户端构建 REST 请求](../../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../../../../resource_hierarchy.htm)