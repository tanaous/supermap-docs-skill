# coordTransferResult

## URI
<[coordTransfer_uri](../coordTransfer.htm#URI)>/coordtransferResult[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[coordTransfer](../coordTransfer.htm)
## 介绍
coordTransferResult 资源表示投影坐标系转换结果，在对 coordTransfer 资源执行 POST 请求时被创建，对 coordTransferResult 资源执行 GET 请求，可以获取坐标系转换后的几何对象信息。该资源的生命周期参见：[临时资源的生命周期](../../../../tempResourcesLife.htm)。
支持的方法：
- [GET](#GET 请求)：获取经过坐标系转换后的几何对象信息。
- [HEAD](#HEAD 请求)：检查 coordTransferResult 资源是否存在，或权限是否可以访问 coordTransferResult 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/data/coordTransfer/coordtransferResult/coordTransfer.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，1为 coordTransfer 资源创建的 coordTransferResult 资源的 ID。
http://supermapiserver:8090/iserver/services/data-world/rest/data/coordtransfer/1.rjson
### ](../../../root.htm)GET 请求
获取经过坐标系转换后的几何对象信息。
#### 请求参数
无
#### 响应结构
对 coordTransferResult 资源执行 GET 请求，将返回转换后的几何对象信息，返回资源表述的是一个信息描述集，其中单个几何对象信息描述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| geometry | [Geometry](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 经过坐标系转换后的几何对象 |
#### 响应示例
对示例 coordTransferResult  资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/coordtransfer/1.rjson 执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"center":
{
"x":1.2688789880426234E7,
"y":489371.98562014854
},
"parts":[1],
"style":null,
"prjCoordSys":null,
"id":0,
"type":"POINT",
"points":[
{
"x":1.2688789880426234E7,
"y":489371.98562014854
}
]
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 coordTransferResult 资源是否存在，或者客户端是否有权限访问 coordTransferResult 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 coordTransferResult 资源是否支持<format>格式的表述。
## 请参见
- [coordTransfer](../coordTransfer.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)