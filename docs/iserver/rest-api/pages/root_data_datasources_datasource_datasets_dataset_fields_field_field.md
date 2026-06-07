# field

## URI
- 
[<fields_uri>](../fields.htm#URI)/{fieldName}[.<format>]
- 
[<fields_uri>](../fields.htm#URI)/{fieldIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[DELETE](#DELETE 请求)、[HEAD](#HEAD 请求)
## 父资源
[fields](../fields.htm)
## 子资源
[statistic](statistic.htm)
## 介绍
field 资源表示一个数据集中的一个字段。如 URI 中所示，使用 {fieldName}或{fieldIndex}来访问一个字段 。注意针对字段的修改，创建和删除只能在空数据集中进行，因为对非空数据集的字段操作是不安全的，所以不支持。
支持的方法：
- [GET](#GET 请求)： 获取字段信息。
- [PUT](#PUT 请求)：创建或者修改字段信息。
- [DELETE](#DELETE 请求)：删除字段。
- [HEAD](#HEAD 请求)：检查 field 资源是否存在，或权限是否可以访问 field 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
注：由 PostGIS 服务、shapefile 发布的数据服务不支持增加、删除、修改字段。
## 资源层次
!\[](../../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/fields/field/D_field.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，World 是数据源名，Ocean 是 World 数据源中的数据集名，SMID 是 Ocean 数据集中的字段名。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMID.rjson
### ](../../../../../../../root.htm)GET 请求
获取字段信息。字段的信息包括：字段名称，字段类型，字段别名，字段默认值，字段是否允许为空，字段最大长度，是否允许长度为零等。
#### 响应结构
对 field 资源执行 GET 请求，返回的字段信息的表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 字段名称。唯一标识一个字段，没有重名。 |
| caption | String | 字段别名，不同的字段可以有相同的别名。 |
| type | FieldType | 字段类型。 |
| defaultValue | String | 字段的默认值。 |
| isRequired | boolean | 是否为必填字段。true 表示是必填字段，false 表示非必填字段。 |
| isSystemField | boolean | 是否为 SuperMap 系统字段，true 表示是 SuperMap 系统字段。 SuperMap 系统字段是以 SM 为前缀的字段，SMUserID 除外。 |
| isZeroLengthAllowed | boolean | 是否允许零长度。 |
| maxLength | int | 字段的最大长度。 |
#### 示例
对示例 field 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMID.rjson 执行 GET 请求，获取 Ocean 数据集中 SMID 字段的 rjson 格式的表述如下：
{
"childUriList": [
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMID/MAX",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMID/MIN",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMID/AVERAGE",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMID/STDDEVIATION",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMID/SUM",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean/fields/SMID/VARIANCE"
],
"fieldInfo": {
"caption": "SmID",
"defaultValue": "",
"isRequired": true,
"isSystemField": true,
"isZeroLengthAllowed": true,
"maxLength": 4,
"name": "SMID",
"type": "INT32"
}
}
### PUT 请求
在空数据集中创建一个新的字段，或修订空数据集的字段。
#### 请求参数
对 field 资源执行 PUT 请求，需要在“?”前传递 URI 参数{fieldName}，以及相应的请求体参数。
URI 中的参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| {fieldName} | String | 【必填参数】 待修改或待创建的字段名称 |
需要在 PUT 请求体中包含相应的字段信息，即传入以下参数：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 【必填参数】 字段名称。唯一标识一个字段，不能重名。如果修改字段，则本参数不能修改；如果创建新字段，则应该与{fieldName}一致。 |
| caption | String | 【必填参数】 字段别名，不同的字段可以有相同的别名，默认为与字段名相同。 |
| type | FieldType | 【必填参数，且不可更改】 字段类型。 |
| defaultValue | String | 【必填参数】 字段的默认值。 |
| isRequired | boolean | 【必填参数，且不可更改】 是否为必填字段。true 表示是必填字段，false 表示非必填字段，默认为 false。 |
| isSystemField | boolean | 【必填参数，且不可更改】 是否为 SuperMap 系统字段，true 表示是 SuperMap 系统字段，默认为 false。 SuperMap 系统字段是以 SM 为前缀的字段，SMUserID 除外。 |
| isZeroLengthAllowed | boolean | 【必填参数，且不可更改】 是否允许零长度，默认为 false，即该字段不允许长度为零。 |
| maxLength | int | 【必填参数，且不可更改】 字段的最大长度，默认为8字节。 |
#### 响应结构
对 field 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 操作是否成功。 |
| newResourceLoaction | String | 新创建的字段资源的 URI。PUT 请求是创建字段时存在。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
#### 示例
示例 field 资源对应的数据集 Ocean 非空，所以不能执行 PUT 请求，创建新的字段。设 World 数据源中，有空数据集资源（dataset 资源）NewDataset 的 URI 如下：
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/NewDataset.rjson
则对空数据集中，不存在的 field 资源： http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/NewDataset/fields/NewField.rjson 执行如下参数的 PUT 请求，添加新的字段：
{
"isRequired": "false",
"defaultValue": "0",
"name": "NewField",
"caption": "NewField",
"type": "INT32",
"maxLength": "4",
"isZeroLengthAllowed": "false",
"isSystemField": "true"
}
则返回 rjson 格式的操作结果的表述如下：
{"succeed":true}
### DELETE 请求
删除字段。也是只能在空数据集中进行。
#### 请求参数
无。
#### 响应结构
对 field 资源执行 DELETE 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 删除字段是否成功。 |
| error | HttpError | 出错信息，如果操作成功，则没有本字段。 |
#### 示例
对 [PUT 请求示例](#PUT_示例) 中创建的空数据集 NewDataset 中的字段 NewField 执行 DELETE 请求，删除 NewField 字段，在操作成功的情况下，返回 rjson 格式的操作结果表述如下：
{"succeed":true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 field 资源是否存在，或者客户端是否有权限访问 field 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 field 资源是否支持<format>格式的表述。
## 请参见
- [statistic](statistic.htm)，[fields](../fields.htm)
- [客户端构建 REST 请求](../../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../../../../resource_hierarchy.htm)