# sharefile

## URI
[<datacatalog_uri>](../bigdata.htm#URI)/sharefile[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataCatalog](../bigdata.htm)
## 子资源
[dataset](../sharefile_dataset/dataset.htm)
## 介绍
sharefile 资源表示注册到 iServer 的数据集的集合。通过对 sharefile 执行 
GET 请求，可以获取所有注册到 iServer 的数据集，包括 csv 数据文件，以及注册的数据源（*.udb，udd）中包含的数据集。
支持的方法：
- [GET](#GET 请求)：获取所有注册到 iServer 的数据集。
- [HEAD](#HEAD 请求)：检查 sharefile 资源是否存在，或权限是否可以访问 
sharefile 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/root/datacatalog/sharefile/sharefile.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile.rjson
### ](../../root.htm)GET 请求
获取所有注册到 iServer 的数据集。
#### 响应结构
对 sharefile 资源执行 GET 请求，返回的是数据源中的所有数据集信息，资源表述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| datasetCount | int | sharefile 资源中包含的数据集的个数。 |
| datasetsNames | List<String> | 数据集的名称列表。 |
| childUriList | List<String> | 数据集的访问路径（即 dataset 资源的 URI）列表。 |
#### 响应示例
对 sharefile 资源：http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile.rjson 
执行 GET 请求，返回 rjson 格式的资源描述如下：
{
"childUriList": [
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d1_newyork_taxi_2013_01_14k_new",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Ocean",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Ocean_Label",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Country_Label",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Continent_Label",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Lakes",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Rivers",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Grids",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_continent_T",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Ocean_Label_1",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Countries",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_Capitals",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_OceanLabel",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_CountryLabel1",
"http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/sharefile/d2_World_CountryLabel"
],
"datasetCount": 15,
"datasetNames": [
"d1_newyork_taxi_2013_01_14k_new",
"d2_World_Ocean",
"d2_World_Ocean_Label",
"d2_World_Country_Label",
"d2_World_Continent_Label",
"d2_World_Lakes",
"d2_World_Rivers",
"d2_World_Grids",
"d2_World_continent_T",
"d2_World_Ocean_Label_1",
"d2_World_Countries",
"d2_World_Capitals",
"d2_World_OceanLabel",
"d2_World_CountryLabel1",
"d2_World_CountryLabel"
]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 sharefile 资源是否存在，或者客户端是否有权限访问 sharefile 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 sharefile 资源是否支持<format>格式的表述。
## 请参见
- [dataCatalog](../bigdata.htm)，[dataset](../sharefile_dataset/dataset.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)