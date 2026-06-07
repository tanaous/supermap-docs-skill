# attachments

## URI
[<feature_uri>](feature.htm#URI)/attachments
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[feature](feature.htm)、
## 介绍
attachments 资源表示要素关联的附件集合，包括由 iDesktopX 和 iServer 对矢量数据集编辑添加的附件。通过 iDesktopX 和 iServer 对附件进行的操作，在另一端中也将相应体现，即，由该资源上传的附件在 iDesktopX 中能在指定要素中展示；由 iDesktopX 和 iServer 删除的附件在另一端的附件列表中将不显示。
请注意：由 iServer 2025 前版本添加的附件，在 iDesktopX 2025中将无法显示。 
支持的方法：
- [GET](#GET 请求)：通过对 attachments 资源执行 GET 请求可以获取附件列表。
- [POST](#POST 请求)：执行 POST 请求可以为要素关联一个附件。
- [HEAD](#HEAD 请求)：检查 attachments 资源是否存在，或权限是否可以访问 attachments 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
## !\[](../../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/features/feature/attachment.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/data-world/rest/data/feature/0-14-0/attachments
### ](../../../../../../../root.htm)GET 请求
获取与要素关联的附件集合。通过对 attachments 资源执行 GET 请求可以获取附件列表。
#### 响应结构
对 attachments 资源执行 GET 请求，返回的资源表述是一个附件信息数组，对应的 Java 类是 [AttachmentInfo](../../../../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/AttachmentInfo.html)。其中包含的字段如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String[] | 上传的文件的名称。 |
| size | long | 上传的文件的大小，单位为字节。 |
| id | int | 上传文件后，系统自动分配一个 id 给该文件。 |
| contentType | String[] | 上传的文件的类型。 |
#### 响应示例
对 attachments 资源执行 GET 请求，并以 rjson 格式表述如下：
http://supermapiserver:8090/iserver/services/data-jingjin/rest/data/feature/0-8-2/attachments.rjson
则返回的结果如下：
[{
"contentType": "image/png",
"id": 1,
"name": "metadata.png",
"size": 40104
}]
### POST 请求
执行 POST 请求可以上传与要素关联的附件。附件可以是图片、文档、视频等任何格式的文件。请注意，当您拥有编辑权限时才可执行此请求。
#### 请求参数
为执行 POST 请求来上传一个新的附件，POST 请求体中必须包含待上传文件的文件（字节流），SuperMap iServer 服务器会根据该值将附件数据转换为字节数组，从而添加一个附件。
具体而言，建议您通过 Web 页面执行一次上传来完成添加附件的操作。如果您需要通过 API 构造请求，请提前将文件上传到抓包工具（如 fiddler）中，再执行 POST 请求。
对应的请求参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| data | byte[] | 附件数据的字节数组。 |
#### 响应结果
对 attachments 资源执行 POST 请求，创建一个新的附件，返回的操作结果为执行成功后 iServer 服务器响应后的 Web 页面（可通过抓包工具、浏览器控制台等查看）
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 attachments 资源是否存在，或者客户端是否有权限访问 attachments 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 attachments 资源是否支持<format>格式的表述。
## 请参见
- [feature](feature.htm)
- [客户端构建 REST 请求](../../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../../../../../resource_hierarchy.htm)