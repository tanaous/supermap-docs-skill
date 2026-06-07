# domain

## URI
[<dataset_uri>](../dataset.htm)/domain[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 介绍
domain资源描述了字段的值域信息。domain资源中包含当前数据集下所有设置了值域的字段，以及这些字段的值域信息（即取值范围），包括字段的名称、字段类型、值域类型和值域等。
值域类型包括CODE和RANGE两种类型。
- CODE为枚举类型，表示通过列举具体值来限定字段的取值。
- RANGE为范围类型，表示通过指定范围来限定字段的取值。
支持的方法：
- [GET](#GET 请求)：获取当前数据集所有字段的值域信息。
- [HEAD](#HEAD 请求)：检查 domain资源是否存在，或权限是否可以访问 domain 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/domain/D_domain.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/data-jingjin/rest/data/datasources/Jingjin/datasets/Landuse_R/domain.rjson
### ](../../../../../../root.htm)GET 请求
获取字段的值域信息。通过GET请求可获取到字段的名称、字段类型、值域类型以及值域等信息。
#### 请求参数
无
#### 响应结构
返回当前数据集中所有字段的值域信息，是由各字段值域信息组成的一个数组。其中每个字段值域信息的响应结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| discription | String | 值域的描述信息 |
| name | String | 值域的名称 |
| fieldName | String | 字段的名称 |
| type | [DomainType](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/DomainType.html) | 值域类型 |
| valueType | [FieldType](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/FieldType.html) | 值域的数据类型 |
| codeCount | int | 枚举的元素个数。当值域类型为CODE类型时，将返回该字段。 |
| codeInfos | [CodeInfo](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/CodeInfo.html)[] | 枚举的内容描述。当值域类型为CODE类型时，将返回该字段。 |
| rangeCount | int | 范围域的个数。当值域类型为RANGE类型时，将返回该字段。 |
| rangeInfos | [RangeInfo](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/RangeInfo.html)[] | 范围域内容的描述。当值域类型为RANGE类型时，将返回该字段。 |
其中， codeInfos 字段表示具体的枚举内容，结构可参见 [CodeInfo](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/CodeInfo.html) 类，具体参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| value | String | 枚举值，即字段的取值仅限在枚举范围内的几个值。 |
| valueType | [FieldType](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/FieldType.html) | 枚举值的字段类型。 |
| description | String | 枚举值的描述信息，在 iDesktopX 中对要素属性值进行限制的实际值 |
rangeInfo 字段表示指定的取值范围，结构可参见 [RangeInfo](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/RangeInfo.html) 类，具体参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| max | String | 指定的取值范围的最大值。 |
| min | String | 指定的取值范围的最小值。 |
| type | [RangeType](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/RangeType.html) | 取值范围的区间类型。例如： CLOSE_CLOSE，表示闭区间，形如：[min,max]，即大于等于最小值，小于等于最大值； CLOSE_OPEN，左闭右开区间，形如：[min,max)，即大于等于最小值，小于最大值。 |
| valueType | [FieldType](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/FieldType.html) | 枚举值的字段类型。 |
#### 响应示例
对domain资源执GET请求：
http://localhost:8090/iserver/services/data-jingjin/rest/data/datasources/Jingjin/datasets/Landuse_R/domain.rjson
则返回的结果如下：
[
{
"codeCount": 6,
"codeInfos": [
{
"value": "城市",
"valueType": "TEXT",
"description": "city"
},
{
"value": "旱地",
"valueType": "TEXT",
"description": "land"
},
{
"value": "水浇地",
"valueType": "TEXT",
"description": "waterland"
},
{
"value": "沙漠",
"valueType": "TEXT",
"description": "desert"
},
{
"value": "湖泊水库",
"valueType": "TEXT",
"description": "lake"
},
{
"value": "草地",
"valueType": "TEXT",
"description": "grassland"
}
],
"description": "",
"fieldName": "LANDTYPE",
"name": "LANDTYPE",
"type": "CODE",
"valueType": "TEXT"
},
{
"description": "",
"fieldName": "Area",
"name": "Area",
"rangeCount": 1,
"rangeInfos": [{
"max": "999999.0",
"min": "0.0",
"type": "CLOSE_OPEN",
"valueType": "SINGLE"
}],
"type": "RANGE",
"valueType": "SINGLE"
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断domain资源是否存在，或者客户端是否有权限访问domain资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断domain资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)
- [客户端构建 REST 请求](../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../../../../resource_hierarchy.htm)