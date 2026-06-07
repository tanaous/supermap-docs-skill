# datasources

## URI
[<data_uri>](../data.htm#URI)/datasources[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[data](../data.htm)
## 子资源
[datasource](datasource/datasource.htm)
## 介绍
datasources 资源包含所有数据源资源，通过它能够得到 SuperMap iServer 服务器提供的所有数据源信息。
支持的方法：
- [GET](#GET 请求)：获取数据源信息列表。包括数据源名称、访问的 URI 路径等。
- [HEAD](#HEAD 请求)：检查 datasources 资源是否存在，或权限是否可以访问 datasources 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/data/datasources/datasources.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources.rjson
### ](../../root.htm)GET 请求
获取数据源信息列表。包括数据源名称、访问的 URI 路径等。
#### 请求参数
无。
#### 响应结构
对 datasources 资源执行 GET 请求，返回的数据源信息的集合， 其中单个数据源信息的描述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| datasourceNames | List<String> | 数据源名称列表。 |
| datasourceCount | int | 数据源集合中，数据源的数目。 |
| childUriList | List<String> | 数据源访问的 URI 列表。 |
#### 示例
对示例 datasources 资源执行 GET 请求，返回 rjson 格式的资源描述（即数据源信息列表）如下：
{
"childUriList": ["http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World"],
"datasourceCount": 1,
"datasourceNames": ["World"]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasources 资源是否存在，或者客户端是否有权限访问 datasources 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasources 资源是否支持<format>格式的表述。
## 请参见
- [datasource](datasource/datasource.htm)，[data](../data.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)