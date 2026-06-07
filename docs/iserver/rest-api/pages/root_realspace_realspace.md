# 3D

## URI
[<root_uri>](../root.htm#URI)/realspace[.<format>]
SuperMap iServer 启动后，三维服务的默认 REST 服务访问 URI 为：http://<server>:8090/iserver/services/3D-sample/rest/realspace。
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[scenes](scenes/scenes.htm)、[datas](datas/datas.htm)、[symbols](symbols/symbol.htm)、[allDataConfigs](allDataConfigs.htm)
## 介绍
3D 资源是 SuperMap iServer REST 服务中，三维服务的根节点。在 SuperMap iServer 中，一个三维服务模块包括三维场景、三维数据集、符号资源三个组成部分，它们分别提供了三维场景、三维数据的信息和操作，以及数据中可以使用的二、三维符号。
此外，3D 资源还包含获取所有数据配置文件的allDataConfigs资源，即所有三维图层的数据配置文件。
SuperMap iServer 支持对发布的三维工作空间进行实时的检查更新，即，如果发布的三维工作空间在外部做了任何的变化，在发布的服务中都可以及时体现出来。
支持的方法：
- [GET](#GET 请求)：获取 3D 资源的表述，即三维场景集合、三维数据集合、符号资源的入口。
- [HEAD](#HEAD 请求)：检查 3D 资源是否存在，或权限是否可以访问 3D 资源。
支持的表述格式：RJSON、JSON、JSONP、HTML、XML。
## 资源层次
!\[](../../../../assets/images/root/Realspace/realspace.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace.rjson
### ](../root.htm)GET 请求
获取 3D 资源的表述，即三维场景集合、三维数据集合、符号资源的入口。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 3D 资源执行 GET 请求， 在响应消息的实体主体里是一个资源描述集，其中单个资源描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 资源名称。 |
| path | String | 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | [ResourceType](../../../iServerJavadoc/com/supermap/services/rest/commontypes/ResourceType.html) | 资源类型。 |
| supportedMediaTypes | String | 支持的表述的媒体类型。 |
#### 示例
对 3D 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"name": "datas",
"path": "http://localhost:8090/iserver/services/3D-sample/rest/realspace/datas",
"resourceConfigID": "map3DDatasets",
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
"name": "scenes",
"path": "http://localhost:8090/iserver/services/3D-sample/rest/realspace/scenes",
"resourceConfigID": "scenes",
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
"name": "symbols",
"path": "http://localhost:8090/iserver/services/3D-sample/rest/realspace/symbols",
"resourceConfigID": "symbols",
"resourceType": "StaticResource",
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
HEAD 请求可以用来判断 3D 资源是否存在，或者客户端是否有权限访问 3D 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断3D 资源是否支持<format>格式的表述。
## 请参见
- [scenes](scenes/scenes.htm)、[datas](datas/datas.htm)、[symbols](symbols/symbol.htm)、[allDataConfigs](allDataConfigs.htm)
- [客户端构建 REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../resource_hierarchy.htm)