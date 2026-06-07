# burstAnalyse

## URI
[<networkDataName_uri>](networkDataName.htm#URI)/burstAnalyse[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[networkDataName](networkDataName.htm)
## 介绍
burstAnalyse资源表示爆管分析功能，设置参数后，对burstAnalyse资源执行GET请求，可以获取影响爆管位置上下游的关键设施点和弧段、受爆管位置影响的上下游的普通设施点和弧段。
支持的方法：
- [GET](#GET 请求)：获取爆管分析结果。
- [HEAD](#HEAD 请求)：检查 burstAnalyse 资源是否存在，或权限是否可以访问 burstAnalyse 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/burstAnalyse.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/facilityanalyst/rest/networkanalyst/WaterNet@FacilityNet/burstanalyse.rjson
### ](../../root.htm)GET 请求
获取影响爆管位置上下游的关键设施点和弧段、受爆管位置影响的上下游的普通设施点和弧段。
**请求参数**
对 burstAnalyse 资源执行 GET 请求，需要在 URI 中包含一些参数，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| sourceNodeIDs | int | 【必填参数】 指定的设施结点 ID 数组 |
| edgeID | int | 【必填参数】 交通网络分析中指定的弧段 ID ，在请求 URI 中只能包含 edgeID 参数或 nodeID 参数，两者不能同时存在。 |
| nodeID | int | 【必填参数】 交通网络分析中指定的节点 ID ，在请求 URI 中只能包含 nodeID 参数 与 edgeID 参数，两者不能同时存在。 |
| isUncertainDirectionValid | boolean | 指定不确定流向是否有效。指定为 true，表示不确定流向有效，遇到不确定流向时分析继续进行；指定为 false，表示不确定流向无效，遇到不确定流向将停止在该方向上继续查找。 |
**响应结构**
执行爆管分析功能，返回的操作结果表述的结构如下:
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| criticalNodes | int | 爆管分析中影响爆管位置上下游的关键设施点。 |
| edges | int | 上下游中影响爆管位置的弧段和受爆管位置影响的弧段。 |
| normalNodes | int | 爆管分析中受爆管位置影响的普通设施点。 |
**响应示例**
对 WaterNet@FacilityNet 数据集执行爆管分析，即对如下 URI 执行 GET 请求：
http://supermapiserver:8090/iserver/services/facility/rest/networkanalyst/WaterNet@FacilityNet/burstanalyse.rjson?sourceNodeIDs=%5B84,85%5D&edgeID=310&isUncertainDirectionValid=false
则返回的响应结果如下：
{
"criticalNodes": [],
"edges": [
207,
208,
209,
213,
223,
224,
225,
234,
280,
295,
299,
310,
336,
337,
344,
347,
352,
354,
358,
360,
365,
375,
382,
387,
408,
409,
410,
412,
416,
417,
419,
420,
422,
452,
457,
459,
465,
470,
487,
488,
489,
492,
493
],
"normalNodes": []
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 burstAnalyse 资源是否存在，或者客户端是否有权限访问 burstAnalyse 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 burstAnalyse 资源是否支持<format>格式的表述。
## 请参见
- [networkDataName](networkDataName.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)