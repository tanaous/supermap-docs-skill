# networkAnalyst

## URI
[<root_uri>](../root.htm#URI)/networkanalyst[.<format>]
SuperMap iServer 启动后，交通网络分析服务的默认 REST 服务访问 URI 为：http://<server>:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst。
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[networkDataName](networkDataName/networkDataName.htm)
## 介绍
networkAnalyst 资源是交通网络分析功能的根资源，通过对 networkAnalyst 资源执行 GET 请求可以获取 SuperMap iServer 服务器上可用于交通网络分析的网络数据的名称集合。
支持的方法：
- [GET](#GET 请求)：获取所有可用于交通网络分析的网络数据名称。
- [HEAD](#HEAD 请求)：检查 networkAnalyst 资源是否存在，或权限是否可以访问 networkAnalyst 资源。
支持的表述格式：rjson、json、jsonp、html、xml。
## 资源层次
## !\[](../../../../assets/images/root/networkanalyst/networkanalyst.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/analyst-sample/rest/networkanalyst.rjson
### ](../root.htm)GET 请求
获取所有可用于交通网络分析的网络数据名称。
**请求参数**
无。
**响应结构**
对 networkAnalyst 资源执行 GET 请求，在响应消息的实体主体里是一个网络数据集合，其中单个网络数据描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 网络数据的名称。 |
| path | String | 网络数据的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
**响应示例**
对 networkAnalyst 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[{
"name": "RoadNet@Changchun",
"path": "http://localhost:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun",
"resourceConfigID": "networkDataName",
"resourceType": "StaticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp"
]
}]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 networkAnalyst 资源是否存在，或者客户端是否有权限访问 networkAnalyst 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 networkAnalyst 资源是否支持<format>格式的表述。
## 请参见
- [networkDataName](networkDataName/networkDataName.htm)，[root](../root.htm)
- [客户端构建 REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../resource_hierarchy.htm)