# gridValues

## URI
<[dataset_uri](../dataset.htm#URI)>/gridValues[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 介绍
gridValues 表示栅格信息值。通过对 gridValues 资源执行 GET 请求，可查询某一地理范围所对应的栅格单元的信息，包括栅格值、栅格行、栅格列等。
支持的方法：
- [GET](#GET 请求)：获取某一地理范围对应的栅格单元信息。
- [POST](#POST 请求)：创建某一地理范围对应的栅格单元信息。
- [HEAD](#HEAD 请求)：检查 gridValues 资源是否存在，或权限是否可以访问 
gridValues 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/gridValues/gridValues.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/LandCover/gridValues.rjson
### ](../../../../../../root.htm)GET 请求
获取某一地理范围对应的栅格单元信息。
#### 请求参数
对 gridValues 资源执行 GET 请求，获取栅格信息，需要在 URI 中包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| bounds | String | 地理范围。支持查询矩形、多边形、圆形范围。例如： 
1. 矩形范围： 
{"leftBottom":{"x":112.351881,"y":34.663401},"rightTop":{"x":113.361881,"y":35.673401}} 
2. 多边形范围，需指定不少于三条边： 
{"points": [{"x": 107.669629,"y": 
32.888868},{"x": 108.012838,"y": 33.594138}, 
{ "x": 108.674593, "y": 33.281041},{ 
"x": 107.669629,"y": 32.888868}]} 
3. 圆形范围，需指定中心点和半径： 
{"circle":{"centerPoint":{"x":112.351881,"y":35.673401},"radius": 
1}} 
注：如果该参数设置范围过大，即该参数所表达的栅格个数不能超过50万，否则系统将报超限的错误。可根据以下计算式来确定该参数的最大范围： 
地理范围=数据集范围*50万/（栅格行数*栅格列数） |
#### 响应结构
对 gridValues 资源执行 GET 请求，返回的资源表述的结构如下 :
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| columnCount | int | 目标范围内栅格的列数。 |
| rowCount | int | 目标范围内栅格的行数。 |
| values | [GridValue[][]](../../../../../../../../../mergedProjects/iServerJavadoc/com/supermap/services/components/commontypes/GridValue.html) | 目标范围内所有栅格的信息。包含栅格行列号、栅格值，详细请参考[gridValue](../gridValue/gridValue.htm)。 |
| valuesCount | int | 目标范围内包含的栅格数量。 |
#### 响应示例
对 gridValues 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/LandCover/gridValues.rjson?bounds={"leftBottom":{"x":112.351881,"y":34.663401},"rightTop":{"x":112.461881,"y":34.773401}}执行 
GET 请求，获取栅格单元信息的 rjson 表述如下：
{
"columnCount": 3,
"rowCount": 3,
"values": [
[
{
"column": 
4677,
"row": 
885,
"value": 
11
},
{
"column": 
4678,
"row": 
885,
"value": 
11
},
{
"column": 
4679,
"row": 
885,
"value": 
11
}
],
[
{
"column": 
4677,
"row": 
884,
"value": 
11
},
{
"column": 
4678,
"row": 
884,
"value": 
11
},
{
"column": 
4679,
"row": 
884,
"value": 
11
}
],
[
{
"column": 
4677,
"row": 
883,
"value": 
11
},
{
"column": 
4678,
"row": 
883,
"value": 
11
},
{
"column": 
4679,
"row": 
883,
"value": 
11
}
]
],
"valuesCount": 9
}
### POST 请求
创建某一地理范围对应的栅格单元信息。
#### 请求参数
对 gridValues 资源执行 POST 请求，获取栅格信息，请求体包含参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| leftBottom | JsonObject | 输入类型为矩形时，需指定该参数。矩形的左下范围 |
| rightTop | JsonObject | 输入类型为矩形时，需指定该参数。矩形的右上范围 |
| points | jsonArray | 输入类型为多边形时，需指定该参数。多边形的点位置 |
| circle | JsonObject | 输入类型为圆形时，需指定该参数。 |
| centerPoint | JsonObject | 输入类型为圆形时，需指定该参数。圆的中心点 |
| radius | int | 输入类型为圆形时，需指定该参数。圆的半径 |
| point | jsonObject | 输入类型为点时，需指定该参数，点的x坐标和y坐标 |
#### 响应结构
对 gridValues 资源执行 POST 请求，返回的资源表述的结构如下 :
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| columnCount | int | 目标范围内栅格的列数。 |
| rowCount | int | 目标范围内栅格的行数。 |
| values | [GridValue[][]](../../../../../../../../../mergedProjects/iServerJavadoc/com/supermap/services/components/commontypes/GridValue.html) | 目标范围内所有栅格的信息。包含栅格行列号、栅格值，详细请参考[gridValue](../gridValue/gridValue.htm)。 |
| valuesCount | int | 目标范围内包含的栅格数量。 |
#### 响应示例
对 gridValues 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/LandCover/gridValues.rjson 
执行 POST请求，请求体中的参数如下：
[
{
"leftBottom": 
{
"x": 
11.8504725147077,
"y": 
-37.1891792186755
},
"rightTop": 
{
"x": 
12.0051569150709,
"y": 
-37.1065254101062
}
},
{
"circle": 
{
"centerPoint": 
{
"x": 
112.351881,
"y": 
35.673401
},
"radius": 
0.1
}
}
]
返回 rjson 格式的操作结果表述如下：
[
{
"valuesCount": 
2,
"values": 
[
[],
[
{
"column": 
3070,
"row": 
2034,
"value": 
0,
"centerPoint": 
{
"x": 
11.90625,
"y": 
-37.15625
}
},
{
"column": 
3071,
"row": 
2034,
"value": 
0,
"centerPoint": 
{
"x": 
11.96875,
"y": 
-37.15625
}
}
],
[]
],
"rowCount": 
3,
"columnCount": 
4
},
{
"valuesCount": 
8,
"values": 
[
[],
[
{
"column": 
4676,
"row": 
868,
"value": 
10,
"centerPoint": 
{
"x": 
112.28125,
"y": 
35.71875
}
},
{
"column": 
4677,
"row": 
868,
"value": 
10,
"centerPoint": 
{
"x": 
112.34375,
"y": 
35.71875
}
},
{
"column": 
4678,
"row": 
868,
"value": 
10,
"centerPoint": 
{
"x": 
112.40625,
"y": 
35.71875
}
}
],
[
{
"column": 
4676,
"row": 
869,
"value": 
10,
"centerPoint": 
{
"x": 
112.28125,
"y": 
35.65625
}
},
{
"column": 
4677,
"row": 
869,
"value": 
10,
"centerPoint": 
{
"x": 
112.34375,
"y": 
35.65625
}
},
{
"column": 
4678,
"row": 
869,
"value": 
10,
"centerPoint": 
{
"x": 
112.40625,
"y": 
35.65625
}
}
],
[
{
"column": 
4677,
"row": 
870,
"value": 
10,
"centerPoint": 
{
"x": 
112.34375,
"y": 
35.59375
}
},
{
"column": 
4678,
"row": 
870,
"value": 
10,
"centerPoint": 
{
"x": 
112.40625,
"y": 
35.59375
}
}
]
],
"rowCount": 
4,
"columnCount": 
4
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 gridValues 资源是否存在，或者客户端是否有权限访问 gridValues 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 gridValues 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)，
- [客户端构建 
REST 请求](../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../../../../resource_hierarchy.htm)