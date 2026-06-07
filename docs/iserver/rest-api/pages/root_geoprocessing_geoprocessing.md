# geoprocessing

## URI
[<root_uri>](../root.htm#URI)/geoprocessing/restjsr[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[list](list/gplist.htm)，[jobs](jobs/gpjobs.htm)，[tool](tool/gptool.htm)，[gpmodeler](gpmodeler/internalOnly.htm)
## 介绍
geoprocessing 资源表示处理自动化服务的根节点入口，通过对 geoprocessing 资源执行 
GET 请求，能够得到 SuperMap iServer处理自动化服务的工具列表和任务列表资源入口。
支持的方法：
- [GET](#GET 请求)：获取处理自动化服务的工具列表和任务列表资源入口。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/root/geoprocessing/geoprocessing_root.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/geoprocessing/restjsr.rjson
### ](../root.htm)GET 请求
获取处理自动化服务的工具列表和任务列表资源入口。
#### 响应结构
对 geoprocessing 资源执行 GET 请求，在响应消息的实体主体里是一个子资源描述集，其中单个子资源描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 资源的名称。 |
| path | String | 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 响应示例
对示例 geoprocessing 资源执行 GET 请求，返回 rjson 格式的处理自动化服务一级工具目录列表描述如下：
[
{
"resourceConfigID": 
null,
"supportedMediaTypes": 
null,
"path": "http://localhost:8090/iserver/services/geoprocessing/restjsr/gp/v2/list",
"name": "gp/v2/list",
"resourceType": null
},
{
"resourceConfigID": 
null,
"supportedMediaTypes": 
null,
"path": "http://localhost:8090/iserver/services/geoprocessing/restjsr/gp/v2/jobs",
"name": "gp/v2/jobs",
"resourceType": null
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geoprocessing 资源是否存在，或者客户端是否有权限访问 geoprocessing 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 geoprocessing 资源是否支持<format>格式的表述。
## 请参见
- [root](../root.htm)，[list](list/gplist.htm)，[jobs](jobs/gpjobs.htm)，[tool](tool/gptool.htm)，[gpmodeler](gpmodeler/internalOnly.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)
- [基于Token访问受保护的REST服务资源](../../Token_RESTServices.htm)