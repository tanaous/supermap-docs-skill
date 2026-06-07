# spatialanalyst

## URI
[<root_uri>](../root.htm#URI)/spatialanalyst[.<format>]
SuperMap iServer 启动后，空间分析服务的默认 REST 服务访问 URI 为：http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst。
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[datasets](datasets/datasets.htm)，[geometry](geometry/geometry.htm)
## 介绍
spatialAnalyst 资源是空间分析功能的根资源，通过对 spatialAnalyst 资源执行 GET 请求可以获取 SuperMap iServer 服务器上空间分析所有支持的接口。
支持的方法：
- [GET](#GET 请求)：列出空间分析所有支持的子资源列表。
- [HEAD](#HEAD 请求)：判断 spatialAnalyst 资源是否存在，或者权限是否可以访问 spatiAlanalyst 资源。
支持的表述格式：rjson、json、html、xml 。
## 资源层次
!\[](../../../../assets/images/root/spatialanalyst/spatialanalyst.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/server/services/spatialanalyst-sample/restjsr/spatialanalyst.rjson
### ](../root.htm)GET 请求
列出空间分析所有支持的子资源列表。
#### 响应结构
对 spatialAnalyst 资源执行 GET 请求，返回子资源列表：  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| ChildResourceInfo | [List<ChildResourceInfo>](../../../iServerJavadoc/com/supermap/services/rest/commontypes/ChildResourceInfo.html) | 子资源信息。 |
#### 响应示例
对资源：http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst.rjson，执行 GET 请求，则返回 RJSON 格式表述如下：
[
{
"name": "datasets",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "geometry",
"path": "http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/geometry",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 spatialAnalyst 资源是否存在，或者客户端是否有权限访问 spatiAlanalyst 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 spatialAnalyst 资源是否支持<format>格式的表述。
## 请参见
- [root](../root.htm)，[datasets](datasets/datasets.htm)，[geometry](geometry/geometry.htm)
- [客户端构建 REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../resource_hierarchy.htm)