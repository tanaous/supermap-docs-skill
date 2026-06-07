# datasets

## URI
[<datasource_uri>](../datasource.htm#URI)/datasets[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasource](../datasource.htm)
## 子资源
[dataset](dataset/dataset.htm)
## 介绍
datasets 资源表示一个数据源中的所有数据集的集合。通过对 datasets 资源执行 POST 请求，还可以创建一个隶属于 [<datasource_uri>](../datasource.htm#URI) 数据源的数据集，包括点/线/面数据集、文本数据集、CAD数据集和属性表数据集的创建，创建数据集有设置数据集信息、复制现有数据集两种方式。
支持的方法：
- [GET](#GET 请求)：获取数据源中的所有数据集信息。
- [POST](#POST 请求)：创建一个新的数据集。
- [HEAD](#HEAD 请求)：检查 datasets 资源是否存在，或权限是否可以访问 datasets 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../../assets/images/root/data/datasources/datasource/datasets/D_datasets.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，World 是服务器上的一个数据源。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets.rjson
### ](../../../../root.htm)GET 请求
获取数据源中的所有数据集信息。即数据集信息集合。
#### 请求参数
无。
#### 响应结构
对 datasets 资源执行 GET 请求，返回的是数据源中的所有数据集信息，资源表述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| datasetCount | int | 数据源中，数据集的个数。 |
| datasetNames | List<String> | 数据集的名称列表。 |
| childUriList | List<String> | 数据集的访问路径（即 dataset 资源的 URI）列表。 |
#### 示例
对示例 datasets 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets.rjson 执行 GET 请求，返回 rjson 格式的资源描述如下：
{
"childUriList": [
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Ocean",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/CountryLabel",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/OceanBoundary",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/ContinentBoundary",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/CountryBoundary",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Lakes",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Capitals",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/ContinentLabel",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Grids",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/OceanLabel",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Rivers",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/OceanLabelP_C",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/OceanLabelP_E",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/test",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Day",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Night"
],
"datasetCount": 17,
"datasetNames": [
"Ocean",
"CountryLabel",
"OceanBoundary",
"ContinentBoundary",
"CountryBoundary",
"Lakes",
"Capitals",
"ContinentLabel",
"Grids",
"OceanLabel",
"Rivers",
"OceanLabelP_C",
"OceanLabelP_E",
"Countries",
"test",
"Day",
"Night"
]
}
### POST 请求
在数据源中创建一个新的数据集，创建方式有设置数据集信息、复制现有数据集两种。
#### 请求参数
为执行 POST 请求来创建一个新的数据集，POST 请求体中必须包含一些参数，如果参数合法，SuperMap iServer 服务器会根据这些参数，在数据源中创建一个新数据集。
根据创建数据集方式的不同，在请求体中传输的参数也不同，通过设置数据集名和数据集类型来创建新的数据集，需要传入的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| datasetName | String | 数据集名称。 |
| datasetType | DatasetType | 数据集类型。目前支持六种枚举值：POINT、LINE、REGION、TEXT、CAD、TABULAR。 |
通过复制数据集的方式创建新的数据集，需要传入的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| srcDatasourceName | String | 源数据源名称，默认为本数据源，如果源数据源与本数据源不在同一个工作空间，则操作失败。 |
| srcDatasetName | String | 源数据集名称。 |
| destDatasetName | String | 要创建的目标数据集名称。 |
注意：
1、当 POST 请求体中，两种参数都完整包含的情况下，优先按照第一种，即设置数据集名和数据类型的方式来创建新的数据集。
2、由 PostGIS 服务、shapefile 数据发布的数据服务不支持创建数据集。
#### 响应结构
对 datasets 资源执行 POST 请求，创建一个新的数据集，返回的操作结果的表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 创建数据集是否成功。 |
| newResourceID | String | 新创建的数据集资源的 ID。 |
| newResourceLoaction | String | 新创建的数据集资源的 URI。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
#### 示例
对示例 datasets 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets.rjson 执行参数如下的 POST 请求，采用设置数据集信息的方式创建新的数据集：
{"datasetType":"POINT","datasetName":"RestCreate"}
操作成功时，返回 rjson 格式的操作结果表述如下：
{
"newResourceID": "/name/RestCreate",
"newResourceLocation": "http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/RestCreate.rjson",
"succeed": true
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasets 资源是否存在，或者客户端是否有权限访问 datasets 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasets 资源是否支持<format>格式的表述。
## 请参见
- [dataset](dataset/dataset.htm)，[datasource](../datasource.htm)
- [客户端构建 REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../resource_hierarchy.htm)