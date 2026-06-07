# modelIndex

## URI
[<data_uri>](data.htm#URI)/modelIndex[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[data](data.htm)
## 介绍
modelIndex 资源是三维模型缓存数据的索引文件，是当三维数据（{dataName}）为模型缓存数据时才存在的资源。通过对 modelIndex 资源执行 GET 请求，可以获取一个具体的三维模型缓存数据（{dataName}）的模型索引文件。该资源仅支持 index 类型（即索引文件）的表述格式，返回一个模型索引文件，不写表述格式时，默认也返回模型索引文件。
支持的方法：
- [GET](#GET 请求)：获取三维模型缓存数据（{dataName}）的索引文件。
- [HEAD](#HEAD 请求)：检查 modelIndex 资源是否存在，或权限是否可以访问 modelIndex 资源。
支持的表述格式：index
## 资源层次
!\[](../../../../../../assets/images/root/Realspace/datas/data/modelIndex.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 index 输出格式为例加以说明，其中，supermapiserver 是服务器名，OlympicGreen 是三维模型缓存数据名，即{dataName}。
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/OlympicGreen/modelIndex.index
### ](../../../root.htm)GET 请求
获取三维模型缓存数据（{dataName}）的索引文件。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 modelIndex 资源执行 GET 请求，返回的是一个模型索引文件（*.index）。
#### 示例
对示例 modelIndex 资源执行 GET 请求，传入参数如下：
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/OlympicGreen/modelIndex.index
返回的是 OlympicGreen 模型缓存数据的索引文件，modelIndex.index。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 modelIndex 资源是否存在，或者客户端是否有权限访问 modelIndex 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 modelIndex 资源是否支持<format>格式的表述。
## 请参见
- [data](data.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)