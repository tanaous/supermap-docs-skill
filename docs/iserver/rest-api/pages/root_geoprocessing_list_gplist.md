# list

## URI
<[geoprocessing_uri](../geoprocessing.htm#URI)>/gp/v2/list[.<format>]
按照名称空间获取对应目录下的处理自动化工具列表URI为：http://<server>:<port>/iserver/services/geoprocessing/restjsr/gp/v2/list/<factoryName>[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[georpocessing](../geoprocessing.htm)
## 子资源
bdt-raster-io、bdt-raster、bdt-vec-io、bdt-vec、iobjects_mosaic
## 介绍
list资源表示处理自动化服务工具列表的根目录，列出所有的处理自动化工具列表以及用户的自定义工具列表。
支持的方法：
- [GET](#GET 请求)：获取处理自动化建模的所有工具列表，支持按照名称空间获取对应目录下的处理自动化工具列表。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/root/geoprocessing/list/list.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/geoprocessing/restjsr/gp/v2/list.rjson
### ](../../root.htm)GET 请求
获取处理自动化工具列表。
#### 响应结构
对处理自动化工具列表资源执行GET请求，在响应消息的实体主体里是一个处理自动化资源描述集，其中单个资源描述的结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| factoryName | String | 处理自动化工具的名称空间。 |
| factoryTitle | String | 处理自动化工具的名称空间标题。 |
| list | String | 处理自动化工具列表。 |
#### 响应示例
对处理自动化工具列表资源执行GET请求，则返回rjson格式的资源描述如下：
[
{
"factoryTitle": "大数据栅格分析工具",
"factoryName": "bdt-raster",
"list": [
{
"id": 
"bdt-raster:aspect",
"title": 
"坡向计算"
},
{
"id": 
"bdt-raster:hillshade",
"title": 
"山体阴影"
},
{
"id": 
"bdt-raster:slope",
"title": 
"坡度计算"
},
……,
{
"id": 
"bdt-raster:zonalstatistics",
"title": 
"区域统计"
},
{
"id": 
"bdt-raster:zonalstatisticswithvaluereader",
"title": 
"DSF栅格区域统计"
},
{
"id": 
"bdt-raster:zonalstatisticswithvaluereaderbyyear",
"title": 
"多年份DSF栅格区域统计"
}
]
},
{
"factoryTitle": "大数据栅格管理工具",
"factoryName": "bdt-raster-io",
"list": [
{
"id": 
"bdt-raster-io:point3dtoraster",
"title": 
"三维点转栅格"
},
{
"id": 
"bdt-raster-io:rasterize",
"title": 
"矢量转栅格"
},
……,
}
]
}
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 list 资源是否存在，或者客户端是否有权限访问  list 资源。通过对加.<format>的 
URI 执行 HEAD 请求，还可以快速判断 list 资源是否支持<format>格式的表述。
## 请参见
- [georpocessing](../geoprocessing.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)
- [基于Token访问受保护的REST服务资源](../../../Token_RESTServices.htm)