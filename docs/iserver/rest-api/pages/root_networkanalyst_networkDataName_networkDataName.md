# networkDataName

## URI
- 
[<networkanalyst_uri>](../networkanalyst.htm#URI)/{networkdataName}[.<format>]
- 
[<networkanalyst_uri>](../networkanalyst.htm#URI)/{networkdataIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[networkAnalyst](../networkanalyst.htm#URI)
## 子资源
[closestFacility](closestfacility.htm)、[connectedEdges](connectedEdges.htm)、[edgeWeight](edgeWeight.htm)、[location](location.htm)、[model](model.htm)、[MTSPPath](MTSPPath.htm)、[path](path.htm)、[serviceArea](serviceArea.htm)、[traceDown](traceDown.htm)、[traceUp](traceUp.htm)、[TSPPath](TSPPath.htm)、[turnNodeWeight](turnNodeWeight.htm)、[weightMatrix](weightMatrix.htm)、[burstAnalyse](burstAnalyse.htm)、[downstreamCirticalFacilities](downstreamcirticalfaclilities.htm)、[upstreamCirticalFacilities](upstreamcirticalfaclilities.htm)
## 介绍
networkDataName 资源表示一个可用于交通网络分析的网络数据，通过对 {networkDataName} 或{networkdataIndex}资源执行 GET 请求，可以获取本网络数据集的描述信息，如：投影信息、转向权重字段名称、权重名称，以及所支持的所有交通网络分析功能。
支持的方法：
- [GET](#GET 请求)：获取本网络数据集的描述信息，以及所支持的交通网络分析功能。
- [HEAD](#HEAD 请求)：检查 networkDataName 资源是否存在，或权限是否可以访问 networkDataName 资源。
支持的表述格式：rjson、json、html、xml、jsonp。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/networkDataName.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，RoadNet@Changchun 为网络数据集名称。
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun.rjson
### ](../../root.htm)GET 请求
获取本网络数据支持的所有交通网络分析功能。
**请求参数**
无。
**响应结构**
对 networkDataName 资源执行 GET 请求，在响应消息的实体主体里是一个交通网络分析功能描述集，其中单个交通网络分析功能描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| weightNames | String[] | 权重名称。 |
| turnWeightFieldNames | String[] | 转向权重字段名称。 |
| prj | PrjCoordSys | 网络数据的投影信息。 |
**响应示例**
对 networkDataName 资源执行 GET 请求，返回 rjson 格式的资源描述如下：
{
"prj": {
"coordSystem": null,
"coordUnit": "METER",
"distanceUnit": "METER",
"epsgCode": -1000,
"name": "Planar Coordinate System---m",
"projection": null,
"projectionParam": null,
"type": "PCS_NON_EARTH"
},
"turnWeightFieldNames": ["TurnCost"],
"weightNames": [
"length",
"time"
]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 networkDataName 资源是否存在，或者客户端是否有权限访问 networkDataName 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 networkDataName 资源是否支持<format>格式的表述。
## 请参见
- [networkAnalyst](../networkanalyst.htm#URI)、[closestFacility](closestfacility.htm)、[connectedEdges](connectedEdges.htm)、[edgeWeight](edgeWeight.htm)、[location](location.htm)、[model](model.htm)、[MTSPPath](MTSPPath.htm)、[path](path.htm)、[serviceArea](serviceArea.htm)、[traceDown](traceDown.htm)、[traceUp](traceUp.htm)、[TSPPath](TSPPath.htm)、[turnNodeWeight](turnNodeWeight.htm)、[weightMatrix](weightMatrix.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)