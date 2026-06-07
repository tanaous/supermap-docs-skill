# data

## URI
[<root_uri>](../root.htm#URI)/data[.<format>]
SuperMap iServer 启动后，数据服务组件的默认 REST 服务访问 URI 为：http://<server>:8090/iserver/services/data-world/rest/data。
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[coordTransfer](coordTransfer/coordTransfer.htm)、[datasources](datasources/datasources.htm)、[featureResults](featureResults/featureResults.htm)
## 介绍
data 资源在 SuperMap iServer 中是数据查询和操作的入口，提供了数据源集合和数据查询功能的资源信息。
支持的方法：
- [GET](#GET 请求)：获取子资源信息列表，data 资源的子资源包括数据源集合资源、数据查询资源等。
- [HEAD](#HEAD 请求)：检查 data 资源是否存在，或权限是否可以访问 data 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../assets/images/root/data/D_data.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/data-world/rest/data.rjson
### ](../root.htm)GET 请求
获取子资源信息列表，这里包括数据源集合资源、数据查询资源等。子资源信息里包含资源名称、URI 等。
#### 请求参数
无。
#### 响应结构
对 data 资源执行 GET 请求，在响应消息的实体主体里是一个子资源描述集，其中单个子资源描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 资源的名称。 |
| path | String | 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 示例
对示例 data 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"name": "datasources",
"path": "http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources",
"resourceConfigID": "datasources",
"resourceType": "CatalogList",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object"
]
},
{
"name": "featureResults",
"path": "http://supermapiserver:8090/iserver/services/data-world/rest/data/featureResults",
"resourceConfigID": "featureResults",
"resourceType": "ArithResultSetResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object"
]
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 data 资源是否存在，或者客户端是否有权限访问 data 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 data 资源是否支持<format>格式的表述。
## 请参见
- [datasources](datasources/datasources.htm)，[featureResults](featureResults/featureResults.htm)，[root](../root.htm)
- [客户端构建 REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../resource_hierarchy.htm)