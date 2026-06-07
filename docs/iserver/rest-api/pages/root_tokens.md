# tokens

## URI
[<services_uri>](../services.htm)/security/tokens[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[services](../services.htm)
## 介绍
根据用户信息获取用于访问受保护服务的 Token。获取的 Token 后，用户就可以[基于 Token 访问受保护的 REST 服务资源](../Token_RESTServices.htm)。
关于 Token 的介绍请参考[基于 Token 的认证](../../../Subject_introduce/Security/config_role/token/Token.htm)。
支持的方法：
- [GET](#GET 请求)：返回申请和获取 Token 的表单。
- [POST](#POST 请求)：输入用户信息申请 Token。
- [HEAD](#HEAD 请求)：检查 tokens 资源是否存在，或权限是否可以访问 tokens 资源。
支持的表述格式：（rjson、json、html、xml）。
## 资源层次
!\[](../../../assets/images/img/tokens.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/security/tokens.rjson
### ](../services.htm)GET 请求
返回申请和获取 Token 的表单。
### POST 请求
输入用户信息申请 Token。
#### 请求参数
申请 Token 时应在请求体中传递如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| userName | String | 【必选参数】 用于申请令牌的授权用户的用户名。 |
| password | String | 【必选参数】 用户的密码。 |
| clientType | enum | 【必选参数】 发放令牌的方式。 支持以下四个取值，分别对应四种发放令牌的方式： IP，即指定的 IP 地址； Referer，即指定的 URL； RequestIP，即发送申请令牌请求的客户端 IP； NONE，即不做任何验证。 |
| ip | String | clientType=IP 时，必选。 如果按照指定 IP 的方式申请令牌，则传递相应的 IP 地址。 |
| referer | String | clientType=Referer 时，必选。 如果按照指定 URL 的方式申请令牌，则传递相应的 URL。 |
| expiration | long | 【必选参数】 申请令牌的有效期，从发布令牌的时间开始计算，单位为分钟。 |
#### 响应结构
如果输入的用户名、密码正确，则直接返回一个字符串，即具有该用户权限的 Token。
如果输入的用户名、密码未通过验证，则返回，如下结构的响应结果：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| succeed | boolean | 操作是否成功，失败时为 false。 |
| error | [HttpError](../../iServerJavadoc/com/supermap/services/rest/HttpError.html) | 如果用户名或密码错误，则返回错误信息，响应码为400。 |
#### 响应示例
对 tokens 资源执行 POST 请求：http://localhost:8090/iserver/services/security/tokens.rjson，传入相关参数，如下所示
{
"userName": "user1",
"password": "secret",
"clientType": "RequestIP",
"expiration": 60
}
则返回的 rjson 格式表述如下：
9AUyV9QOpTARW-Zj1yybXdjHgQvgWtmeQKNPQ43jSjfO3ELFpjKmeCRUuVwrLGfCLNIkJpq5KpVWOn8HwWehhg..
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 tokens 资源是否存在，或者客户端是否有权限访问 tokens 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 tokens 资源是否支持<format>格式的表述。
## 请参见
- [services](../services.htm)
- [客户端构建 REST 请求](../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../resource_hierarchy.htm)