# tileData

## URI
- [<data_uri>](data.htm#URI)/data/index/{nRow}/{nCol}.{fileExtension}
- [<data_uri>](data.htm#URI)/data/path/{filePath}.{fileExtension}
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[data](data.htm)
## 介绍
缓存文件，即瓦片数据。 可以根据瓦片数据的索引，或者数据文件的路径来唯一确定某一瓦片数据，所以有两种 URI 模板。其中 URI1表示通过瓦片数据的索引来获取，URI2 表示通过瓦片数据文件的路径来获取，数据文件的路径为相对路径（相对于瓦片数据的配置文件所在的目录，路径用“/”来分隔）。此外，通过 URI2还可以进行瓦片数据的打包下载，详细使用方法请参考 URI2的参数介绍。
注意：KML 数据没有索引的概念，所以只能通过 URI2 的形式，即通过数据文件的路径来获取，获取的是 KML 数据本身。
支持的方法：
- [GET](#GET 请求)：获取三维缓存数据里确定的一块缓存文件。
- [HEAD](#HEAD 请求)：检查 tileData 资源是否存在，或权限是否可以访问 tileData 资源。
支持的表述格式：tileData 资源的表述格式就是三维数据的后缀，瓦片数据的后缀（{fileExtension}）随瓦片数据类型的不同而不同，列表如下：
表：瓦片数据后缀
| 数据类型 | 数据后缀 |
| --- | --- |
| 影像瓦片数据 | png、jpeg |
| 地形瓦片数据 | bil |
| 三维模型缓存数据 | scvb、scvd 缓存数据，与 JPG、bmp、png 等模型纹理图片格式。 |
| KML 数据 | kml、kmz |
| SuperMap 矢量数据 | scvb、scvd （如果后缀为 scvb，那么服务端返回空间信息，如果是 scvd，那么返回属性信息。） |
| 栅格体数据 | scvo |
## 资源层次
!\[](../../../../../../assets/images/root/Realspace/datas/data/tileData.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以“WorldMap”数据为例加以说明，其中 supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/WorldMap/data/index/1/1.png?level=1
### ](../../../root.htm)GET 请求
获取瓦片数据资源，即确定的某块缓存文件。
#### 请求参数
对 tileData 资源执行 GET 请求，需要在 URI 中包含一些参数。
对于 URI1 而言，“？”之前传递的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| nCol | int | 为缓存文件对应的分块在全球剖分格网中的列号。 |
| nRow | int | 为缓存文件对应的分块在全球剖分格网中的行号。 |
| fileExtension | String | 瓦片数据的后缀。（参见：[瓦片数据后缀](#表_瓦片数据后缀)） |
“？”之后传递的参数是可选的，列举如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| scale | double | 数据切片的比例尺，推荐通过 scale 参数而不是 level 请求切片数据。 |
| level | int | 数据切片的级别。当数据为二维地图瓦片时，或7.1以前版本的缓存数据时，为必选参数。 |
| dataVersion | String | 数据版本。 |
| userName | String | 用户名。 |
| userPassword | String | 用户密码。 |
| serviceVersion | String | 服务的版本 。 |
| _cache | boolean | 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
SuperMap iServer 还支持通过具体图层名来获取影像瓦片数据，可通过在 URI1 “？”之后传递 sceneName 和 layerName 参数来获取。描述如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sceneName | String | 【可选参数】 场景名。当请求具体图层的影像瓦片数据时，为必选参数。 |
| layerName | String | 【可选参数】 图层名。当请求具体图层的影像瓦片数据时，为必选参数。 |
对于 URI2 而言，“？”之前传递的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| filePath | String | 两种用途：
1. 要下载单个瓦片数据文件时，表示单个瓦片数据文件的相对路径（相对于瓦片数据集本身的配置文件所在的目录算起）；
2. 要打包下载瓦片数据文件时，表示打包下载的瓦片数据文件数组，包含数据的相对路径和文件名及其后缀，形如：[/path1/a.png,/path1/b.png]。 |
| fileExtension | String | 对应 filePath，有两种情况： 1. 如果 filePath 表示单个瓦片数据文件的相对路径，fileExtension 则表示瓦片数据的后缀，如*.png，（参见：[瓦片数据后缀](#表_瓦片数据后缀)）； 2. 如果 filePath 表示打包下载的瓦片数据文件数组，fileExtension 则表示要打包下载的瓦片数据文件数组的后缀，即打包文件的格式，目前仅支持*.7z。 |
#### 响应结构
对 tileData 资源执行 GET 请求，返回的是瓦片数据资源（或 KML 数据本身），可以在客户端保存和使用。
#### 示例
对示例 tileData 资源执行 GET 请求，URI 如下：
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/WorldMap/data/index/1/1.png?level=1
则返回的是 WorldMap 级别为1，列号为1，行号为1的瓦片数据，如下图：
!\[](../../../../../../assets/images/root/Realspace/datas/data/tileData1.png)
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tileData 资源是否存在，或者客户端是否有权限访问 tileData 资源。通过对加.{fileExtension}的 URI 执行 HEAD 请求，还可以快速判断 tileData 资源是否支持.{fileExtension}格式的表述。
## 请参见
- [data](data.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)