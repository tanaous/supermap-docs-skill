# edgeWeight

## URI
[<networkDataName_uri>](networkDataName.htm#URI)/edgeweight/{edgeID}/fromnode/{fromNodeID}/tonode/{toNodeID}/weightfield/{weightField}[.<format>]
## 支持的方法
[PUT](#PUT 请求)
## 父资源
[networkDataName](networkDataName.htm)
## 介绍
edgeWeight 资源表示一个弧段的权值，设置参数后，对 edgeWeight  资源执行 PUT 请求，可以更新一个弧段的权值。
支持的方法：
- [PUT](#PUT 请求)：更新一个弧段的权值。
支持的表述格式：rjson、json、html、xml。
## 资源层次
!\[](../../../../../assets/images/root/networkanalyst/networkDataName/edgeWeight.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，RoadNet@Changchun 为需要更新的网络数据名称，time 为在配置文件中设置的 weightField name。
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/edgeweight/20/fromnode/26/tonode/109/weightfield/time.rjson
### ](../../root.htm)PUT 请求
更新一个弧度的权值。
**请求参数**
对 edgeWeight 资源执行 PUT 请求，需要在 URI 中包含一些参数，其中“？”之前传递的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| edgeID | int | 目标弧段 ID。 |
| fromNodeID | int | 目标弧段的起始结点 ID。 |
| toNodeID | int | 目标弧段的终止结点 ID。 |
| weightField | String | 目标弧段对应的权值信息（即 WeightFieldInfo）的名称 |
请求体中传输的参数为一个 double 值，指定新的权值。
**响应结构**
对 edgeWeight 资源执行 PUT 请求，在响应消息的实体主体里是一个更新成功与否的描述集，结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 显示更新弧段权值是否成功。 |
| errorMsg | String | 如果出错，错误的详细信息。 |
| code | int | 错误的响应码。 |
**响应示例**
对 RoadNet@Network 数据集进行更新弧段权值操作，即对如下 URI 执行 PUT 请求：
http://supermapiserver:8090/iserver/services/transportationanalyst-sample/rest/networkanalyst/RoadNet@Changchun/edgeweight/20/fromnode/26/tonode/109/weightfield/time.rjson
请求体中指定新的权值如下：
30.0
更新成功的情况下，返回 rjson 格式的操作结果描述如下：
{
"succeed": true
}
## 请参见
- [networkDataName](networkDataName.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)