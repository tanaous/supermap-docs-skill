# jobs

## URI
<[geoprocessing_uri](../geoprocessing.htm#URI)>/gp/v2/jobs[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[georpocessing](../geoprocessing.htm)
## 介绍
处理自动化任务资源表示处理自动化服务任务的根目录，列出所有处理自动化任务。
支持的方法：
- [GET](#GET 请求)：获取所有同步和异步执行的处理自动化服务任务列表。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/root/geoprocessing/jobs/jobs.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/geoprocessing/restjsr/gp/v2/jobs.rjson
### ](../../root.htm)GET 请求
获取处理自动化任务列表。
#### 请求参数
发送请求时，包含如下参数
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| processTitle | String | 处理自动化任务所用工具名称，可选填 |
| startTime | String | 任务开始时间，可选填 |
| endTime | String | 任务结束时间，可选填 |
| runStates | List<String> | 执行状态集合，可选填 |
| isQuery | Boolean | 是否查询，可选填 |
#### 响应结构
对处理自动化任务资源执行GET请求，在响应消息的实体主体里是一个处理自动化任务资源描述集，其中单个资源描述的结构如下： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| jobID | String | 处理自动化任务ID |
| state | Object | 该任务的状态，包括执行状态、起止时间、耗时等 |
| processID | String[] | 处理自动化模型的ID |
| progress | Object | 处理自动化任务进度信息 |
其中progress结构为： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| percent | int | 处理自动化任务执行进度百分比 |
| message | String | 处理自动化任务执行进度信息 |
#### 响应示例
对处理自动化任务资源执行GET请求，返回rjson格式的资源描述如下：
{
"jobID": "gp-20200908-195218-167F2",
"processID": "",
"processTitle": "[TownCluster]",
"progress": {
"percent": 
60,
"message": 
""
},
"state": {
"formatStartTime": 
"2020-09-08 19:52:18",
"errorStackTrace": 
null,
"success": 
true,
"startTime": 
1599565938883,
"formatEndTime": 
"2020-09-08 19:52:19",
"endTime": 
1599565939287,
"runState": 
"FINISHED",
"errorMsg": 
null,
"elapsedTime": 
0
}
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 jobs 资源是否存在，或者客户端是否有权限访问 jobs 资源。通过对加.<format>的 
URI 执行 HEAD 请求，还可以快速判断 jobs 资源是否支持<format>格式的表述。
## 请参见
- [georpocessing](../geoprocessing.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)
- [基于Token访问受保护的REST服务资源](../../../Token_RESTServices.htm)