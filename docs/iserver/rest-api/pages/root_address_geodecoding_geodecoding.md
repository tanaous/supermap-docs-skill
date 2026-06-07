# geodecoding

## URI
<[address_uri](../address.htm#URI)>/geodecoding[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[address](../address.htm)
## 介绍
geodecoding 资源表示地址匹配中的反向匹配功能。对 geodecoding 资源执行 GET 请求，可以根据位置坐标查询地点。您可以在服务配置文件中设置查询范围。
支持的方法：
- [GET](#GET 请求)：获取地址匹配结果。
- [HEAD](#HEAD 请求)：检查 geodecoding 资源是否存在，或权限是否可以访问 geodecoding 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/address/geodecoding/geodecoding.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/address-school/restjsr/v1/address/geodecoding.rjson
### ](../../root.htm)GET 请求
获取地址匹配结果。
#### 请求参数
对 geodecoding 资源执行 GET 请求，需要在 URI 中包含一些参数，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| x | double | 【必填参数】 查询位置的横坐标 |
| y | double | 【必填参数】 查询位置的纵坐标 |
| fromIndex | int | 设置返回对象的起始索引值 |
| toIndex | int | 设置返回对象的结束索引值 |
| filters | String[] | 设置分组参数。用于限定查询范围，如果不设置此参数，则返回所有符合条件的地点。filters 中输入的值依照 filterFields （分组字段）中设置的字段。您可以在服务配置文件中指定 [filterFields](../../../../../server_service_management/gisservice_config/service_config/config_provider/configproviderXML/addressmatch_providerconfig.htm) 参数，指定后，filters 中必须填入指定字段的值，否则 filters 设置无效。例如配置文件中 filterFields 为“省,地区,市”，则filters 参数需输入上述字段的值，如["新疆维吾尔自治区","喀什地区","喀什市"]，也可只输入其中的一或两个值。 |
| maxReturn | int | 显示匹配结果的最大数量 。默认值 -1，表示显示所有返回结果。 |
| geoDecodingRadius | double | 查询范围，设置后用户将获得指定半径内的结果，使用反向地址匹配时有效，单位与索引的投影系统单位一致。如果查询半径未设置，则使用默认值 -1，表示对整个图层范围内进行查询。以度为单位时，查询半径默认为0.01度；以米为单位时，查询半径默认为500米。 |
| prjCoordSys | [PrjCoordSys](../../../../iServerJavadoc/com/supermap/services/components/commontypes/PrjCoordSys.html) | 输入参数x、y的坐标系 |
#### 响应结构
对 geodecoding 资源执行 GET 请求，在响应消息的实体主体里是一个地址匹配结果描述集，其中单个匹配结果描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| address | String | 查询地点的名称。地点名称是由多个字段组成，每个字段表示一级行政区划层级或街道地址等。您可以在服务配置文件中，通过 searchFields 参数设置字段顺序。 |
| filters | String[] | 传入的分组参数 |
| location | [Point2D](../../../../iServerJavadoc/com/supermap/services/components/commontypes/Point2D.html) | 查询地点的位置坐标。 |
| score | double | 匹配度分值。反向地址匹配结果中，值为0。 |
#### 响应示例
以示范服务addressmatch-Address/restjsr为例，在 company 数据集中查询指定点100米区域内的地址，对 geodecoding 资源执行 GET 请求，：http://supermapiserver:8090/iserver/services/addressmatch-Address/restjsr/v1/address/geodecoding.rjson?x=12969215.3912997&y=4863405.56901&fromIndex=0&toIndex=10&maxReturn=5&geoDecodingRadius=100。返回 rjson 格式的资源描述如下：
[
{
"address": "北京市朝阳区酒仙桥北路甲10号院201号楼403-A北京太平洋莱特科技有限公司",
"filters": [
"北京市",
"朝阳区"
],
"location": {
"x": 1.2969263932972612E7,
"y": 4863408.733374168
},
"score": 0
},
{
"address": "北京市朝阳区酒仙桥北路甲10号电子城IT产业园201楼E门3层北京超图软件股份有限公司",
"filters": [
"北京市",
"朝阳区"
],
"location": {
"x": 1.2969215391299676E7,
"y": 4863405.569009997
},
"score": 0
},
{
"address": "北京市朝阳区酒仙桥北路甲10号院201号楼四层403北京事友光联光电子设备有限公司",
"filters": [
"北京市",
"朝阳区"
],
"location": {
"x": 1.2969262491281763E7,
"y": 4863406.599127062
},
"score": 0
},
{
"address": "北京市朝阳区酒仙桥北路甲10号院402楼二层德信互动科技（北京）有限公司",
"filters": [
"北京市",
"朝阳区"
],
"location": {
"x": 1.296929984870781E7,
"y": 4863408.379044924
},
"score": 0
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 geodecoding 资源是否存在，或者客户端是否有权限访问 geodecoding 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 geodecoding 资源是否支持<format>格式的表述。
## 请参见
- [address](../address.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)