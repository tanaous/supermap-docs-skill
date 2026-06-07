# weightMatrix

## URI
[<networkDataName_uri>](networkDataName.htm#URI)/weightmatrix[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[networkDataName](networkDataName.htm)
## 介绍
weightMatrix 资源用于获取耗费矩阵的计算结果，对 weightMatrix 资源执行 GET 请求，可以获取耗费矩阵的计算结果。
支持的方法：
- [GET](#GET 请求)：获取耗费矩阵的计算结果。
- [HEAD](#HEAD 请求)：检查 weightMatrix 资源是否存在，或权限是否可以访问 weightMatrix 资源。
支持的表述格式：rjson、json、jsonp、html、xml。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/weightMatrix.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，RoadNet@Changchun 为要进行分析的网络数据名称。[2,6,9]为参与耗费矩阵计算的网络结点标识号。
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/weightmatrix.rjson?nodes=[2,6,9]
### ](../../root.htm)GET 请求
获取耗费矩阵的计算结果。
**请求参数**
对 weightMatrix 资源执行 GET 请求，需要在 URI 中包含一些参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| nodes | int[]/[Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html)[] | 【必选参数】 计算耗费矩阵的点集合。 |
| parameter | [TransportationAnalystParameter](../../../../iServerJavadoc/com/supermap/services/components/commontypes/TransportationAnalystParameter.html) | 交通网络分析通用参数。 |
**响应结构**
对 weightMatrix 资源执行 GET 请求，获取耗费矩阵，返回的是一个元素为数值的 JSON 二维数组。
**响应示例**
对 RoadNet@Network 数据集进行耗费矩阵分析，即对如下 URI 执行 GET 请求：
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/weightmatrix.rjson?nodes=[2,6,9]
获取的响应内容如下：
[
[
0,
454,
434
],
[
454,
0,
62
],
[
434,
62,
0
]
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 weightMatrix 资源是否存在，或者客户端是否有权限访问 weightMatrix 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 weightMatrix 资源是否支持<format>格式的表述。
## 请参见
- [networkDataName](networkDataName.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)