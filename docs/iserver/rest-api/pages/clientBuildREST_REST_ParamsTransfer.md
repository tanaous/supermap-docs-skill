# REST 中参数的传递方式

在 SuperMap iServer 的 REST 服务中，HTTP 请求的参数传递方式可以分为两种：
- [URI 查询参数](#1_URI 查询参数)，即放在 URI 中传递的参数。
- [请求体参数](#2_请求体参数)，即放在 HTTP 请求的消息体（Entit Body）中传递的参数。
例如，有以下示例参数，下面会以此为例，说明向服务器传递这些参数的两种方式。
| 参数名 | 参数值（JSON） | 参数值（XML） |
| --- | --- | --- |
| A | value_a | Value_A |
| B | value_b | Value_B |
### 1 URI 查询参数
URI 查询参数位于 URI 中绝对路径的后面，以“?”开头，形式是“参数名=参数值”，各个参数之间用“&”符号分割，不分先后顺序。使用这种方式传递上述示例参数的 URI 为：
http://supermapiserver:8090/iserver/services/components-rest/rest/sample.json?A=value_a&B=value_b
其中，A、B 为参数名，对应的参数值分别为 value_a、value_b。
注意：URI 查询参数的值只能以 JSON 格式组织，即在作为 URI 查询参数时，参数 A 和 B 的值 value_a 和 value_b 只能是 JSON 格式的。
### 2 请求体参数
请求体参数指放在 HTTP 请求的消息体中传递的参数。SuperMap iServer 的 REST 服务中，请求体参数支持 JSON、GeoJSON 和 XML 三种格式。
SuperMap iServer 服务器根据 HTTP 请求中的 X-RequestEntity-ContentType 请求头来判断请求体参数的类型，并根据判断来进行参数解析。如果 X-RequestEntity-ContentType 为 application/json，则服务器就认为 HTTP 请求中的请求体参数内容为 JSON 格式；如果 X-RequestEntity-ContentType 为 application/geojson，则服务器就认为 HTTP 请求中的请求体参数内容为 GeoJSON 格式；如果 X-RequestEntity-ContentType 为 application/xml，则服务器就认为请求体参数内容为 XML 格式。HTTP 请求中无 X-RequestEntity-ContentType 时，默认请求体参数的格式为 JSON 格式。
JSON 格式的示例如下，其中，元素的名称（如 A）即为参数名，元素的值（如 value_a）即为参数值。
{"A":value_a,"B":value_b}
XML 格式的示例如下，其中，标记名（如 A）即为参数名，元素内容（如 Value_A）即为参数值。
<Object>
<A>Value_A</A>
<B>Value_B</B>
</Object>
GeoJSON 仅支持创建特定参数结构的几何对象。示例参见： [几何对象的 GeoJSON 格式创建](Geometry_Build_GeoJSON.htm)
### 请参见
- [HTTP 请求消息的结构](HTTP_structure.htm)
- [REST 中参数的构建](buildParam.htm)
- [REST 中 HTTP 请求示例](REST_HTTP.htm)