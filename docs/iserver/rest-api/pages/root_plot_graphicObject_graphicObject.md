# graphicObject

## URI
[<plot_uri>](../plot.htm#URI)/graphicObject[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[plot](../plot.htm)
## 介绍
graphicObject资源用于获取标号信息。
支持的方法：
- [GET](#GET 请求)：获取标号的信息。
- [HEAD](#HEAD 请求)：检查 graphicObject 资源是否存在，或权限是否可以访问 graphicObject 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../assets/images/root/plot/graphicObject/graphicObject.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/plot-TY/rest/plot/graphicObject.rjson
### ](../../root.htm)GET 请求
获取标号的信息。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| libID | int | 【必填参数】标号库ID |
| code | int | 【必填参数】标号code |
| symbolType | int | 标号类型 |
| symbolName | String | 标号名称 |
| anchorPoint | Point2D | 标号的锚点 |
| negativeImage | boolean | 点标号是否启动镜像 |
| scaleByMap | boolean | 控制标号的大小是否跟随地图缩放 |
| symbolRank | int | 标号级别 |
| symbolRanks | int[] | 标号库中定义的标号所支持的标号等级 |
| limitWidthHeight | boolean | 锁定标号的宽度、高度 |
| symbolSize | Point2D | 标号大小，控制标号在地图上显示的大小 |
| rotate2D | Point3D | 标号的旋转角度 |
| scale2D | Point3D | 标号的缩放比例 |
| subSymbols | Int[] | 线面标号的子标号集合 |
| scaleValues | double[] | 线面标号的比例值 |
| style | Object | 标号风格，包括线色、线型、填充等 |
| surroundLineType | int | 衬线类型 |
| surroundLineColor | Color | 衬线颜色 |
| surroundLineWidth2D | int | 衬线宽度 |
| textContent | string | 注记/文本内容 |
| annotationPosition | int | 注记位置 |
| textStyle2D | Object | 注记样式 |
| innerCells | Object[] | 内部图元，构成一个标号所用到的所有图元的信息 |
| middleMarkExist | boolean | 标号是否存在中间注记 |
| algoMaxEditPts | int | 线面标号最大编辑点个数 |
| algoMinEditPts | int | 线面标号最小编辑点个数 |
| middleMarkBounds | Rectangle2D | 点标号中间注记范围 |
| symbolIsCanFill | boolean | 标号是否可填充 |
| scalePoints | Point2D[] | 比例点数组 |
#### 响应结构
对graphicObject资源执行 GET 请求，返回的标号信息表述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| libID | int | 标号库ID |
| code | int | 标号code |
| symbolType | int | 标号类型 |
| symbolName | int | 标号名称 |
| negativeImage | boolean | 标号镜像。默认为false,当设置为ture时，则标号上下不变，左右互换 |
| symbolRank | int | 标号级别 |
| symbolRanks | int[] | 标号所支持的标号等级 |
| scaleByMap | boolean | 控制标号的大小是否跟随地图缩放，默认为false |
| limitWidthHeight | boolean | 锁定标号宽度、高度 |
| symboSize | Point2D | 标号大小，控制标号在地图上显示的大小 |
| scale2D | Point3D | 标号的缩放比例 |
| rotate2D | Point3D | 标号的旋转角度 |
| subSymbols | int[] | 子标号集合。部分线面标号存在子标号，通过修改线面标号的code可以得到不同含义的新标号 |
| scaleValues | double[] | 标号的比例值 |
| surroundLineType | int | 衬线类型，包括无衬线、内衬、外衬、双衬。 |
| surroundLineColor | Color | 衬线颜色 |
| surroundLineWidth2D | double | 衬线宽度 |
| textContent | String | 注记/文本内容 |
| annotationPosition | int | 注记位置 |
| textStyle2D | TextStyle | 注记样式 |
| innerCells | GraphicObjectCell[] | 内部图元信息，构成一个点标号所用到的所有图元的信息 |
| middleMarkExist | boolean | 标号是否存在中间注记 |
| algoMaxExitPts | int | 线面标号最大点个数 |
| algoMinEditPts | int | 线面标号最小点个数 |
| middleMarkBounds | Rectangle2D | 点标号中间注记范围 |
#### 响应示例
对graphicObject资源：http://localhost:8090/iserver/services/plot-TY/rest/plot/graphicObject.rjson?libID=0&code=24，执行GET请求，则返回的rjson格式表述如下：
{
"algoMaxEditPts": 9999999,
"algoMinEditPts": 2,
"anchorPoint": {
"x": 0,
"y": 0
},
"annotationPosition": 4,
"center": null,
"code": 24,
"id": 0,
"innerCells": [{
"fillColorLimit": true,
"fillLimit": false,
"fontColorLimit": true,
"lineColorLimit": false,
"lineTypeLimit": false,
"lineWidthLimit": false,
"positionPoints": [],
"style": {
"fillBackColor": {
"alpha": 255,
"blue": 0,
"green": 0,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"alpha": 80,
"blue": 0,
"green": 0,
"red": 255
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 1,
"lineColor": {
"alpha": 255,
"blue": 0,
"green": 0,
"red": 255
},
"lineSymbolID": 0,
"lineWidth": 0.5,
"markerAngle": 0,
"markerHeight": 0,
"markerSize": 2.4,
"markerSymbolID": 0,
"markerWidth": 0
},
"surroundLineColor": {
"alpha": 255,
"blue": 0,
"green": 255,
"red": 255
},
"surroundLineFlag": false,
"surroundLineLimit": false,
"surroundLineType": 0,
"surroundLineWidth": 1,
"textContent": "",
"textStyle": {
"align": "TOPLEFT",
"backColor": {
"alpha": 255,
"blue": 0,
"green": 0,
"red": 0
},
"backOpaque": false,
"bold": false,
"fontHeight": 7,
"fontName": "Microsoft YaHei",
"fontScale": 1,
"fontWeight": 0,
"fontWidth": 0,
"foreColor": {
"alpha": 255,
"blue": 0,
"green": 0,
"red": 0
},
"italic": false,
"italicAngle": 0,
"opaqueRate": 100,
"outline": false,
"rotation": 0,
"shadow": false,
"sizeFixed": false,
"strikeout": false,
"stringAlignment": "LEFT",
"underline": false
},
"type": 24
}],
"libID": 0,
"limitWidthHeight": true,
"middleMarkBounds": {
"bottom": 0,
"left": 0,
"leftBottom": {
"x": 0,
"y": 0
},
"right": 0,
"rightTop": {
"x": 0,
"y": 0
},
"top": 0
},
"middleMarkExist": false,
"negativeImage": false,
"parts": null,
"points": null,
"position": null,
"prjCoordSys": null,
"rotate2D": {
"x": 0,
"y": 0,
"z": 0
},
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"scale2D": {
"x": 1,
"y": 1,
"z": 0
},
"scaleByMap": false,
"scalePoints": [],
"scaleValues": [],
"scaleX": 0,
"scaleY": 0,
"scaleZ": 0,
"style": {
"fillBackColor": {
"alpha": 255,
"blue": 0,
"green": 0,
"red": 255
},
"fillBackOpaque": true,
"fillForeColor": {
"alpha": 80,
"blue": 0,
"green": 0,
"red": 255
},
"fillGradientAngle": 0,
"fillGradientMode": "NONE",
"fillGradientOffsetRatioX": 0,
"fillGradientOffsetRatioY": 0,
"fillOpaqueRate": 100,
"fillSymbolID": 1,
"lineColor": {
"alpha": 255,
"blue": 0,
"green": 0,
"red": 255
},
"lineSymbolID": 0,
"lineWidth": 0.5,
"markerAngle": 0,
"markerHeight": 0,
"markerSize": 2.4,
"markerSymbolID": 0,
"markerWidth": 0
},
"subSymbols": [],
"surroundLineColor": {
"alpha": 255,
"blue": 0,
"green": 255,
"red": 255
},
"surroundLineType": 0,
"surroundLineWidth2D": 1,
"symbolIsCanFill": false,
"symbolName": "折线",
"symbolRank": 0,
"symbolRanks": [],
"symbolSize": {
"x": -1,
"y": -1
},
"symbolType": 24,
"textContent": "",
"textStyle2D": {
"align": "TOPLEFT",
"backColor": {
"alpha": 255,
"blue": 0,
"green": 0,
"red": 0
},
"backOpaque": false,
"bold": false,
"fontHeight": 7,
"fontName": "Microsoft YaHei",
"fontScale": 1,
"fontWeight": 0,
"fontWidth": 0,
"foreColor": {
"alpha": 255,
"blue": 0,
"green": 0,
"red": 0
},
"italic": false,
"italicAngle": 0,
"opaqueRate": 100,
"outline": false,
"rotation": 0,
"shadow": false,
"sizeFixed": false,
"strikeout": false,
"stringAlignment": "LEFT",
"underline": false
},
"type": "GRAPHICOBJECT"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 graphicObject 资源是否存在，或者客户端是否有权限访问 graphicObject 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 graphicObject 资源是否支持<format>格式的表述。
## 请参见
- [plot](../plot.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../resource_hierarchy.htm)