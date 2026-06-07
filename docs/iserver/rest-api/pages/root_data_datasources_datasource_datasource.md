# datasource

## URI
- [<datasources_uri>](../datasources.htm#URI)/name/{datasourceName}[.<format>]
- [<datasources_uri>](../datasources.htm#URI)/index/{datasourceIndex}[.<format>]
- [<datasources_uri>](../datasources.htm#URI)/{datasourceName}[.<format>]
- [<datasources_uri>](../datasources.htm#URI)/{datasourceIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasources](../datasources.htm)
## 子资源
[datasets](datasets/datasets.htm)
## 介绍
datasource 资源表示一个数据源，可以提供数据源的信息，并提供访问该数据源所包含的数据集（即它的子资源）的入口。通过对 datasource 资源执行 PUT 请求，可以修改数据源信息。通过 datasource 资源可以获取的数据源信息包括数据源名称、数据源描述、引擎类型、距离单位、坐标单位、投影信息等，可以修改的数据源信息包括：数据源描述、坐标单位、距离单位等。
datasource  资源对应的 URI 有四种。如上 URI 所示：URI1 是通过/name/{datasourceName}，即用"/name"标签加上数据源名称来标识数据源，数据源名称可以是中文；URI2 是通过 /index/{datasourceIndex}，即用“/index”标签加上数据源索引号来标识数据源；URI3 是通过/{datasourceName}，即直接用数据源名称来标识数据源，数据源名称可以是中文；URI4 是通过 /{datasourceIndex}，即直接用数据源索引号来标识数据源。datasource 优先使用 datasourceName 匹配资源。
支持的方法：
- [GET](#GET 请求)：获取数据源信息，以及数据源中数据集的信息列表。
- [PUT](#PUT 请求)：修改数据源信息。
- [HEAD](#HEAD 请求)：检查 datasource 资源是否存在，或权限是否可以访问 datasource 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/data/datasources/datasource/D_datasource.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，World 服务器上的一个数据源的名称。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World.rjson
### ](../../../root.htm)GET 请求
获取数据源信息，以及数据源中数据集的信息列表。
#### 请求参数
无。
#### 响应结构
对  datasource 资源执行 GET 请求，返回的资源表述的结构如下（资源表述在响应消息的实体主体里）：  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| datasourceInfo | DatasourceInfo | 包含的数据源的数据源名称，数据源描述，引擎类型，投影信息，坐标单位，距离坐标等信息 。 |
| childUriList | List<String> | 子资源，即 datasets 资源的访问 URI 列表。 |
其中 datasourceInfo 字段表示的就是数据源的信息，datasourceInfo 的结构可参见 Javadoc 文档中 DatasourceInfo 类型的描述，这里为了清晰起见，把 datasourceInfo 字段（即数据源信息）的结构列表如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| coordUnit | Unit | 坐标单位。 |
| description | String | 数据源描述。 |
| distanceUnit | Unit | 距离单位。 |
| engineType | EngineType | 数据源引擎类型，该字段只读。 |
| name | String | 数据源的别名。别名用于在工作空间中唯一标识数据源，该字段只读。 |
| prjCoordSys | PrjCoordSys | 投影信息。 |
| containDatasetGroup | boolean | 是否包含数据集组。 |
| supportTransaction | boolean | 当前数据源是否支持[回退事务](../../../../../../Appendix/Glossary.htm#rollbackOnFailure)的数据库事务能力。仅工作空间中的 PostGIS 数据源支持，参数值为 true，其余数据源返回 false。 |
#### 示例
对示例 datasource 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World.rjson 执行 GET 请求，返回 rjson 格式的表述如下：
{
"childUriList": ["http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets"],
"datasourceInfo": {
"coordUnit": "DEGREE",
"description": "",
"distanceUnit": "METER",
"engineType": "UDB",
"name": "World",
"prjCoordSys": {
"coordSystem": {
"datum": {
"name": "D_WGS_1984",
"spheroid": {
"axis": 6378137,
"flatten": 0.0033528107,
"name": "WGS_1984",
"type": "SPHEROID_WGS_1984"
},
"type": "DATUM_WGS_1984"
},
"name": "GCS_WGS_1984",
"primeMeridian": {
"longitudeValue": 0,
"name": "Greenwich",
"type": "PRIMEMERIDIAN_GREENWICH"
},
"spatialRefType": "SPATIALREF_EARTH_LONGITUDE_LATITUDE",
"type": "GCS_WGS_1984",
"unit": "DEGREE"
},
"coordUnit": "DEGREE",
"distanceUnit": "METER",
"epsgCode": 1,
"name": "Longitude / Latitude Coordinate System---GCS_WGS_1984",
"projection": null,
"projectionParam": null,
"type": "PCS_EARTH_LONGITUDE_LATITUDE"
}
}
}
### PUT 请求
修改数据源信息。
#### 请求参数
对 datasource 资源执行 PUT 请求，对数据源信息进行修改，需要在请求体中包含以下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| description | String | 数据源描述信息。 |
| coordUnit | Unit | 坐标单位。 |
| distanceUnit | Unit | 距离单位。 |
#### 响应结构
对 datasource 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 数据源信息的修改是否成功。 |
| error | HttpError | 出错信息，如果操作成功，则没有本字段。 |
#### 示例
对示例 datasource 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World.rjson 执行参数如下的 PUT 请求：
{"coordUnit":"MILE","description":"This is a new description","distanceUnit":"MILE"}
修改 World 数据源成功的情况下，返回 rjson 格式的表述如下：
{"succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasource 资源是否存在，或者客户端是否有权限访问 datasource 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasource 资源是否支持<format>格式的表述。
## 请参见
- [dataset](datasets/dataset/dataset.htm)，[datasources](../datasources.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)