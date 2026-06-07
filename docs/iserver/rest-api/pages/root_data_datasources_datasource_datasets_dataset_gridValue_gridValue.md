# gridValue

## URI
<[dataset_uri](../dataset.htm#URI)>/gridValue[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 介绍
gridValue 表示栅格信息值。通过对 gridValue 资源执行 GET 请求，可查询某一地理位置所对应的栅格单元的信息，包括栅格值、栅格行、栅格列。
支持的方法：
- [GET](#GET 请求)：获取某一地理位置所对应的栅格单元信息。
- [HEAD](#HEAD 请求)：检查 gridValue 资源是否存在，或权限是否可以访问 
gridValue 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/gridValue/gridValue.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/data-World/rest/data/datasources/World/datasets/LandCover/gridValue.rjson
### ](../../../../../../root.htm)GET 请求
获取某一地理位置所对应的栅格单元信息。
#### 请求参数
对 gridValue 资源执行 GET 请求，获取栅格信息，可以在 URI 中包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| X坐标 | double | 将查询的地理位置的X坐标值 |
| Y坐标 | double | 将查询的地理位置的Y坐标值 |
#### 响应结构
对 gridValue 资源执行 GET 请求，返回的资源表述的结构如下 :
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| column | int | 查询的地理位置所对应的栅格行号 |
| row | int | 查询的地理位置所对应的栅格列号 |
| value | double | 查询的地理位置所对应的栅格值 |
| centerPoint | Point2D | 柵格中心点坐标 |
#### 响应示例
对 gridValue 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/LandCover/gridValue.rjson?x=-110&y=50执行 
GET 请求，获取栅格单元信息的 rjson 表述如下：
{
"column": 1120,
"row": 640,
"value": 10
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 gridValue 资源是否存在，或者客户端是否有权限访问 gridValue 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 gridValue 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)
- [客户端构建 
REST 请求](../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../../../../resource_hierarchy.htm)