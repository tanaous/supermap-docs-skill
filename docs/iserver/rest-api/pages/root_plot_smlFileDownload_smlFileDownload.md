# smlFileDownload

## URI
[<plot_uri>](../plot.htm#URI)/smlFileDownload[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[plot](../plot.htm)
## 介绍
smlFileDownload资源用于下载态势图文件。
支持的方法：
- [GET](#GET 请求)：获取态势图文件。
- [HEAD](#HEAD 请求)：检查 smlFileDownload 资源是否存在，或权限是否可以访问 smlFileDownload 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/plot/smlFileDownload/plot_smlFileDownload.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 json 格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/plot-JY/rest/plot/smlFileDownload/{smlFileName}.json
### ](../../root.htm)GET 请求
获取态势图文件。
#### 响应结构
对smlFileDownload资源执行 GET 请求，在响应消息的实体主体里是一个态势图文件，其结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| smlInfo | Object | 态势图信息。 |
| layerDatas | Object | 图层信息，包含其中的标号信息。 |
#### 响应示例
对smlFileDownload资源：http://supermapiserver:8090/iserver/services/plot-JY/rest/plot/smlFileDownload/situationMap.sml，执行GET请求，则返回的内容如下：
{"smlInfo":{"SMLName":"","SMLDesc":"","SMLSeclevel":"","SMLDepat":"","SMLAuthor":"","SMLTime":""},
"layerDatas":[{"layerName":"PlotService",
"features":
......
{
"algoMaxEditPts": 1,
"algoMinEditPts": 1,
"anchorPoint":
{
"x": 0,
"y": 0
},
"annotationPosition": 4,
"center":
{
"x": 0,
"y": 0
},
"annotationPosition": 4,
"center":
{
"x": 0,
"y": 0
},
"code": "80800",
"libID": "421",
"innerCells":
[
{
"textContent": "",
"type": 32,
"surroundLineColor":
{
"red": 255,
"blue": 0,
"green": 255,
"alpha": 255
},
"surroundLineType": 0,
"surroundLineWidth": 1,
"surroundLineLimit": false,
"surroundLineFlag": false,
"positionPoints":
[
{
"x": 0,
"y": 100,
"z": 0
},
{
"x": 80,
"y": "60",
"z": 0
},
{
"x": 0,
"y": "60",
"z": 0
}
],
"fillLimit": false,
"fontColorLimit": false,
"lineWidthLimit": false,
"fillColorLimit": false,
"lineColorLimit": false,
"lineTypeLimit": false,
"style":
{
"fillBackOpaque": true,
"lineWidth": 0.5,
"fillBackColor":
{
"red": 255,
"blue": 0,
"green": 0,
"alpha": 255
},
"markerWidth": 2.4,
"markerAngle": 0,
"fillForeColor":
{
"red": 255,
"blue": 0,
"green": 0,
"alpha": 255
},
"markerSize": 2.4,
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"lineColor":
{
"red": 255,
"blue": 0,
"green": 0,
"alpha": 255
},
"fillOpaqueRate": 100,
"markerHeight": 2.4,
"fillGradientMode": 0,
"fillSymbolID": 1,
"fillGradientAngle": 0,
"markerSymbolID": 0,
"lineSymbolID": 0
},
"textStyle2D":
{
"fontName": "Microsoft YaHei",
"fontWidth": 0,
"align": 0,
"backOpaque": false,
"fontHeight": 7,
"fontScale": 1,
"italic": false,
"outline": false,
"opaqueRate": 100,
"sizeFixed": false,
"fontWeight": 0,
"bold": false,
"rotation": 0,
"shadow": false,
"italicAngle": 0,
"underline": false,
"stringAlignment": 0,
"strikeout": false,
"backColor":
{
"red": 0,
"blue": 0,
"green": 0,
"alpha": 255
},
"foreColor":
{
"red": 0,
"blue": 0,
"green": 0,
"alpha": 255
}
}
},
{
"textContent": "",
"type": 24,
"surroundLineColor":
{
"red": 255,
"blue": 0,
"green": 255,
"alpha": 255
},
"surroundLineType": 0,
"surroundLineWidth": 1,
"surroundLineLimit": false,
"surroundLineFlag": false,
"positionPoints":
[
{
"x": 0,
"y": 0,
"z": 0
},
{
"x": 0,
"y": "60",
"z": 0
}
],
"fillLimit": false,
"fontColorLimit": false,
"lineWidthLimit": false,
"fillColorLimit": false,
"lineColorLimit": false,
"lineTypeLimit": false,
"style":
{
"fillBackOpaque": true,
"lineWidth": 0.5,
"fillBackColor":
{
"red": 255,
"blue": 0,
"green": 0,
"alpha": 255
},
"markerWidth": 2.4,
"markerAngle": 0,
"fillForeColor":
{
"red": 255,
"blue": 0,
"green": 0,
"alpha": 255
},
"markerSize": 2.4,
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"lineColor":
{
"red": 255,
"blue": 0,
"green": 0,
"alpha": 255
},
"fillOpaqueRate": 100,
"markerHeight": 2.4,
"fillGradientMode": 0,
"fillSymbolID": 1,
"fillGradientAngle": 0,
"markerSymbolID": 0,
"lineSymbolID": 0
},
"textStyle2D":
{
"fontName": "Microsoft YaHei",
"fontWidth": 0,
"align": 0,
"backOpaque": false,
"fontHeight": 7,
"fontScale": 1,
"italic": false,
"outline": false,
"opaqueRate": 100,
"sizeFixed": false,
"fontWeight": 0,
"bold": false,
"rotation": 0,
"shadow": false,
"italicAngle": 0,
"underline": false,
"stringAlignment": 0,
"strikeout": false,
"backColor":
{
"red": 0,
"blue": 0,
"green": 0,
"alpha": 255
},
"foreColor":
{
"red": 0,
"blue": 0,
"green": 0,
"alpha": 255
}
}
}
],
"limitWidthHeight": true,
"localePoints":
[
{
"x": "117.0297923050529",
"y": "25.11111687487508",
"z": 0
}
],
"middleMarkBounds":
{
"rightTop":
{
"x": 0,
"y": 0
},
"leftBottom":
{
"x": 0,
"y": 0
},
"left": 0,
"bottom": 0,
"right": 0,
"top": 0
},
"middleMarkExist": false,
"negativeImage": false,
"rotate2D":
{
"x": 0,
"y": 0,
"z": 0
},
"scale2D":
{
"x": 1,
"y": 1,
"z": 0
},
"scaleByMap": false,
"scalePoints": "",
"scaleValues": "",
"style":
{
"fillBackOpaque": true,
"lineWidth": 0.5,
"fillBackColor":
{
"red": 255,
"blue": 0,
"green": 0,
"alpha": 255
},
"markerWidth": 2.4,
"markerAngle": 0,
"fillForeColor":
{
"red": 255,
"blue": 0,
"green": 0,
"alpha": 80
},
"markerSize": 2.4,
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"lineColor":
{
"red": 255,
"blue": 255,
"green": 0,
"alpha": 255
},
"fillOpaqueRate": 100,
"markerHeight": 2.4,
"fillGradientMode": 0,
"fillSymbolID": 1,
"fillGradientAngle": 0,
"markerSymbolID": 0,
"lineSymbolID": 0
},
"subSymbols": "",
"surroundLineColor":
{
"red": 255,
"blue": 0,
"green": 255,
"alpha": 255
},
"surroundLineType": 0,
"surroundLineWidth": 1,
"symbolIsCanFill": false,
"symbolName": "\u76EE\u7684\u5730",
"symbolRank": 0,"symbolRanks":[],
"symbolSize":
{
"x": 80,
"y": 100
},
"symbolType": 1,
"textContent": "",
"textStyle2D":
{
"fontName": "Microsoft YaHei",
"fontWidth": 0,
"align": 0,
"backOpaque": false,
"fontHeight": 7,
"fontScale": 1,
"italic": false,
"outline": false,
"opaqueRate": 100,
"sizeFixed": false,
"fontWeight": 0,
"bold": false,
"rotation": 0,
"shadow": false,
"italicAngle": 0,
"underline": false,
"stringAlignment": 0,
"strikeout": false,
"backColor":
{
"red": 0,
"blue": 0,
"green": 0,
"alpha": 255
},
"foreColor":
{
"red": 0,
"blue": 0,
"green": 0,
"alpha": 255
}
},
"type": "GRAPHICOBJECT"
},
]
}]}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 smlFileDownload 资源是否存在，或者客户端是否有权限访问 smlFileDownload 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 smlFileDownload 资源是否支持<format>格式的表述。
## 请参见
- [plot](../plot.htm)
- [客户端构建 REST 请求](../../ConstructRESTRequest.htm)
- [状态码列表及说明](../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../resource_hierarchy.htm)