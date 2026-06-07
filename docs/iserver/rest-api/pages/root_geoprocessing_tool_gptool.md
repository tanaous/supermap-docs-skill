# tool

## URI
<[geoprocessing_uri](../geoprocessing.htm#URI)>/gp/v2/{toolID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[georpocessing](../geoprocessing.htm)
## 子资源
[execute](execute/gpexecute.htm)、[jobs](jobs/tooljobs.htm)
## 介绍
tool资源对应相应的处理自动化工具描述信息，包含该工具的名称、描述、输入参数、环境参数和输出结果相关参数。
支持的方法：
- [GET](#GET 请求)：根据处理自动化工具ID（ToolID）获取对应处理自动化工具的名称、描述、输入参数、环境参数和输出结果相关参数等信息。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/root/geoprocessing/tool/tool.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/geoprocessing/restjsr/gp/v2/bdt-vec-io:countrdd.rjson
### ](../../root.htm)GET 请求
获取处理自动化工具的描述信息，包括工具的ID、名称、描述、输入参数、环境参数和输出结果相关参数。
#### 响应结构
对处理自动化工具描述信息资源执行GET请求，在响应消息的实体主体里是一个处理自动化工具信息资源描述集，其中单个资源描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | String | 处理自动化工具ID。 |
| title | String | 处理自动化工具名称。 |
| description | String | 处理自动化工具的描述。 |
| inputs | String | 处理自动化工具的输入参数描述信息。 |
| outputs | String | 处理自动化工具的输出结果描述信息。 |
| helpDoc | String | 处理自动化工具的使用帮助信息 |
| webDocHelpRelativePath | String | 处理自动化工具在线帮助的相对地址{factory/namespace/processName} |
| environments | Object[] | 处理自动化工具的环境参数描述信息。 |
其中inputs数组子项展开为： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| helpDoc | String | 处理自动化工具参数的使用帮助信息 |
| isRequired | String | 处理自动化输入参数是否为必填项 |
| defaultValue | String | 处理自动化参输入数的默认值 |
| meta | Map<String,String> | 处理自动化工具参数的附加信息，可用于定制参数的UI |
| dataType | String | 处理自动化输入参数类型 |
| isCollection | Boolean | 处理自动化输入参数是否为集合 |
| description | String | 处理自动化输入参数的描述信息 |
| enumItems | String | 处理自动化输入参数支持的枚举值 |
| id | String | 处理自动化输入参数id |
| title | String | 处理自动化输入参数名称 |
其中outputs数组子项展开为： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| dataType | String | 处理自动化输出参数类型 |
| isCollection | Boolean | 处理自动化输出参数是否为集合 |
| description | String | 处理自动化输出参数的描述信息 |
| id | String | 处理自动化输出参数id |
| title | String | 处理自动化输出参数名称 |
#### 响应示例
对处理自动化工具描述信息资源执行GET请求，返回rjson格式的资源描述如下：
{
"outputs": 
[{
"dataType": 
"com.supermap.data.Dataset",
"isCollection": 
false,
"description": 
"打开成功返回结果数据集，失败返回空",
"id": 
"dataset",
"title": 
"结果数据集"
}],
"helpDoc": 
"## 使用说明\r\n\r\n通过连接字符串直接打开指定数据集\r\n\r\n## 参数说明\r\n\r\n|参数名|默认值|参数释义|参数类型\r\n|:----|:----|:----|:----\r\n|连接信息| |访问数据的连接信息,需要包含数据类型，连接参数，数据集名字等信息。使用'--key=value'的方式设置，多个值使用' '空格分隔。打开本地数据源为C:/test.udbx --dataset=dataset_name，数据库型数据源为 
sdx --server=127.0.0.1 --dbtype=oracle 
--user=guest --password=test --dataset=dataset_name|String|\r\n\r\n\r\n## 
输出结果\r\n\r\n|参数名|参数释义|参数类型\r\n|:----|:----|:----\r\n|结果数据集|打开成功返回结果数据集，失败返回空|Dataset|\r\n",
"environments": 
[{}],
"inputs": 
[{
"helpDoc": 
"访问数据的连接信息,需要包含数据类型，连接参数，数据集名字等信息。使用'--key=value'的方式设置，多个值使用' '空格分隔。打开本地数据源为C:/test.udbx --dataset=dataset_name，数据库型数据源为sdx --server=127.0.0.1 --dbtype=oracle 
--user=guest --password=test --dataset=dataset_name",
"isRequired": 
true,
"defaultValue": 
"",
"meta": 
{
"supportDataType": 
"sdx",
"encrypt": 
"true",
"stringType": 
"connection",
"connection.mode": 
"select",
"target": 
"dataset"
},
"dataType": 
"java.lang.String",
"isCollection": 
false,
"description": 
"访问数据的连接信息,需要包含数据类型，连接参数，数据集名字等信息。使用'--key=value'的方式设置，多个值使用' '空格分隔。打开本地数据源为C:/test.udbx --dataset=dataset_name，数据库型数据源为sdx --server=127.0.0.1 --dbtype=oracle 
--user=guest --password=test --dataset=dataset_name",
"enumItems": 
"",
"id": 
"dataConnInfo",
"title": 
"连接信息"
}],
"description": 
"通过连接字符串直接打开指定数据集",
"webDocHelpRelativePath 
": "DataManager/Opendata/OpenDatasetDirectly",
"id": 
"iobjects_datamanager:opendatasetdirectly",
"title": 
"打开数据集"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tool 资源是否存在，或者客户端是否有权限访问 tool 资源。通过对加.<format>的 
URI 执行 HEAD 请求，还可以快速判断 tool 资源是否支持<format>格式的表述。
## 请参见
- [georpocessing](../geoprocessing.htm)、[execute](execute/gpexecute.htm)、[jobs](jobs/tooljobs.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)
- [基于Token访问受保护的REST服务资源](../../../Token_RESTServices.htm)