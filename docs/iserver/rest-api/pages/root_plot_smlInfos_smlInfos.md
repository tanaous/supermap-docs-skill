# smlInfos

## URI
[<plot_uri>](../plot.htm#URI)/smlInfos[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[plot](../plot.htm)
## 子资源
[smlFile](smlFile.htm)
## 介绍
smlInfos资源用于获取所有态势图文件信息，或指定初始索引和个数的态势图文件信息。
支持的方法：
- [GET](#GET 请求)：获取所有态势图文件信息或指定初始索引和个数的态势图文件信息。
- [HEAD](#HEAD 请求)：检查 smlInfos 资源是否存在，或权限是否可以访问 smlInfos 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/plot/smlInfos/smlInfos.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/plot-TY/rest/plot/smlInfos.rjson
### ](../../root.htm)GET 请求
获取所有态势图文件信息。当您配置start、count参数时，则获取指定初始索引和个数的态势图文件信息。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| start | int | 开始获取服务器态势图文件。 |
| count | int | 指定获取态势图文件的数量。 |
#### 响应结构
对smlInfos资源执行 GET 请求，在响应消息的实体主体里是一个态势图文件集，其中单个态势图文件的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| SMLname | String | 态势图文件名称 |
| SMLSeclevel | String | 态势图的密级 |
| SMLFileName | String | 态势图文件名 |
| SMLDesc | String | 态势图描述 |
| SMLAuthor | String | 态势图创建作者 |
| SMLTime | String | 态势图创建时间 |
| SMLDepat | String | 态势图创建单位 |
#### 响应示例
对smlInfos资源：http://supermapiserver:8090/iserver/services/plot-TY/rest/plot/smlInfos.rjson，执行GET请求，则返回的rjson格式表述如下：
[
{
"SMLAuthor": "",
"SMLDepat": "",
"SMLDesc": "",
"SMLFileName": "plottingSave",
"SMLName": "",
"SMLSeclevel": "",
"SMLTime": ""
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 smlInfos 资源是否存在，或者客户端是否有权限访问 smlInfos 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 smlInfos 资源是否支持<format>格式的表述。
## 请参见
- [plot](../plot.htm)、[smlFile](smlFile.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)