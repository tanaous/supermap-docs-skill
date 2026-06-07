# imageValue

## URI
<[dataset_uri](../dataset.htm#URI)>/imageValue[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 介绍
imageValue 表示影像数据集的像素信息值。通过对 imageValue 资源执行 GET 请求，可查询某一地理位置所对应的像素值信息，包括波段值、影像行、影像列、颜色等。
支持的方法：
- [GET](#GET 请求)：获取某一地理位置所对应的像素值信息。
- [HEAD](#HEAD 请求)：检查 imageValue 资源是否存在，或权限是否可以访问 
imageValue 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/imageValue/imageValue.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/data-World/rest/data/datasources/World/datasets/WorldEarth/imageValue
### ](../../../../../../root.htm)GET 请求
获取某一地理位置所对应的像素值信息。
#### 请求参数
对 imageValue 资源执行 GET 请求，获取影像信息，可以在 URI 中包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| x | double | 将查询的地理位置的X坐标 |
| y | double | 将查询的地理位置的Y坐标 |
#### 响应结构
对 imageValue 资源执行 GET 请求，返回的资源表述的结构如下 ：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| bounds | int[ ] | 波段值。非真彩色影像时，返回该值 |
| color | [Color](../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Color.html) | 颜色值，采用RGBA表示。当为24位或32位真彩色影像时，返回该值。 |
| column | int | 该像素的列号。 |
| row | int | 该像素的行号。 |
| value | int | 像素整数值。 |
#### 响应示例1
对于24位或32位真彩色影像，将返回颜色值信息。例如获取 WorldEarth 数据集的像素信息。对imageValue资源：：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/WorldEarth/imageValue.rjson?x=-110&y=50 
执行 GET 请求，用 rjson 表述如下：
{
"bounds": null,
"color": {
"alpha": 
255,
"blue": 
42,
"green": 
72,
"red": 
77
},
"column": 398,
"row": 227,
"value": 5064746
}
#### 响应示例2
对于其他像素格式的影像，将返回波段值 bounds。 例如获取 worldimage 数据集的像素信息。对imageValue资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/worldimage/imageValue.rjson?x=-110&y=50 
执行 GET 请求，响应结果如下： 
{
"bounds": [
233,
227,
198
],
"color": null,
"column": 2099,
"row": 1199,
"value": 0
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 imageValue 资源是否存在，或者客户端是否有权限访问 imageValue 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 imageValue 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)
- [客户端构建 
REST 请求](../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../../../../resource_hierarchy.htm)