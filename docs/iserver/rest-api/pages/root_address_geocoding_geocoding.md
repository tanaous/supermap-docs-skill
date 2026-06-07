# geocoding

## URI
<[address_uri](../address.htm#URI)>/geocoding[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[address](../address.htm)
## 介绍
geocoding 资源表示地址匹配中的正向匹配功能。通过对 geocoding 执行 GET 请求，可以根据地点名称关键词（如“中学”）查找地址位置。
请注意：由 ArcGIS REST 地址匹配服务发布的 REST-地址匹配服务，不支持模糊匹配，仅支持精确匹配
支持的方法：
- [GET](#GET 请求)：获取地址匹配结果。
- [HEAD](#HEAD 请求)：检查 geocoding 资源是否存在，或权限是否可以访问 geocoding 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/address/geocoding/geocoding.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/address-school/restjsr/v1/address/geocoding.rjson
### ](../../root.htm)GET 请求
获取地址匹配结果。
#### 请求参数
对 geocoding 资源执行 GET 请求，需要在 URI 中包含一些参数，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| address | String | 【必填参数】 将查询的地点关键词，例如“中学” |
| fromIndex | int | 设置返回对象的起始索引值，结果中包含起始索引值的对象。 |
| toIndex | int | 设置返回对象的结束索引值，结果中不包含结束索引值的对象。 |
| maxReturn | int | 显示匹配结果的最大数量 。默认值 -1，表示显示所有返回结果。 |
| filters | String[] | 设置分组参数。用于限定查询范围，如果不设置此参数，则返回所有符合条件的地点。filters 中输入的值依照 filterFields （分组字段）中设置的字段。在服务配置文件中指定 [filterFields](../../../../../Server_Service_Management/GISService_Config/Service_Config/Config_Provider/ConfigProviderXML/addressmatch_providerconfig.htm) 参数，指定后，filters 中需填入指定字段的值，否则 filters 设置无效。例如配置文件中 filterFields 为“省,地区,市”，则 filters 参数需输入上述字段的值，如["新疆维吾尔自治区","喀什地区","喀什市"]，也可只输入其中的一或两个值。
请注意：当转发 ArcGIS 地址匹配服务来服务 REST-地址匹配服务时，不可使用该参数 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 查询结果的坐标系 |
#### 响应结构
对 geocoding 资源执行 GET 请求，在响应消息的实体主体里是一个地址匹配结果描述集，其中单个匹配结果描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| address | String | 查询地点的名称。地点名称是由多个字段组成，每个字段表示一级行政区划层级或街道地址等。您可以在服务配置文件中，通过 searchFields 参数设置字段顺序。 |
| filters | String[] | 传入的分组参数。 |
| location | [Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 查询地点的位置坐标。 |
| score | double | 匹配度分值。 |
| addresses | String[] | 地址数组，包含地名与地址。 |
#### 响应示例
对 geocoding 资源执行 GET 请求，查询某一个的公司地址：http://localhost:8090/iserver/services/addressmatch-BeijingAddress/restjsr/v1/address/geocoding.rjson?address=京东方科技集团股份有限公司&fromIndex=0&toIndex=1&maxReturn=-1 ，返回 rjson 格式的资源描述如下：
[{
"score": 100,
"addresses": [     
"京东方科技集团股份有限公司",
"北京市朝阳区酒仙桥路10号"
],
"address": "北京市朝阳区酒仙桥路10号京东方科技集团股份有限公司",
"location": {
"x": 1.2967731461281551E7,
"y": 4862514.842817815
},
"filters": [
"北京市朝阳区酒仙桥路10号",
"京东方科技集团股份有限公司"
],
"fields": {}
}]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geocoding 资源是否存在，或者客户端是否有权限访问 geocoding 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 geocoding 资源是否支持<format>格式的表述。
## 请参见
- [address](../address.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)