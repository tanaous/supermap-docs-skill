# data

## URI
- 
[<datas_uri>](../datas.htm#URI)/{dataName}[.<format>]
- 
[<datas_uri>](../datas.htm#URI)/{dataIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[datas](../datas.htm)
## 子资源
[clearCache](clearCache.htm)、[modelIndex](modelIndex.htm)、[config](config.htm)、[tileDataVersion](tileDataVersion.htm)、[tileData](tileData.htm)
## 介绍
data 资源是三维数据资源，表示一个具体的三维数据,可以通过{dataName}或者{dataIndex}来访问。目前 SuperMap iServer 中的三维数据包括：矢量数据、影像数据、地形数据、三维模型数据、KML 数据。其中除 KML 数据之外，其他数据都可以通过 [tileData](tileData.htm) 资源取到某一块的缓存文件，KML 数据通过 [tileData](tileData.htm) 资源获取到的是 KML 数据本身。
[modelIndex](modelIndex.htm) 子资源是三维模型缓存数据特有的子资源，用于获取模型索引。
注意：KML 数据没有索引、配置文件、数据版本的概念，所以 [tileDataVersion](tileDataVersion.htm) 子资源对 KML 数据而言是没有意义的，通过 [config](config.htm) 子资源获取到的，也是 KML 数据本身。
支持的方法：
- [GET](#GET 请求)：获取一个三维数据集（{dataName}或{dataIndex}）的表述。
- [HEAD](#HEAD 请求)：检查三维数据集资源是否存在，或权限是否可以访问 data 资源。
支持的表述格式：RJSON、JSON、JSONP、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/Realspace/datas/data/data.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，OlympicGreen 是三维数据集名，即{dataName}。
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/datas/OlympicGreen.rjson
### ](../../../root.htm)GET 请求
获取三维数据集的表述。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 data 资源执行 GET 请求，返回三维数据集表述的结构如下（资源表述在响应消息的实体主体里）：   
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| dataName | String | 三维数据集的名称。 |
| dataType | realspaceDataType | 三维数据的类型。 |
#### 示例
对示例 data 资源，执行 GET 请求，返回 OlympicGreen 三维数据集的表述如下：
{
"dataName": "OlympicGreen",
"dataType": "VECTOR"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断三维数据集资源是否存在，或者客户端是否有权限访问 data 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 data 资源是否支持<format>格式的表述。
## 请参见
- [clearCache](clearCache.htm)、[modelIndex](modelIndex.htm)、[config](config.htm)、[tileDataVersion](tileDataVersion.htm)、[tileData](tileData.htm)、[datas](../datas.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)