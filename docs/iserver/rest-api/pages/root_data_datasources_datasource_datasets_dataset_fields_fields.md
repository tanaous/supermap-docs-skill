# fields

## URI
[<dataset_uri>](../dataset.htm#URI)/fields[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[field](field/field.htm)
## 介绍
fields 资源表示一个数据集中所有属性字段（field）的集合。
通过对 fields 资源执行 GET 请求可以获取数据集中的字段信息列表，对 fields 资源执行 POST 请求可以在空数据集中添加一个字段。注意：因为对非空数据集的字段操作是不安全的，所以仅支持在空数据集中进行字段添加。
SuperMap 的数据集属性表中的属性字段分为系统字段和非系统字段。系统字段是用户创建一个新的数据集时默认生成的字段，字段本身不能进行编辑。非系统字段即用户创建的字段，用户可以编辑字段和字段的内容。不同类型数据集的系统字段不完全相同，但所有的系统字段都以英文字母“SM”开头。下面的表格以 UDB 文件型数据源引擎为例，列出了不同类型数据集的系统字段。
| 数据集类型 | 系统字段 |
| --- | --- |
| 点数据集 | SMID、SMX、SMY、SMLIBTIL、SMGEOMETRYSIZE |
| 线数据集 | SMID、SMLENGTH、SMSDRIW、SMSDRIN、SMSDRIE、SMSDRIS、SMTOPOERROR、SMGEOMETRYSIZE |
| 面数据集 | SMID、SMSDRIW 、SMSDRIN、SMSDRIE、SMSDRIS、SMARE、SMPERIMETER、SMGEOMETRYSIZE |
| 文本数据集 | SMID、SMSDRIW、SMSDRIN、SMSDRIE、SMSDRIS、SMGEOMETRYSIZE |
| CAD数据集 | SMID、SMSDRIW、SMSDRIN、SMSDRIE、SMSDRIS、SMGEOTYPE、SMLIBTIL、SMGEOMETRYSIZE |
| 三维点数据集 | SMID、SMX、SMY、SMZ、SMGEOMETRYSIZE |
| 三维线数据集 | SMID、SMLENGTH、SMSDRIW、SMSDRIN、SMSDRIE、SMSDRIS、SMTOPOERROR、SMGEOMETRYSIZE |
| 三维面数据集 | SMID、SMSDRIW 、SMSDRIN、SMSDRIE、SMSDRIS、SMARE、SMPERIMETER、SMGEOMETRYSIZE |
支持的方法：
- [GET](#GET 请求)：获取字段信息集合。
- [POST](#POST 请求)：添加一个字段。
- [HEAD](#HEAD 请求)：检查 fields 资源是否存在，或权限是否可以访问 fields 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/fields/D_fields.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，World 是数据源名，Ocean 是 World 中的一个数据集名。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/world/datasets/name/Ocean/fields.rjson
### ](../../../../../../root.htm)GET 请求
获取字段信息集合。其中集合中的单个元素（即单个字段信息）包括字段名称，字段类型，字段别名，字段默认值，字段是否允许为空，字段最大长度，是否允许长度为零，字段最大长度等。
#### 请求参数
对 fields 资源执行 GET 请求，可在 URL 中添加如下参数：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| returnAll | boolean | 是否返回所有属性字段的详细描述信息。当为 false 时，仅返回字段的URL集合以及字段名称集合。默认为false。 |
#### 响应结构
对 fields 资源执行 GET 请求，返回的响应体的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| fieldNames | List<String> | 字段名称列表。 |
| childUriList | List<String> | 字段信息（field 资源）访问路径列表。 |
| name | String | 字段名称。唯一标识一个字段，没有重名。 |
| caption | String | 字段别名，不同的字段可以有相同的别名。 |
| type | FieldType | 字段类型。 |
| defaultValue | String | 字段的默认值。 |
| isRequired | boolean | 是否为必填字段。true 表示是必填字段，false 表示非必填字段。 |
| isSystemField | boolean | 是否为 SuperMap 系统字段，true 表示是 SuperMap 系统字段。 SuperMap 系统字段是以 SM 为前缀的字段，SMUserID 除外。 |
| isZeroLengthAllowed | boolean | 是否允许零长度。 |
| maxLength | int | 字段的最大长度。 |
#### 示例1
对示例 fields 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields.rjson 执行 GET 请求，获取 World 数据源 Ocean 数据集中的字段信息集合，rjson 格式的资源表述如下：
{
"childUriList": [
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMID",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMSDRIW",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMSDRIN",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMSDRIE",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMSDRIS",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMUSERID",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMAREA",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMPERIMETER",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMGEOMETRYSIZE",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/WRLD30_ID"
],
"fieldNames": [
"SMID",
"SMSDRIW",
"SMSDRIN",
"SMSDRIE",
"SMSDRIS",
"SMUSERID",
"SMAREA",
"SMPERIMETER",
"SMGEOMETRYSIZE",
"WRLD30_ID"
]
}
#### 示例2
对示例 fields 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields.rjson?returnAll=true 执行 GET 请求，获取 World 数据源 Ocean 数据集中的字段的详细描述信息，rjson 格式的资源表述如下：
[
{
"caption": "SmID",
"defaultValue": "",
"isRequired": true,
"isSystemField": true,
"isZeroLengthAllowed": true,
"maxLength": 4,
"name": "SmID",
"type": "INT32"
},
{
"caption": "SmSdriW",
"defaultValue": "0",
"isRequired": true,
"isSystemField": true,
"isZeroLengthAllowed": true,
"maxLength": 4,
"name": "SmSdriW",
"type": "SINGLE"
},
{
"caption": "SmSdriN",
"defaultValue": "0",
"isRequired": true,
"isSystemField": true,
"isZeroLengthAllowed": true,
"maxLength": 4,
"name": "SmSdriN",
"type": "SINGLE"
},
{
"caption": "SmSdriE",
"defaultValue": "0",
"isRequired": true,
"isSystemField": true,
"isZeroLengthAllowed": true,
"maxLength": 4,
"name": "SmSdriE",
"type": "SINGLE"
},
{
"caption": "SmSdriS",
"defaultValue": "0",
"isRequired": true,
"isSystemField": true,
"isZeroLengthAllowed": true,
"maxLength": 4,
"name": "SmSdriS",
"type": "SINGLE"
},
{
"caption": "SmUserID",
"defaultValue": "0",
"isRequired": true,
"isSystemField": false,
"isZeroLengthAllowed": true,
"maxLength": 4,
"name": "SmUserID",
"type": "INT32"
},
{
"caption": "SmArea",
"defaultValue": "0",
"isRequired": true,
"isSystemField": true,
"isZeroLengthAllowed": true,
"maxLength": 8,
"name": "SmArea",
"type": "DOUBLE"
},
{
"caption": "SmPerimeter",
"defaultValue": "0",
"isRequired": true,
"isSystemField": true,
"isZeroLengthAllowed": true,
"maxLength": 8,
"name": "SmPerimeter",
"type": "DOUBLE"
},
{
"caption": "SmGeometrySize",
"defaultValue": "0",
"isRequired": false,
"isSystemField": true,
"isZeroLengthAllowed": true,
"maxLength": 4,
"name": "SmGeometrySize",
"type": "INT32"
},
{
"caption": "WRLD30_ID",
"defaultValue": "",
"isRequired": false,
"isSystemField": false,
"isZeroLengthAllowed": true,
"maxLength": 4,
"name": "WRLD30_ID",
"type": "INT32"
}
]
### POST 请求
添加一个字段。注：由 PostGIS 服务、shapefile 发布的数据服务不支持增加字段。
#### 请求参数
对 fields 资源执行 POST 请求，给空数据集添加一个新的字段，需要在请求体中包含要创建的字段的信息，参数结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 字段名称。唯一标识一个字段，没有重名。 |
| caption | String | 字段别名，不同的字段可以有相同的别名。 |
| type | FieldType | 字段类型。 |
| defaultValue | String | 字段的默认值。 |
| isRequired | boolean | 是否为必填字段。true 表示是必填字段，false 表示非必填字段。 |
| isSystemField | boolean | 是否为 SuperMap 系统字段，true 表示是 SuperMap 系统字段。
SuperMap 系统字段是以 SM 为前缀的字段，SMUserID 除外。 |
| isZeroLengthAllowed | boolean | 是否允许零长度。 |
| maxLength | int | 字段的最大长度。 |
#### 响应结构
对 fields 资源执行 POST 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 操作是否成功。 |
| newResourceID | String | 新创建的字段资源的 ID。 |
| newResourceLoaction | String | 新创建的字段资源的 URI。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
#### 示例
示例 fields 资源对应的数据集 Ocean 非空，所以不能执行 POST 请求，添加新的字段。设 World 数据源中，有空数据集资源（dataset 资源）URI 如下：
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/RestCreate.rjson
则可以对该数据集对应的 fields 资源（即：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/RestCreate/fields.rjson）执行 POST 请求，添加新的字段，POST 请求体中的参数如下：
{
"isZeroLengthAllowed": "false",
"maxLength": "0",
"isRequired": "false",
"name": "value",
"caption": "one",
"type": "INT32",
"defaultValue": "null",
"isSystemField": "false"
}
在添加成功的情况下，返回 rjson 格式的操作结果的表述如下：
{
"newResourceID": "value",
"newResourceLocation": "http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/RestCreate/fields/value.rjson",
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 fields 资源是否存在，或者客户端是否有权限访问 fields 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 fields 资源是否支持<format>格式的表述。
## 请参见
- [field](field/field.htm)，[dataset](../dataset.htm)
- [客户端构建 REST 请求](../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../../../resource_hierarchy.htm)