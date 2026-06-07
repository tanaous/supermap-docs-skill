# config

## URI
[<data_uri>](data.htm#URI)/config.{fileExtension}
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[data](data.htm)
## 介绍
通过对 config 资源执行 GET 请求，可以获取一个三维数据的配置文件。其中当三维数据是三维模型缓存数据（SGM 数据）时，还必须在 URI 传入 level 参数，因为模型数据每一个缓存级别都有一个数据配置文件。注意：因三维数据的不同，对应的配置文件也不同，config 资源的表述格式跟三维数据的类型对应的，即获取配置文件时，<format>为该三维数据类型配置文件的后缀，或者为空（默认返回对应的配置文件）。
关于三维数据集的类型，请参见 JavaDoc 文档：[RealspaceDataType](../../../../../../mergedProjects/iServerJavadoc/com/supermap/services/components/commontypes/RealspaceDataType.html)。
注意：KML 格式数据没有专门的配置文件，则当三维数据集为 KML 数据时，config 资源获取到的就是 KML 数据本身。
支持的方法：
- [GET](#GET 请求)：获取三维数据的配置文件。
- [HEAD](#HEAD 请求)：检查 config 资源是否存在，或权限是否可以访问 config 资源。
支持的表述格式：config 资源支持的表述格式就是三维数据（{dataName}）配置文件的后缀，随三维数据的类型不同而不同，对应关系如下：
| 三维数据集类型 | 配置文件后缀 |
| --- | --- |
| 影像瓦片数据 | sci3d |
| 地形瓦片数据 | sct |
| 三维模型缓存数据 | scv |
| KML 数据 | kml、kmz |
## 资源层次
!\[](../../../../../../assets/images/root/Realspace/datas/data/config.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以三维模型缓存数据为例加以说明。其中，supermapiserver 是服务器的名称，OlympicGreen 是三维模型缓存数据的名称，三维模型缓存数据对应的表述格式为 SCV。
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/OlympicGreen/config.scv
### ](../../../root.htm)GET 请求
获取三维数据的配置文件。
#### 请求参数
对 config 资源执行 GET 请求时，可以包含一些参数，参数只能包含在 URI 中。“？”之前传递的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| fileExtension | String | 三维数据配置文件的后缀。 为空时默认返回三维数据对应的配置文件（虽然文件名没有后缀）。 |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 config 资源执行 GET 请求，返回的是三维数据对应的配置文件，可以在客户端保存和使用。
#### 示例
对示例 config 资源执行 GET 请求， OlympicGreen  为模型缓存数据，如下：
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/OlympicGreen/config.scv
则返回模型缓存数据 OlympicGreen  的配置文件 config。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 config 资源是否存在，或者客户端是否有权限访问 config 资源。通过对加.{fileExtension}的 URI 执行 HEAD 请求，还可以快速判断 config 资源是否支持.{fileExtension}格式的表述。
## 请参见
- [data](data.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)