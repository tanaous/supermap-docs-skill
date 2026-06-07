# geometryOverlayResults

## URI
<[geometry_uri](../geometry.htm#URI)>/overlay[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[geometry](../geometry.htm)
## 子资源
[geometryOverlayResult](geometryOverlayResult.htm)
## 介绍
空间对象叠加分析结果集资源。
支持的方法：
- [GET](#GET 请求)：html表述返回一个进行 POST 
请求的表单，其他表述返回叠加分析的结果集列表。
请求的表单，其他表述返回叠加分析的结果集列表。
- [POST](#POST 请求)：创建叠加分析结果资源。
- [HEAD](#HEAD 请求)：检查 geometryOverlayResults资源是否存在，或权限是否可以访问 
geometryOverlayResults 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/root/geometry/overlay/geometryOverlayResults.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/overlay.rjson
### ](../../root.htm)GET 请求
html表述返回一个进行 POST 请求的表单，其他表述返回叠加分析的结果集列表。
### POST 请求
对资源进行 POST 请求，传递相关参数后，就创建了一个叠加分析结果资源，相当于进行了一次叠加分析。
#### 请求参数
URI 中的参数如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| asynchronousReturn | boolean | 是否采用异步操作。如果为 true，则在客户端提交请求后会立即返回新资源的 URI（即 returnContent 的设置不起作用）； 
为 false，则服务端在分析完成后根据 returnContent 的设置返回新资源的表述或者新资源的 URI。默认为 false。 |
| returnContent | boolean | 是否立即返回新创建资源的表述还是返回新资源的 URI。如果为 true，则直接返回新创建资源，即分析结果的表述。为 false，则返回的是分析结果资源的 
URI。默认为 false。 |
请求体中的参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| sourceGeometry | [Geometry](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 源几何对象数据，即被操作几何对象，其数据类型与 operation 操作类型有关。 
其中，clip 操作的被操作几何对象的数据类型为线、面状几何对象；erase、identity 
操作的被操作几何对象的数据类型为点、线、面状几何对象；intersect、union、update、XOR 操作的被操作几何对象的数据类型为面状几何对象。 |
| operateGeometry | [Geometry](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry.html) | 操作几何对象数据，数据类型为面状几何对象数据。 |
| operation | String | 叠加操作，可选值为 clip（裁剪）、erase（擦除）、identity（同一）、intersect（相交）、union（合并）、update（更新）、XOR（对称差）。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 查询是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 geometryOverlayResults 资源：http://supermapiserver:8090/iserver/services/geometry/restjsr/v1/geometry/overlay.rjson，执行 
POST 请求体如下：
{
"sourceGeometry": 
{
"type": 
"REGION",
"points": 
[
{
"x": 
23,
"y": 
23
},
{
"x": 
33,
"y": 
35
},
{
"x": 
43,
"y": 
22
},
{
"x": 
23,
"y": 
23
}
]
},
"operateGeometry": 
{
"type": 
"REGION",
"points": 
[
{
"x": 
23,
"y": 
23
},
{
"x": 
34,
"y": 
47
},
{
"x": 
50,
"y": 
12
},
{
"x": 
23,
"y": 
23
}
]
},
"operation": "CLIP"
}
则返回的 json 格式的资源描述如下：
{
"postResultType": 
"CreateChild",
"newResourceID": "0ae0d467b58f4845afb06157bce3583e_4c80ff382c054d929f70f8583aef08e6",
"succeed": true,
"newResourceLocation": 
"http://localhost:8090/iserver/services/geometry/restjsr/v1/geometry/overlay/0ae0d467b58f4845afb06157bce3583e_4c80ff382c054d929f70f8583aef08e6"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geometryOverlayResults 资源是否存在，或者客户端是否有权限访问 
geometryOverlayResults 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 
geometryOverlayResults 资源是否支持<format>格式的表述。
## 请参见
- [geometry](../geometry.htm)，[geometryOverlayResult](geometryOverlayResult.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)