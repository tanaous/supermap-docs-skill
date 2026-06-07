# imageValues

## URI
<[dataset_uri](../dataset.htm#URI)>/imageValues[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 介绍
imageValues 表示影像数据集的像素信息值。通过对 imageValues 资源执行 GET 
请求，可查询某一地理范围内所对应的像素值信息，包括波段值、影像行、影像列、颜色等。
支持的方法：
- [GET](#GET 请求)：获取某一地理范围内的像素值信息。
- [POST](#POST 请求)：创建某一地理范围内的像素值信息。
- [HEAD](#HEAD 请求)：检查 imageValues 
资源是否存在，或权限是否可以访问 imageValues 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../../../../../assets/images/root/data/datasources/datasource/datasets/dataset/imageValues/imageValues.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/WorldEarth/imageValues.rjson
### ](../../../../../../root.htm)GET 请求
获取某一地理范围内的像素值信息。
#### 请求参数
对 imageValues 资源执行 GET 请求，获取影像信息，可以在 URI 中包含如下参数：
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
地理范围=数据集范围*50万/（影像行数*影像列数） |
#### 响应结构
对 imageValues 资源执行 GET 请求，返回的资源表述的结构如下 ： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| columnCount | int | 像素列数。 |
| rowCount | int | 像素行数。 |
| values | [ImageValue[][]](../../../../../../../../../mergedProjects/iServerJavadoc/com/supermap/services/components/commontypes/ImageValue.html) | 目标范围内的所有像素信息。包括行列号、波段或颜色值、像素值等。详细请参考[imageValue](../imageValue/imageValue.htm)。 |
| valuesCount | int | 目标范围内像素数量。 |
#### 响应示例1
查询24位或32位真彩色影像，将返回颜色值信息。对 imageValues 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/WorldEarth/imageValues.rjson?bounds={"leftBottom":{"x":112.351881,"y":34.663401},"rightTop":{"x":113.461881,"y":34.773401}} 
执行 GET 请求，获取 WorldEarth 数据集的像素信息。响应结果如下：
{
"columnCount": 7,
"rowCount": 1,
"values": [[
{
"bounds": 
null,
"color": 
{
"alpha": 
255,
"blue": 
50,
"green": 
84,
"red": 
74
},
"column": 
1663,
"row": 
314,
"value": 
4871218
},
{
"bounds": 
null,
"color": 
{
"alpha": 
255,
"blue": 
42,
"green": 
77,
"red": 
73
},
"column": 
1664,
"row": 
314,
"value": 
4803882
},
{
"bounds": 
null,
"color": 
{
"alpha": 
255,
"blue": 
45,
"green": 
80,
"red": 
76
},
"column": 
1665,
"row": 
314,
"value": 
5001261
},
{
"bounds": 
null,
"color": 
{
"alpha": 
255,
"blue": 
42,
"green": 
77,
"red": 
73
},
"column": 
1666,
"row": 
314,
"value": 
4803882
},
{
"bounds": 
null,
"color": 
{
"alpha": 
255,
"blue": 
34,
"green": 
69,
"red": 
65
},
"column": 
1667,
"row": 
314,
"value": 
4277538
},
{
"bounds": 
null,
"color": 
{
"alpha": 
255,
"blue": 
31,
"green": 
66,
"red": 
62
},
"column": 
1668,
"row": 
314,
"value": 
4080159
},
{
"bounds": 
null,
"color": 
{
"alpha": 
255,
"blue": 
37,
"green": 
73,
"red": 
67
},
"column": 
1669,
"row": 
314,
"value": 
4409637
}
]],
"valuesCount": 7
}
#### 响应示例2
对于其他像素格式的影像，将返回波段值 bounds。 例如获取 worldimage 数据集的像素信息。对imageValues资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/worldimage/imageValues.rjson?bounds={"leftBottom":{"x":112.351881,"y":34.663401},"rightTop":{"x":112.361881,"y":34.673401}} 
执行 GET 请求，响应结果如下： 
{
"columnCount": 1,
"rowCount": 2,
"values": [
[{
"bounds": 
[
232,
229,
193
],
"color": 
null,
"column": 
8770,
"row": 
1660,
"value": 
0
}],
[{
"bounds": 
[
232,
232,
187
],
"color": 
null,
"column": 
8770,
"row": 
1659,
"value": 
0
}]
],
"valuesCount": 2
}
### POST 请求
创建某一地理范围内的像素值信息。
#### 请求参数
对 imageValues 资源执行 POST 请求，获取像素值信息，请求体需包含参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| leftBottom | JsonObject | 输入类型为矩形时，需指定该参数。矩形的左下范围 |
| rightTop | JsonObject | 输入类型为矩形时，需指定该参数。矩形的右上范围 |
| points | JsonArray | 输入类型为多边形时，需指定该参数。多边形的点位置 |
| circle | JsonObject | 输入类型为圆形时，需指定该参数。 |
| centerPoint | JsonObject | 输入类型为圆形时，需指定该参数。圆的中心点 |
| radius | int | 输入类型为圆形时，需指定该参数。圆的半径 |
| point | jsonObject | 输入类型为点时，需指定该参数，点的x坐标和y坐标 |
#### 响应结构
对 imageValues 资源执行 POST 请求，返回的资源表述的结构如下 ： 
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| columnCount | int | 像素列数。 |
| rowCount | int | 像素行数。 |
| values | [ImageValue[][]](../../../../../../../../../mergedProjects/iServerJavadoc/com/supermap/services/components/commontypes/ImageValue.html) | 目标范围内的所有像素信息。包括行列号、波段或颜色值、像素值等。详细请参考[imageValue](../imageValue/imageValue.htm)。 |
| valuesCount | int | 目标范围内像素数量。 |
#### 响应示例
对 imageValues 资源：http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/World/datasets/WorldEarth/imageValues.json 
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
1,
"values": 
[
[
{
"color": 
{
"red": 
2,
"green": 
5,
"blue": 
20,
"alpha": 
255
},
"column": 
1091,
"bounds": 
null,
"row": 
723,
"value": 
132372,
"centerPoint": 
{
"x": 
11.865234375,
"y": 
-37.177734375
}
}
]
],
"rowCount": 
1,
"columnCount": 
2
},
{
"valuesCount": 
1,
"values": 
[
[],
[
{
"color": 
{
"red": 
50,
"green": 
64,
"blue": 
28,
"alpha": 
255
},
"column": 
1663,
"bounds": 
null,
"row": 
309,
"value": 
3293212,
"centerPoint": 
{
"x": 
112.412109375,
"y": 
35.595703125
}
}
]
],
"rowCount": 
2,
"columnCount": 
2
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 imageValues 资源是否存在，或者客户端是否有权限访问 imageValues 
资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 imageValues 资源是否支持<format>格式的表述。
## 请参见
- [dataset](../dataset.htm)
- [客户端构建 
REST 请求](../../../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../../../../resource_hierarchy.htm)