# transferNetwork

## URI
<[trafficTransferAnalyst_uri](../trafficTransferAnalyst.htm#URI)>/{networkName}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[trafficTransferAnalyst](../trafficTransferAnalyst.htm)
## 子资源
[transferSolutions](transferSolutions.htm)、[transferPath](transferPath.htm)、[stops](stops/stops.htm)
## 介绍
transferNetwork 资源表示一个可用于交通换乘分析的换乘网络数据，通过执行 GET 请求，可以获取本换乘网络的描述信息，以及所支持的交通换乘分析功能。
支持的方法：
- [GET](#GET 请求)：获取当前换乘网络的描述信息，以及所支持的交通换乘分析功能。
- [HEAD](#HEAD 请求)：检查 transferNetwork 
资源是否存在，或权限是否可以访问 transferNetwork 资源。
支持的表述格式：rjson、json、html、xml。
## 资源层次
![](../../../../../assets/images/root/traffictransferanalyst/img/T_transferNetwork.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun.rjson
### ](../../root.htm)GET 请求
获取当前换乘网络的描述信息，以及所支持的交通换乘分析功能。
#### 响应结构
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 子资源换乘路线的名称。 |
| path | String | 子资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
| visible | boolean | 是否可见。 |
| childResourceInfos | ChildResourceInfo | 子数据源信息。 |
| networkName | String | 公交网络名字。 |
#### 响应示例
对 transferNetwork 资源 http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun.rjson，执行 
GET 请求，则返回的 rjson 表述如下：
{
"childResourceInfos": 
[{
"name": 
"solutions",
"path": 
"http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/solutions",
"resourceConfigID": 
null,
"resourceType": 
null,
"supportedMediaTypes": 
null
},
{
"name": 
"path",
"path": 
"http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/path",
"resourceConfigID": 
null,
"resourceType": 
null,
"supportedMediaTypes": 
null
},
{
"name": 
"stops",
"path": 
"http://supermapiserver:8090/iserver/services/traffictransferanalyst-sample/restjsr/traffictransferanalyst/Traffic-Changchun/stops",
"resourceConfigID": 
null,
"resourceType": 
null,
"supportedMediaTypes": 
null
}],
"networkName": "Traffic-Changchun"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 transferNetwork 资源是否存在，或者客户端是否有权限访问 transferNetwork 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 transferNetwork 资源是否支持<format>格式的表述。
## 请参见
- [trafficTransferAnalyst](../trafficTransferAnalyst.htm)、[transferPath](transferPath.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 
服务资源层次结构](../../../resource_hierarchy.htm)