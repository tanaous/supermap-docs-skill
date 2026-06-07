# broadcast

## URI
- 
<[dataflow_uri](../dataflow.htm#URI)>/broadcast[.<format>]
- 
ws://{ip}:{port}/iserver/services/{ServiceName}/dataflow/broadcast
## 支持的方法
[GET](#GET 请求)、[POST](#POST请求1)、[HEAD](#HEAD 请求)
## 父资源
[dataflow](../dataflow.htm)
## 介绍
broadcast 资源是数据流服务的广播入口，使管理员用户能够通过数据流服务向客户端广播数据。broadcast 
资源支持接入 GeoJSON 表述格式的数据。
支持的方法：
- [GET](#GET 请求)：获取数据流的广播入口。
- [POST](#POST请求1)： 向客户端广播数据。
- [HEAD](#HEAD 请求)：检查 broadcast 资源是否存在，或权限是否可以访问 
broadcast 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/root/dataflow/broadcast/broadcast.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/{ServiceName}/dataflow/broadcast.rjson
### ](../../../services.htm)GET 请求
获取数据流的广播入口。
### POST  请求
对 broadcast 资源执行 POST 请求，可向订阅用户广播数据。数据为带时间戳的Feature。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 broadcast 资源是否存在，或者客户端是否有权限访问 broadcast 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 broadcast 资源是否支持<format>格式的表述。
## WebSocket 连接
建立 WebSocket 连接，其中，supermapiserver 是服务器名。
ws://supermapiserver:8091/iserver/services/{ServiceName}/dataflow/broadcast
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| token | String | 广播数据时的认证信息。参考[获取token](../../../../../Subject_introduce/Security/config_role/token/Token.htm) |
## 请参见
- [dataflow](../dataflow.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)