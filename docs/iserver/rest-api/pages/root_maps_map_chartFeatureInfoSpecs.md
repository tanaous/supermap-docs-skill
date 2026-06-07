# chartFeatureInfoSpecs

## URI
[<map_uri>](map.htm#URI)/chartfeatureinfospecs[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[map](map.htm)
## 介绍
chartFeatureInfoSpecs 资源是支持的所有海图产品规范物标信息类列表。用于描述各产品规范的物标的基本信息，包括物标的名称、类型及与该物标相关的属性等。
支持的方法：
- [GET](#GET 请求)：获取支持的所有海图物标信息类列表。
- [HEAD](#HEAD 请求)：获取 chartFeatureInfoSpecs 资源的元数据信息。检查该 chartFeatureInfoSpecs 资源是否存在、参数是否合法，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../assets/images/root/maps/map/chartFeatureInfoSpecs.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图” 是地图名（{mapName}）。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/chartfeatureinfospecs.rjson
### ](../../root.htm)GET 请求
用于获取支持的所有海图物标信息类列表。
#### 响应结构
对 chartFeatureInfoSpecs 资源执行 GET 请求，返回的是一个海图物标类列表，其中单个物标的表述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| acronym | String | 物标的简称。 |
| attributeFields | List<[ChartAttributeSpec](../../../../iServerJavadoc/com/supermap/services/components/commontypes/ChartAttributeSpec.html)> | 物标的属性集合。 |
| code | int | 物标的代码。 |
| localName | String | 物标的本地化名称。 |
| name | String | 物标的名称。 |
| primitive | String | 物标可应用的对象类型。 |
#### 示例
对 chartFeatureInfoSpecs 资源：http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/chartFeatureInfoSpecs.rjson 执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"acronym": "ADMARE",
"attributeFields": [
{
"code": 103,
"required": 1
},
{
"code": 111,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 120,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 1,
"localName": "行政区",
"name": "Administration Area (Named)",
"primitive": "A"
},
{
"acronym": "AIRARE",
"attributeFields": [
{
"code": 7,
"required": 0
},
{
"code": 81,
"required": 0
},
{
"code": 83,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 120,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 2,
"localName": "机场",
"name": "Airport/airfield",
"primitive": "PA"
},
{
"acronym": "ACHBRT",
"attributeFields": [
{
"code": 8,
"required": 0
},
{
"code": 85,
"required": 0
},
{
"code": 86,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 118,
"required": 0
},
{
"code": 119,
"required": 0
},
{
"code": 127,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 3,
"localName": "锚位",
"name": "Anchor berth",
"primitive": "PA"
},
{
"acronym": "ACHARE",
"attributeFields": [
{
"code": 8,
"required": 0
},
{
"code": 85,
"required": 0
},
{
"code": 86,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 118,
"required": 0
},
{
"code": 119,
"required": 0
},
{
"code": 131,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 4,
"localName": "锚泊区",
"name": "Anchorage area",
"primitive": "PA"
},
{
"acronym": "BCNCAR",
"attributeFields": [
{
"code": 2,
"required": 1
},
{
"code": 13,
"required": 1
},
{
"code": 75,
"required": 1
},
{
"code": 76,
"required": 2
},
{
"code": 81,
"required": 0
},
{
"code": 82,
"required": 0
},
{
"code": 83,
"required": 0
},
{
"code": 85,
"required": 0
},
{
"code": 86,
"required": 0
},
{
"code": 90,
"required": 0
},
{
"code": 95,
"required": 0
},
{
"code": 109,
"required": 0
},
{
"code": 112,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 118,
"required": 0
},
{
"code": 119,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 180,
"required": 0
},
{
"code": 185,
"required": 0
},
{
"code": 186,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 120,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 5,
"localName": "方位立标",
"name": "Beacon, cardinal",
"primitive": "P"
},
{
"acronym": "BCNISD",
"attributeFields": [
{
"code": 2,
"required": 1
},
{
"code": 75,
"required": 1
},
{
"code": 76,
"required": 2
},
{
"code": 81,
"required": 0
},
{
"code": 82,
"required": 0
},
{
"code": 83,
"required": 0
},
{
"code": 85,
"required": 0
},
{
"code": 86,
"required": 0
},
{
"code": 90,
"required": 0
},
{
"code": 95,
"required": 0
},
{
"code": 109,
"required": 0
},
{
"code": 112,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 118,
"required": 0
},
{
"code": 119,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 180,
"required": 0
},
{
"code": 185,
"required": 0
},
{
"code": 186,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 120,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 6,
"localName": "孤立危险物立标",
"name": "Beacon, isolated danger",
"primitive": "P"
},
{
"acronym": "BCNLAT",
"attributeFields": [
{
"code": 2,
"required": 1
},
{
"code": 36,
"required": 1
},
{
"code": 75,
"required": 1
},
{
"code": 76,
"required": 2
},
{
"code": 81,
"required": 0
},
{
"code": 82,
"required": 0
},
{
"code": 83,
"required": 0
},
{
"code": 85,
"required": 0
},
{
"code": 86,
"required": 0
},
{
"code": 90,
"required": 0
},
{
"code": 95,
"required": 0
},
{
"code": 109,
"required": 0
},
{
"code": 112,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 118,
"required": 0
},
{
"code": 119,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 180,
"required": 0
},
{
"code": 185,
"required": 0
},
{
"code": 186,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 120,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 7,
"localName": "侧面立标",
"name": "Beacon, lateral",
"primitive": "P"
},
{
"acronym": "BCNSAW",
"attributeFields": [
{
"code": 2,
"required": 1
},
{
"code": 75,
"required": 1
},
{
"code": 76,
"required": 2
},
{
"code": 81,
"required": 0
},
{
"code": 82,
"required": 0
},
{
"code": 83,
"required": 0
},
{
"code": 85,
"required": 0
},
{
"code": 86,
"required": 0
},
{
"code": 90,
"required": 0
},
{
"code": 95,
"required": 0
},
{
"code": 109,
"required": 0
},
{
"code": 112,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 118,
"required": 0
},
{
"code": 119,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 180,
"required": 0
},
{
"code": 185,
"required": 0
},
{
"code": 186,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 120,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 8,
"localName": "安全水域立标",
"name": "Beacon, safe water",
"primitive": "P"
},
{
"acronym": "BCNSPP",
"attributeFields": [
{
"code": 2,
"required": 1
},
{
"code": 66,
"required": 1
},
{
"code": 75,
"required": 1
},
{
"code": 76,
"required": 2
},
{
"code": 81,
"required": 0
},
{
"code": 82,
"required": 0
},
{
"code": 83,
"required": 0
},
{
"code": 85,
"required": 0
},
{
"code": 86,
"required": 0
},
{
"code": 90,
"required": 0
},
{
"code": 95,
"required": 0
},
{
"code": 109,
"required": 0
},
{
"code": 112,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 118,
"required": 0
},
{
"code": 119,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 180,
"required": 0
},
{
"code": 185,
"required": 0
},
{
"code": 186,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 120,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 9,
"localName": "专用通用立标",
"name": "Beacon, special purpose/general",
"primitive": "P"
},
{
"acronym": "BERTHS",
"attributeFields": [
{
"code": 85,
"required": 0
},
{
"code": 86,
"required": 0
},
{
"code": 87,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 1
},
{
"code": 118,
"required": 0
},
{
"code": 119,
"required": 0
},
{
"code": 125,
"required": 0
},
{
"code": 144,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 185,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 10,
"localName": "泊位",
"name": "Berth",
"primitive": "PLA"
},
{
"acronym": "BRIDGE",
"attributeFields": [
{
"code": 9,
"required": 2
},
{
"code": 75,
"required": 0
},
{
"code": 76,
"required": 2
},
{
"code": 81,
"required": 0
},
{
"code": 82,
"required": 0
},
{
"code": 83,
"required": 0
},
{
"code": 85,
"required": 0
},
{
"code": 86,
"required": 0
},
{
"code": 97,
"required": 0
},
{
"code": 98,
"required": 0
},
{
"code": 112,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 180,
"required": 0
},
{
"code": 182,
"required": 2
},
{
"code": 181,
"required": 2
},
{
"code": 183,
"required": 2
},
{
"code": 185,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 11,
"localName": "桥梁",
"name": "Bridge",
"primitive": "PLA"
},
{
"acronym": "BUISGL",
"attributeFields": [
{
"code": 3,
"required": 0
},
{
"code": 75,
"required": 0
},
{
"code": 76,
"required": 2
},
{
"code": 81,
"required": 0
},
{
"code": 82,
"required": 0
},
{
"code": 83,
"required": 0
},
{
"code": 90,
"required": 0
},
{
"code": 94,
"required": 0
},
{
"code": 95,
"required": 0
},
{
"code": 112,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 149,
"required": 0
},
{
"code": 180,
"required": 0
},
{
"code": 185,
"required": 0
},
{
"code": 186,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 120,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 12,
"localName": "单体建筑物",
"name": "Building, single",
"primitive": "PA"
},
{
"acronym": "BUAARE",
"attributeFields": [
{
"code": 10,
"required": 0
},
{
"code": 81,
"required": 0
},
{
"code": 82,
"required": 0
},
{
"code": 83,
"required": 0
},
{
"code": 95,
"required": 0
},
{
"code": 301,
"required": 0
},
{
"code": 116,
"required": 0
},
{
"code": 180,
"required": 0
},
{
"code": 185,
"required": 0
},
{
"code": 102,
"required": 0
},
{
"code": 300,
"required": 0
},
{
"code": 304,
"required": 0
},
{
"code": 120,
"required": 0
},
{
"code": 133,
"required": 0
},
{
"code": 158,
"required": 0
},
{
"code": 147,
"required": 0
},
{
"code": 148,
"required": 0
}
],
"code": 13,
"localName": "建筑群区",
"name": "Built-up area",
"primitive": "PA"
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断  chartFeatureInfoSpecs 资源是否存在，参数是否合法，或者客户端是否有权限访问  chartFeatureInfoSpecs 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断  chartFeatureInfoSpecs 资源是否支持<format>格式的表述。
## 请参见
- [map](contents/root\maps\map\map.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)