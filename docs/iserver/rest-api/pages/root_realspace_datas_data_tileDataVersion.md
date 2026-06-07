# tileDataVersion

## URI
[<data_uri>](data.htm#URI)/version/index/{nCol}/{nRow}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[data](data.htm)
## 介绍
通过对 tileDataVersion 资源执行 GET 请求，可以根据索引确定三维缓存数据里某一块缓存文件（瓦片数据）的版本。
注意：KML 数据没有缓存文件和版本的概念，所以对 KML 数据而言，tileDataVersion 资源是没有意义的。
支持的方法：
- [GET](#GET 请求)：获取瓦片数据的版本。
- [HEAD](#HEAD 请求)：检查 tileDataVersion 资源是否存在，或权限是否可以访问 tileDataVersion 资源。
支持的表述格式：RJSON、JSON、JSONP、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/Realspace/datas/data/tiledataVersion.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，WorldMap 是三维数据层，即{dataName}，1为 列号（{nCol}），1行号（{nRow}）。
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/WorldMap/version/index/1/1?level=1&fileExtension=png
### ](../../../root.htm)GET 请求
获取瓦片数据的版本。
#### 请求参数
对 tileDataVersion 资源执行 GET 请求，需要在 URI 中包含一些参数。在“？”之前传递的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| nCol | int | 为缓存文件对应的分块在全球剖分格网中的列号。 |
| nRow | int | 为缓存文件对应的分块在全球剖分格网中的行号。 |
在“？”之后传递的参数是可选的，列举如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| level | int | 数据切片的级别。（仅适用于模型数据） |
| fileExtension | String | 瓦片数据的后缀。（参见：[瓦片数据后缀](tileData.htm#表_瓦片数据后缀)） |
| userName | String | 用户名。 |
| userPassword | String | 用户密码。 |
| serviceVersion | String | 服务的版本。 |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 tileDataVersion 资源执行 GET 请求，服务器返回的响应为表示版本的字符串。
#### 示例
对示例 tileDataVersion 资源执行 GET 请求，传入 level 和 fileExtension 参数，URI 如下：
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/WorldMap/version/index/1/1?level=1&fileExtension=png
则返回对应瓦片数据的版本如下，为一个 rjson 格式的字符串：
0000
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tileDataVersion 资源是否存在，或者客户端是否有权限访问 tileDataVersion 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tileDataVersion 资源是否支持<format>格式的表述。
## 请参见
- [data](data.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)