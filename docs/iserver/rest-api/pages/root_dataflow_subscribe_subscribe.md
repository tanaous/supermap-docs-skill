# subscribe

## URI
- 
<[dataflow_uri](../dataflow.htm#URI)>/subscribe[.<format>]
- 
ws://{ip}:{port}/iserver/services/{ServiceName}/dataflow/subscribe
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataflow](../dataflow.htm)
## 介绍
subcribe 资源表示数据流服务的订阅入口，为客户端提供了连接到数据流服务的能力，客户端订阅订阅数据流服务后可自动接收服务器广播的数据。
客户端通过 Websocket 协议与服务器进行数据传输，可在URI中指定过滤属性、动态投影等参数。
支持的方法：
- [GET](#GET 请求)：获取数据流服务的订阅入口。
- [HEAD](#HEAD 请求)：检查 subscribe 资源是否存在，或权限是否可以访问 
subscribe 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/root/dataflow/subscribe/subscribe.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/{ServiceName}/rest/dataflow/broadcast.rjson
### ](../../../services.htm)GET 请求
获取数据流服务的订阅入口。
#### 响应结构 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| subscribeUrl | String | 订阅服务的URL |
#### 响应示例
对 subscribe 资源：http://supermapiserver:8090/iserver/services/data/dataflow/subscribe.rjson 
执行GET 请求，返回 rjson 格式的资源描述如下：
{"subscribeUrl": "ws://192.168.17.116:8091/iserver/services/data/dataflow/subscribe"}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 subscribe 资源是否存在，或者客户端是否有权限访问 subscribe 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 subscribe 资源是否支持<format>格式的表述。
## WebSocket 连接
对如下 URI 执行 WS 请求，其中，supermapiserver 是服务器名。
ws://supermapiserver:8091/iserver/services/{ServiceName}/dataflow/subscribe
#### 请求参数
建立 WebSocket 连接，获取服务器广播数据，可以在 URI 中包含如下过滤参数：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| excludeField | String | 用于指定过滤参数。在请求URI中传入此参数，客户端接收到的信息将不包含过滤掉的字段。 |
| geometry | String | 指定几何范围。 |
| prjCoordSys | String | 通过此参数指定客户端接收到的坐标参考系。 |
| token | String | 订阅数据流服务所需的token。可参考[获取token](../../../../../Subject_introduce/Security/config_role/token/Token.htm)。 |
#### 请求示例
可在URI中指定参数，以获取所需信息：ws://supermapiserver:8091/iserver/services/{ServiceName}/dataflow/subscribe?geometry={'bounds':{'bottom':14.0,'center':{'x':20.0,'y':20.0},'height':12.0,'left':14.0,'leftBottom':{'x':14.0,'y':14.0},'right':26.0,'rightTop':{'x':26.0,'y':26.0},'top':26.0,'valid':true,'width':12.0},'center':{'x':20.0,'y':20.0},'id':1,'partTopo':[1],'parts':[4],'points':[{'x':26.0,'y':26.0},{'x':26.0,'y':14.0},{'x':14.0,'y':14.0},{'x':14.0,'y':26.0}],'type':'REGION'}&excludeField=SMSDRIW,SMSDRIN,SMSDRIE,SMSDRIS,SMUSERID,SMAREA,SMPERIMETER,SMGEOMETRYSIZE,SMGEOPOSITION&prjCoordSys={epsg:3857}
也可在 WebSocket 中传入相关参数，通过 WebSocket 传入过滤参数，需包含在 filterParam 
节点中：
{
filterParam:
{
"excludeField":["SMSDRIW","SMSDRIN","SMSDRIE","SMSDRIS","SMUSERID","SMAREA","SMPERIMETER","SMGEOMETRYSIZE","SMGEOPOSITION"],
"geometry":
{
"bounds":
{
"bottom":-6.0,
"center":{"x":0.0,"y":0.0},
"height":12.0,
"left":-6.0,
"leftBottom":
{
"x":-6.0,
"y":-6.0
},
"right":6.0,
"rightTop":
{
"x":6.0,
"y":6.0
},
"top":6.0,
"valid":true,
"width":12.0
},
"center":
{
"x":0.0,
"y":0.0
},
"id":1,
"partTopo":[1],
"parts":[4],
"points":[{"x":6.0,"y":6.0},{"x":6.0,"y":-6.0},{"x":-6.0,"y":-6.0},{"x":-6.0,"y":6.0}],"type":"REGION"
}
}
}
## 请参见
- [dataflow](../dataflow.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)