# webPrinting

## URI
<[root_uri](../root.htm)>/webprinting[.<format>]
SuperMap iServer 启动后，Web 打印服务模块的默认 REST 服务访问 URI 为：http://<server>:8090/iserver/services/webprinting/rest/webprinting。
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[root](../root.htm)
## 子资源
[v1](v1.htm)
## 介绍
webPrinting 资源表示 Web 打印服务的入口，通过对 webprinting 资源执行 GET 
请求，能够得到 SuperMap iServer Web 打印服务支持的所有接口版本资源。
支持的方法：
- [GET](#GET 请求)：获取 Web 打印服务支持的所有接口版本资源。
- [HEAD](#HEAD 请求)：检查 webPrinting 
资源是否存在，或权限是否可以访问 webPrinting 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../assets/images/root/webprinting/img/webPrinting.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/webprinting/rest/webprinting.rjson
### ](../root.htm)GET 请求
获取 Web 打印服务支持的接口版本资源列表。
#### 响应结构
对 webPrinting 资源执行 GET 请求，在响应体里是一个接口版本资源描述集，其中单个接口版本资源描述的结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| resourceConfigID | String | 资源配置项 ID。 |
| supportedMediaTypes | String | 支持的媒体类型。 |
| path | String | 接口版本资源的访问路径。 |
| name | String | 资源的名称。 |
| resourceType | String | 资源类型。 |
#### 响应示例
对示例 webPrinting 资源：http://supermapiserver:8090/iserver/services/webprinting/rest/webprinting.rjson，执行 
GET 请求，返回 rjson 格式的资源描述如下：
[
{
"resourceConfigID": 
"v1",
"supportedMediaTypes": 
null,
"path": 
"http://192.168.120.40:8091/iserver/services/webprinting/rest/webprinting/v1",
"name": 
"v1",
"resourceType": 
null
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 webPrinting 资源是否存在，或者客户端是否有权限访问 webPrinting 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 webPrinting 资源是否支持<format>格式的表述。
## 请参见
- [root](../root.htm)、[v1](v1.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)