# facilityAnalyst3D

## URI
[<root_uri>](../root.htm#URI)/facilityanalyst3d[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[fa3DNetworkDataName](fa3DNetworkDataName/fa3DNetworkDataName.htm)
## 介绍
facilityAnalyst3D 资源是三维设施网络分析功能的根资源，通过对 facilityAnalyst3D 
资源执行 GET 请求可以获取 SuperMap iServer 服务器上，所有可用于三维设施网络分析的三维网络数据集的名字集合。
三维设施网络分析是基于创建了流向的三维网络数据集的分析，是三维网络分析的重要内容。目前提供的主要功能有：查找结点或弧段到源或汇之间的弧段、上下游追踪、上游最近设施查找等。相对于传统的二维设施网络分析，三维设施网络分析由于其真实的三维展现，从而能够更好地为设施网络的设计、施工、突发事故处理等提供指导和决策支持。
支持的方法：
- [GET](#GET 请求)：获取所有可用于三维设施网络分析的三维网络数据集的名称。
- [HEAD](#HEAD 请求)：检查 facilityAnalyst3D 
资源是否存在，或权限是否可以访问 facilityAnalyst3D 资源。
支持的表述格式：RJSON、JSON、XML、HTML、JSONP。
## 资源层次
![](../../../../assets/images/root/facilityAnalyst3D/facilityAnalyst3D.png)
[
##  
##  
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/networkAnalyst3D-Pipe3D/rest/facilityanalyst3d.rjson
### ](../root.htm)GET 请求
获取所有可用于三维设施网络分析的三维网络数据集的名称。
#### 响应结构
对 facilityAnalyst3D 资源执行 GET 请求，在响应消息的实体主体里是一个三维网络数据集的名字集合，其中单个三维网络数据的描述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 三维网络数据的名称。 |
| path | String | 三维网络数据的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述媒体类型。 |
#### 响应示例
对 facilityAnalyst3D 资源执行 GET 请求（http://localhost:8090/iserver/services/networkAnalyst3D-Pipe3D/rest/facilityanalyst3d.rjson），返回 
rjson 格式的资源描述如下：
[{
"name": "Network@Pipe3D",
"path": "http://192.168.17.13:8090/iserver/services/networkAnalyst3D-Pipe3D/rest/facilityanalyst3d/Network@Pipe3D",
"resourceConfigID": 
"fa3DNetworkDataName",
"resourceType": "StaticResource",
"supportedMediaTypes": 
[
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object"
]
}]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 facilityAnalyst3D 资源是否存在，或者客户端是否有权限访问 
facilityAnalyst3D 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 facilityAnalyst3D 
资源是否支持<format>格式的表述。
## 请参见
- [root](../root.htm)、[fa3DNetworkDataName](fa3DNetworkDataName/fa3DNetworkDataName.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)