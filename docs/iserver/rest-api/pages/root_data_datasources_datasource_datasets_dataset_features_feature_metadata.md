# metadata

## URI
[<feature_uri>](feature.htm#URI)/metadata
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[feature](feature.htm)
## 介绍
metadata 资源表示地理要素元信息，元信息中含地理要素的创建者、创建时间、上一次编辑者、上一次编辑时间。当在数据服务提供者高级设置中勾选“[是否记录地理要素元信息](../../../../../../../../../Server_Service_Management/GISService_Config/Service_Config/Config_Provider/ProviderParameter/dataProviderPram.htm#metadata)”后，本资源方可用。
支持的方法：
- [GET](#GET 请求)：对 metadata 资源执行 GET 请求，可以获取地理要素元信息。
- [HEAD](#HEAD 请求)：检查 metadata 资源是否存在，或权限是否可以访问 metadata 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/features/feature/metadata.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 xml  输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/data-jingjin/rest/data/feature/0-8-2/metadata.xml
### ](../../../../../../../root.htm)GET 请求
对 metadata 资源执行 GET 请求，获取地理要素元信息，元信息中含地理要素的创建者、创建时间、上一次编辑者、上一次编辑时间。
#### 响应结构
对 metadata 资源执行 GET 请求，返回的资源表述的结构如下（资源表述在响应消息的实体主体里）：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| createTime | long | 创建时间 |
| createUser | String[] | 创建者（如果当前服务的权限设置为匿名可访问时，创建者信息不可见） |
| lastEditTime | long | 上一次编辑时间 |
| lastEditUser | String[] | 上一次编辑者（如果当前服务的权限设置为匿名可访问时，上一次编辑者信息不可见） |
#### 响应示例
对 metadata 资源执行 GET 请求：
http://supermapiserver:8090/iserver/services/data-jingjin/rest/data/feature/0-8-2/metadata.rjson
则返回的结果如下：
{
"createTime": 1436945830474,
"createUser": "admin",
"lastEditTime": 1436945830474,
"lastEditUser": "admin"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 metadata 资源是否存在，或者客户端是否有权限访问 metadata 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 metadata 资源是否支持<format>格式的表述。
## 请参见
- [feature](feature.htm)
- [客户端构建 REST 请求](../../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../../../../../resource_hierarchy.htm)