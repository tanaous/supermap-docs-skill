# dataset

## URI
- [<datasets_uri>](../datasets.htm#URI)/name/{datasetName}[.<format>]
- [<datasets_uri>](../datasets.htm#URI)/index/{datasetIndex}[.<format>]
- [<datasets_uri>](../datasets.htm#URI)/{datasetName}[.<format>]
- [<datasets_uri>](../datasets.htm#URI)/{datasetIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[DELETE](#DELETE 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasets](../datasets.htm)
## 子资源
[features](features/features.htm)、[fields](fields/fields.htm)、[domain](domain/domain.htm) 、[gridValues](gridValues/gridValues.htm)、[gridValue](gridValue/gridValue.htm)、[imageValues](imageValues/imageValues.htm)、[imageValue](imageValue/imageValue.htm)、[tileFeature](tilefeature/tilefeature.htm)
## 介绍
dataset 资源表示一个数据集，通过对 dataset 资源执行 GET 请求可以获得该数据集（{datasetName}或{datasetIndex}）的描述信息，通过 PUT 和 DELETE 请求还可以修改或删除该数据集，当 dataset 资源不存在时，PUT 请求是创建一个数据集。
注意：1：dataset 资源支持以上4种 URI 表示方式，URI1、URI3 用数据集名称标识资源，URI2、URI4 用数据集索引标识资源；2：当[<datasets_uri>](../datasets.htm#URI)中的[<datasource_uri>](../../datasource.htm#URI)使用 URI1或 URI2时，dataset 只能使用 URI1或 URI2；当[<datasets_uri>](../datasets.htm#URI)中的[<datasource_uri>](../../datasource.htm#URI)使用 URI3或 URI4时，dataset 只能使用 URI3或 URI4；3：当使用 datasetIndex 时，索引值大小由创建数据集的顺序决定，并与 iDesktopX 中数据集排序一致。
支持的方法：
- [GET](#GET 请求)：获取数据集信息。
- [PUT](#PUT 请求)：创建数据集或修改数据集信息（目前支持点/线/面数据集、文本数据集、CAD数据集和属性表数据集）。
- [DELETE](#DELETE 请求)：删除数据集。
- [HEAD](#HEAD 请求)：检查数据集资源是否存在，或权限是否可以访问数据集资源。
支持的表述格式：RJSON、JSON、HTML、XML、KML、OpenLayers3(with MVT)。
## 资源层次
!\[](../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/D_dataset.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，World 是服务器上的一个数据源，Countries 是 World 数据源中的一个矢量数据集。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries.rjson
### ](../../../../../root.htm)GET 请求
获取数据集的详细信息。
#### 请求参数
无。
#### 响应结构
对 dataset 资源执行 GET 请求，返回的资源表述的结构如下（资源表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| datasetInfo | DatasetInfo | 数据集详细信息。 |
| childUriList | List<String> | 子资源列表。 |
| supportAttachments | boolean | 附件功能是否可用 |
| supportFeatureMetadatas | boolean | 是否支持元信息功能 |
其中数据集详细信息，即 DatasetInfo 的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 数据集名称，数据集的唯一标识。 该标识不区分大小写。 |
| description | String | 数据集的描述信息。 |
| type | DatasetType | 数据集类型。 目前版本支持的数据集类型包括纯属性表数据集、点数据集、EPS点数据集、线数据集、EPS线数据集、面数据集、EPS面数据集、文本数据集、EPS文本数据集、CAD数据集（CAD 数据集）等矢量数据集（DatasetVector），栅格数据集（DatasetGrid），影像数据集（DatasetImage），以及网络数据集（DatasetNetwork）。 |
| bounds | Rectangle2D | 数据集范围。 对于矢量数据集来说，bounds 为数据集中所有对象的最小外接矩形；对于栅格，bounds 为当前格网或影像的地理范围。 |
| dataSourceName | String | 该数据集对象所属的数据源名称。 |
| encodeType | EncodeType | 数据集存储时的压缩编码方式。 |
| isReadOnly | boolean | 数据集是否为只读。 |
| prjCoordSys | PrjCoordSys | 数据集的投影信息。 |
| tableName | String | 表名。 对数据库型数据源，指此数据集在数据库中所对应的数据表名称；对文件型数据源，指此数据集存储属性的表名称（文件型数据源文件用.udb 文件存储空间数据，.udd 文件存储属性数据）。 |
| charset | Charset | 矢量数据集的字符集。仅当 dataset 资源标识的是矢量数据集时存在。 |
| isFileCache | boolean | 是否使用文件形式的缓存。仅对数据库型数据源中的矢量数据集有效。 |
| recordCount | int | 矢量数据集中的记录数。 仅当 dataset 资源标识的是矢量数据集时存在。 |
| blockSize | int | 按像素分块存储，每一块的大小。 仅当 dataset 资源标识的是影像数据集或 Grid 数据集时存在。 |
| height | int | 数据的高度。  仅当 dataset 资源标识的是影像数据集或 Grid 数据集时存在。 |
| width | int | 数据的宽度。  仅当 dataset 资源标识的是影像数据集或 Grid 数据集时存在。 |
| pixelFormat | PixelFormat | 数据存储的像素格式。仅当 dataset 资源标识的是影像数据集或 Grid 数据集时存在。 |
| isMultiBand | boolean | 影像数据集是否是多波段影像数据集。 仅当 dataset 资源标识的是影像数据集时存在。 |
| palette | List<java.awt.Color> | 影像数据的颜色调色板。  仅当 dataset 资源标识的是影像数据集时存在。 |
| supportTransaction | boolean | 当前数据集是否支持[回退事务](../../../../../../../../Appendix/Glossary.htm#rollbackOnFailure)的数据库事务能力。仅工作空间中的 PostGIS 数据源中的数据集支持（不包括影像数据集、栅格数据集、版本数据集、矢量金字塔数据集和镶嵌数据集），参数值为 true，其余数据集返回 false。 |
#### 示例
对示例 dataset 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries.rjson 执行 GET 请求，返回 Countries 数据集的表述如下（Countries 数据集是矢量数据集）：
{
"childUriList": [
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/fields",
"http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries/features"
],
"datasetInfo": {
"bounds": {
"bottom": -90,
"left": -180,
"leftBottom": {
"x": -180,
"y": -90
},
"right": 180,
"rightTop": {
"x": 180,
"y": 83.62359619140626
},
"top": 83.62359619140626
},
"charset": "GB18030",
"dataSourceName": "World",
"description": "",
"encodeType": "NONE",
"isFileCache": false,
"isReadOnly": false,
"name": "Countries",
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
},
"recordCount": 247,
"tableName": "Countries",
"type": "REGION"
}
}
对示例  dataset  资源：http://localhost:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Capitals.kml 执行 GET 请求，返回 kml 格式表述（目前支持点、线、面数据集的 kml 表述）如下：
<?xml version="1.0" encoding="utf-8" standalone="no" ?>
<kml>
<Document>
<NetworkLink>
<Link>
<href>http://localhost:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Capitals/features.kml</href>
</Link>
</NetworkLink>
</Document>
</kml>
在 GoogleEarth 中访问 http://localhost:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Capitals.kml，显示如下图所示：
!\[](../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/D_feature_kml.png)
上图是默认显示效果，关于 kml 的默认显示风格，可以参考 %SuperMap iServer Java_HOME%\WEB-INF\lib\service-model-{version}.jar\config\kml\styles\default.xml 文件。
用户可以自定义 dataset 的 kml 数据的显示风格，具体操作请参考“配置管理 > KML 风格配置”。
### PUT 请求
当资源标识为第一种方式的 URI 时，表示创建数据集或修改数据集信息，目前只支持矢量数据集。当 dataset 资源不存在时为创建，存在时为修改。
#### 请求参数
当 dataset 资源不存在时，对一个新的 URI 发 PUT 请求，表示创建数据集时，需要在请求体中包含以下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| datasetName | String | 数据集名。 注意要跟 URI 中的{datasetName}保持一致。 |
| datasetType | DatasetType | 数据集类型。 目前支持创建的出聚集类型有：点、线、面、文本、复合（CAD）和属性数据集。 |
| isFileCache | boolean | 是否使用文件形式的缓存。仅对数据库型数据源中的矢量数据集有效。 |
当 dataset 资源存在时，对 dataset 资源执行 PUT 请求，对数据集信息进行修改，需要在请求体中包含以下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| description | String | 数据集描述信息。 |
| prjCoordSys | PrjCoordSys | 投影坐标系。 |
| charset | enum | 矢量数据集的字符集。 【可选参数】当数据集类型为矢量数据集时，可以传递此参数。如果用户传递空值，则编码方式保持不变。 |
| palette | java.util.List<[Color](../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Color.html)> | 影像数据的颜色调色板。 【可选参数】当数据集类型为影像数据集时，可以传递此参数。 |
| noValue | double | 栅格数据集中没有数据的像元的栅格值。 【可选参数】当数据集类型为栅格数据集时，可以传递此参数。 |
#### 响应结构
对 dataset 资源执行 PUT 请求，返回的操作结果表述的结构如下（表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 操作是否成功。 |
| newResourceLoaction | String | 新创建的数据集资源的 URI。如果 PUT 请求执行的是修改操作，则没有本字段。 |
| error | HttpError | 出错信息，如果创建成功，则没有本字段。 |
#### 示例
对 dataset 资源执行 PUT 请求，当 URI 所标识的资源不存在时，例如 URI 为 http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/World1.rjson，而 World 数据源中并没有 World1 数据集，此时对该 URI 执行 PUT 请求表示创建。
对 URI：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/World1.rjson 执行 PUT 请求，请求体如下：
{"datasetType":"POINT","datasetName":"World1"}
则返回 rjson 格式的操作结果的表述如下：
{
"newResourceLocation": "http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/World1",
"succeed": true
}
对示例 dataset 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/World1.rjson 执行 PUT 请求，在资源存在的情况下（World 数据源里数据集 World1 存在）表示修改。对该 URI 执行 PUT 请求，在请求体中传入以下参数，对数据集 World1 进行修改：
{
"isFileCache": "true",
"description": "123",
"prjCoordSys": {
"coordUnit": "MILE",
"name": "Tokyo UTM 51",
"epsgCode": 3902,
"projection": null,
"coordSystem": null,
"type": "PCS_USER_DEFINED",
"distanceUnit": null,
"projectionParam": null
},
"charset": "GB18030"
}
则返回 rjson 格式的操作结果的表述如下：
{"succeed": true}
### DELETE 请求
删除数据集。对示例 dataset 资源，即 URI 而言，就是删除 World 数据源中的 Countries 数据集。
#### 请求参数
无。
#### 响应结构
对 dataset 资源执行 DELETE 请求，删除该数据集，返回的操作结果的表述如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 删除数据集是否成功 |
| error | HttpError | 出错信息，如果操作成功，则没有本字段。 |
#### 示例
对示例 dataset 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries.rjson 执行 DELETE 请求，删除 Countries 数据集，在操作成功的情况下，返回 rjson 格式的表述如下：
{"succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 dataset 资源是否存在，或者客户端是否有权限访问 dataset 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 dataset 资源是否支持<format>格式的表述。
## 请参见
- [features](features/features.htm)，[fields](fields/fields.htm) ，[tileFeature](tilefeature/tilefeature.htm)，[domain](domain/domain.htm)，[datasets](../datasets.htm)
- [客户端构建 REST 请求](../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../../resource_hierarchy.htm)