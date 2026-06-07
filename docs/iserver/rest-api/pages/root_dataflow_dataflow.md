# dataflow

## URI
[<services_uri>](../../services.htm#URI)/{servicename}/dataflow[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[services](../../services.htm)
## 子资源
[broadcast](broadcast/broadcast.htm)，[subscribe](subscribe/subscribe.htm)
## 介绍
dataflow 资源表示数据流服务的根节点，是使用数据流服务的入口。{ServiceName}表示服务名，在发布数据流服务时指定。
支持的方法：
- [GET](#GET 请求)：获取数据流服务的入口。
- [HEAD](#HEAD 请求)：检查 dataflow 资源是否存在，或权限是否可以访问 
dataflow 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
## ![](../../../../assets/images/root/dataflow/dataflow.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/{ServiceName}/dataflow.rjson
### ](dataflow.htm)GET 请求
获取数据流服务的入口。
#### 响应结构
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| capabilities | String | 数据流服务包含的服务能力 |
| featureMetaData | String | 元数据 |
| StreamUrls | String | 数据流服务地址 |
#### 响应示例
对 dataflow 资源：http://supermapiserver:8090/iserver/services/data/dataflow.rjson 
执行GET 请求，返回 rjson 格式的资源描述如下：
{
"capabilities": "broadcast,subscribe",
"featureMetaData": {
"epsg": 3857,
"featureType": "Point",
"fieldInfos": [
{
"name": 
"id",
"type": 
"TEXT"
},
{
"name": 
"direction",
"type": 
"INT32"
},
{
"name": 
"originLabel",
"type": 
"TEXT"
},
{
"name": 
"destinationLabel",
"type": 
"TEXT"
},
{
"name": 
"groundspeed",
"type": 
"INT32"
},
{
"name": 
"x",
"type": 
"DOUBLE"
},
{
"name": 
"y",
"type": 
"DOUBLE"
},
{
"name": 
"z",
"type": 
"DOUBLE"
},
{
"name": 
"datetime",
"type": 
"TEXT"
}
],
"idFieldName": "id"
},
"streamUrls": [{
"transpot": "ws",
"url": "ws://192.168.17.116:8091/iserver/services/data/dataflow/"
}]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 dataflow 资源是否存在，或者客户端是否有权限访问 dataflow 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 dataflow 资源是否支持<format>格式的表述。
## WebSocket 连接
建立 WebSocket 连接，其中，supermapiserver 是服务器名。
ws://supermapiserver:8800/iserver/services/{ServiceName}/dataflow
## 请参见
- [services](../../services.htm)，[broadcast](broadcast/broadcast.htm)，[subscribe](subscribe/subscribe.htm)
- [客户端构建 
REST 请求](../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)