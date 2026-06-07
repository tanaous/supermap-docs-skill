# downstreamCirticalFaclilities

## URI
[<networkDataName_uri>](networkDataName.htm#URI)/downstreamcirticalfaclilities[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[networkDataName](networkDataName.htm)
## 介绍
downstreamCirticalFaclilities 为网络分析的下游关键设施查找资源，通过该资源您可以查找下游关键设施 。
下游关键设施查找，即查找给定弧段或节点的下游中的关键设施结点，返回关键结点 ID 数组及其下游弧段 ID 数组。
支持的方法：
- [GET](#GET 请求)：获取关键设施结点 ID 数组及其下游弧段 ID 数组。
- [HEAD](#HEAD 请求)：检查 downstreamCirticalFaclilities 资源是否存在，或权限是否可以访问 downstreamCirticalFaclilities 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/downstreamcirticalfaclilities.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/facility/rest/networkanalyst/WaterNet@FacilityNet/downstreamcirticalfaclilities.rjson
### ](../../root.htm)GET 请求
获取关键设施结点 ID 数组及其下游弧段 ID 数组。
**请求参数**
对 downstreamCirticalFaclilities 资源执行 GET 请求，需要在 URI 中包含一些参数，参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sourceNodeIDs | int | 【必填参数】 指定的设施结点 ID 数组 |
| edgeID | int | 【必填参数】 网络分析中指定的弧段 ID ，在请求 URI 中只能包含 edgeID 参数或 nodeID 参数，两者不能同时存在。 |
| nodeID | int | 【必填参数】 网络分析中指定的节点 ID ，在请求 URI 中只能包含 nodeID 参数 与 edgeID 参数，两者不能同时存在。 |
| isUncertainDirectionValid | boolean | 指定不确定流向是否有效。指定为 true，表示不确定流向有效，遇到不确定流向时分析继续进行；指定为 false，表示不确定流向无效，遇到不确定流向将停止在该方向上继续查找。 |
**响应结构**
对 downstreamCirticalFaclilities 资源执行 GET 请求，在响应消息的实体主体里包括关键设施结点 ID 数组及其下游弧段 ID 数组信息，表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| cost | double | 网络分析结果中的耗费。 |
| edges | int | 网络分析结果中的弧段 ID 数组。 |
| normalNodes | int | 网络分析结果中的结点 ID 数组。 |
**响应示例**
对 upstreamCirticalFaclilities 资源执行 GET 请求（http://supermapiserver:8090/iserver/services/facility/rest/networkanalyst/WaterNet@FacilityNet/downstreamcirticalfaclilities.rjson?sourceNodeIDs=%5B75,76,77%5D&edgeID=75&isUncertainDirectionValid=true），返回 rjson 格式的资源描述如下：
则返回的响应结果如下：
{
"cost": 0,
"edges": [
75,
92,
101,
102
],
"nodes": [76]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 downstreamCirticalFaclilities 资源是否存在，或者客户端是否有权限访问 downstreamCirticalFaclilities 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 downstreamCirticalFaclilities 资源是否支持<format>格式的表述。
## 请参见
- [networkDataName](networkDataName.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)