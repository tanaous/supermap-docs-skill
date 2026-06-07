# upstreamCirticalFaclilities

## URI
<[fa3DNetworkDataName_uri](fa3DNetworkDataName.htm#URI)>/upstreamcirticalfaclilities[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[fa3DNetworkDataName](fa3DNetworkDataName.htm)
## 介绍
upstreamCirticalFaclilities 为三维设施网络分析的上游关键设施查找资源，通过该资源您可以查找上游关键设施 
。
上游关键设施查找，即查找给定弧段或节点的上游中的关键设施结点，返回关键设施结点 ID 数组及其下游弧段 
ID 数组。
支持的方法：
- [GET](#GET 请求)：获取关键设施结点 ID 数组及其下游弧段 
ID 数组。
- [HEAD](#HEAD 请求)：检查 upstreamCirticalFaclilities 
资源是否存在，或权限是否可以访问 upstreamCirticalFaclilities 资源。
支持的表述格式：RJSON、JSON、XML、HTML、JSONP。
## 资源层次
![](../../../../../assets/images/root/facilityAnalyst3D/fa3DNetworkDataName/upstreamCirticalFaclilities.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/networkAnalyst3D-Pipe3D/rest/facilityanalyst3d/{networkDataName}/upstreamcirticalfaclilities.rjson
### ](../../root.htm)GET 请求
获取关键设施结点 ID 数组及其下游弧段 ID 数组。
#### 请求参数
对 upstreamCirticalFaclilities 资源执行 GET 请求，需要在 URI 中包含一些参数，参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sourceNodeIDs | int[] | 【必选参数】 
三维设施网络分析中指定的设施结点 ID 数组，不能为空，如 [84,85]。 |
| edgeID | int | 【必选参数】 
三维设施网络分析中指定的弧段 ID ，在请求 URI 中只能包含 edgeID 
参数或 nodeID 参数，两者不能同时存在。 |
| nodeID | int | 【必选参数】 
三维设施网络分析中指定的节点 ID ，在请求 URI 中只能包含 nodeID 
参数 与 edgeID 参数，两者不能同时存在。 |
| isUncertainDirectionValid | boolean | 三维设施网络分析中指定不确定流向是否有效。指定为 true，表示不确定流向有效，遇到不确定流向时分析继续进行；指定为 
false，表示不确定流向无效，遇到不确定流向将停止在该方向上继续查找。默认为 false ，流向字段的值为 2 时代表该弧段的流向为不确定流向。 |
#### 响应结构
对 upstreamCirticalFaclilities 资源执行 GET 请求，在响应消息的实体主体里包括关键设施结点 
ID 数组及其下游弧段 ID 数组信息，表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| cost | double | 三维设施网络分析结果中的耗费。 |
| edges | int[] | 三维设施网络分析结果中的弧段 ID 数组。 |
| nodes | int[] | 三维设施网络分析结果中的结点 ID 数组。 |
#### 响应示例
对 upstreamCirticalFaclilities 资源执行 GET 请求（http://localhost:8090/iserver/services/networkAnalyst3D-Pipe3D/rest/facilityanalyst3d/Network@Pipe3D/upstreamcirticalfaclilities.rjson?sourceNodeIDs=%5B459,460,461%5D&nodeID=461&isUncertainDirectionValid=true），返回 
rjson 格式的资源描述如下：
{
"cost": 0,
"edges": [
256,
257,
258,
259
],
"nodes": [460]
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 upstreamCirticalFaclilities 资源是否存在，或者客户端是否有权限访问 
upstreamCirticalFaclilities 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 
upstreamCirticalFaclilities 资源是否支持<format>格式的表述。
## 请参见
- [fa3DNetworkDataName](fa3DNetworkDataName.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)