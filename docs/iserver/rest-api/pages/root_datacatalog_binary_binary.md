# binary

## URI
[<datacatalog_uri>](../bigdata.htm#URI)/binary[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataCatalog](../bigdata.htm)
## 子资源
[dataImport](dataimport/dataimport.htm)、[dataExport](dataexport/dataexport.htm)、[datas](datas/datas.htm)
## 介绍
binary 资源表示二进制型数据，通过对 binary 执行 GET 请求，可以获取二进制数据导入操作和导出操作的入口。
支持的方法：
- [GET](#GET 请求)：获取所有二进制数据导入操作和导出操作的入口。
- [HEAD](#HEAD 请求)：检查 binary 资源是否存在，或权限是否可以访问 binary 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/datacatalog/binary/binary.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/binary.rjson
### ](../../root.htm)GET 请求
获取二进制数据导入操作和导出操作的入口。
#### 响应结构
对 binary 资源执行 GET 请求，返回的是二进制数据导入和导出的入口，资源表述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| ChildResourceInfo | List<ChildResourceInfo> | 导入或导出入口的信息 |
#### 响应示例
对 binary 资源：http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/binary.rjson 执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"name": "dataimport",
"path": "http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/binary/dataimport",
"resourceConfigID": "dataimport",
"resourceType": null,
"supportedMediaTypes": null
},
{
"name": "dataexport",
"path": "http://supermapiserver:8090/iserver/services/datacatalog/rest/datacatalog/binary/dataexport",
"resourceConfigID": "dataexport",
"resourceType": null,
"supportedMediaTypes": null
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 binary资源是否存在，或者客户端是否有权限访问 binary资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 binary资源是否支持<format>格式的表述。
## 请参见
- [dataCatalog](../bigdata.htm)，[dataImport](dataimport/dataimport.htm)，[dataExport](dataexport/dataexport.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)