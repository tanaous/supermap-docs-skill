# layer

## URI
1. [<layers_uri>](../layers.htm#URI)/{layerName}[.<format>]
2. [<layers_uri>](../layers.htm#URI)/{layerIndex}[.<format>]
3. [<layers_uri>](../layers.htm#URI)/{layerIndex}/sublayers/{sublayerIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[layers](../layers.htm)
## 子资源
[legend](legend.htm)，[visible](visible.htm)，[queryable](queryable.htm)，[style](style.htm)
## 介绍
layer 资源表示一个图层，在 URI 里通过图层名或图层索引号来标识，可以通过上面3种 URI 来访问 layer 资源。
layer 资源可能是不同的图层，例如高一级的图层：UGCMapLayer、WFSLayer、WMSLayer 等；低一级的有 UGCMapLayer 的子图层，如 UGCVectorLayer、UGCGridLayer、UGCImageLayer、 UGCThemeLayer 等。高一级的图层类型由 type 字段标识，低一级的图层类型由 ugcLayerType 字段标识。
当 layer 是高一级的图层时，可以通过 URI1或 URI2的形式来访问资源；当 layer 是低一级的图层时，可以通过 URI1或 URI3的形式来访问。
{layerName}可用来标识高一级图层名和低一级图层名。{layerIndex}是高一级图层的索引号，从0开始。{sublayerIndex}是指低一级图层的索引号，从0开始，按图层列表中的顺序依次增加。例如第一个图层的索引号为0，第二个图层的索引号则为1，依此类推。
关于本资源的使用方法，可参考开发指南：[获取子图层列表](../../../../../../../DevelopGuide/Use_iServer/USE_RESTAPI/Layer_Opr/getSubLayers.htm)。
支持的方法：
- [GET](#GET 请求)：获取图层的表述。
- [HEAD](#HEAD 请求)：获取图层的元数据信息。检查 layer 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、HTML、XML、Classic、JSONP、FASTJSON。
## 资源层次
!\[](../../../../../../../assets/images/root/maps/map/layers/layer.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名，“世界地图”是地图名（{mapName}），Capitals@World 是 地图“世界地图”中的一个图层（{layerName}），Capitals@World@@世界地图 表示 它是“世界地图”图层的一个子图层，URI 表示 Capitals@World 图层，即 layer 资源。
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/layers/Capitals@World@@世界地图.rjson
### ](../../../../root.htm)GET 请求
对示例 URI 执行 GET 请求可以获得“世界地图”中的 Capitals@World 图层的表述。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
| returnFields | boolean | 【可选参数】是否返回图层中各个字段及其信息，默认为 false。
**注：**仅文件型工作空间、PostgreSQL 工作空间、Oracle 工作空间、SQL Server 工作空间、DM 工作空间、REST 地图服务、PostGIS 服务、ShapeFile、ArcGIS REST 地图服务为数据源发布地图服务时，支持设置该参数。 |
#### 响应结构
对 layer 资源执行 GET 请求，返回资源的表述。表述为描述图层的各种信息，不同类型图层的描述有所差别，图层可能是高一级的图层：UGCMapLayer、WFSLayer、WMSLayer 等，或低一级的图层：WFSLayer、WMSLayer、 UGCMapLayer 的子图层（[UGCVectorLayer](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/UGCVectorLayer.html)、[UGCGridLayer](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/UGCGridLayer.html)、[UGCImageLayer](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/UGCImageLayer.html)、 [UGCThemeLayer](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/UGCThemeLayer.html)）等。layer 资源表述的结构即为这些图层描述的结构。
示例图层 Capitals@World 为 UGCVectorLayer 图层，所以返回的表述为 UGCVectorLayer 的结构，如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| name | String | 图层的名称。图层的名称在图层所在的地图中唯一标识此图层。该标识不区分大小写。 |
| bounds | double | 图层范围。 |
| caption | String | 图层的标题。默认情况下与 name 一致。在图例、图层控制列表中显示的图层的名称就是 caption 的值。注意与 name 相区别。 |
| description | String | 图层的描述信息。 |
| queryable | boolean | 图层中的对象是否可以被查询。true 表示可以被查询，false 表示不能被查询。 |
| visible | boolean | 图层是否可见，当图层不可见时，其他所有的属性的设置将无效。 |
| type | LayerType | 图层的类型。 目前支持的图层类型有：UGC（SuperMap 图层），WFS（WFS 图层），WMS（WMS 图层）、CUSTOM（自定义图层）。 |
| subLayers | Layer[] | 子图层集。 |
| completeLineSymbolDisplayed | boolean | 是否显示完整线型。true 表示显示，false 表示不显示。 |
| maxScale | double | 图层的最大可见比例尺。最大可见比例尺不可为负，当地图的当前显示比例尺大于图层最大可见比例尺时，此图层将不显示。 默认为0。 |
| minScale | double | 图层的最小可见比例尺。最小可见比例尺不可为负。当地图的当前显示比例尺小于图层最小可见比例尺时，此图层将不显示。 默认为0。 |
| minVisibleGeometrySize | double | 几何对象的最小可见大小，单位：像素。 |
| opaqueRate | int | 图层的不透明度，0-100。 |
| symbolScalable | boolean | 是否允许图层的符号大小随图缩放。 true 表示当图层被放大或缩小时，符号也随之放大或缩小；false 表示图层的符号大小不可随图缩放。 |
| symbolScale | double | 图层的符号缩放基准比例尺。 符号缩放基准比例尺在允许符号随图缩放时有效，指定了在随图缩放时，所设置的符号大小所对应的地图显示比例尺。 |
| datasetInfo | [DatasetInfo](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/DatasetInfo.html) | 图层对应的数据集对象。图层是对数据集的引用，因而，一个图层与一个数据集相对应。 |
| displayFilter | String | 图层的显示过滤条件。 过滤条件是在数据库的属性数据上进行过滤，例如图层的属性数据库存在 smid 字段，过滤条件为 smid > 20，则几何属性 smid 的值大于20的几何对象将显示在地图窗口中，其余对象不显示。 |
| joinItems | [JoinItem](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/JoinItem.html)[] | 连接信息。 |
| representationField | String | 存储制图表达信息的字段。 制图表达是矢量数据集中几何对象所关联的信息，它可以使相应的几何对象在地图窗口中显示时，采用其他的表现方式，而原来的几何对象不再显示，注意原几何对象的数据并没有改变，只是显示方式有所变化。 |
| ugcLayerType | [UGCLayerType](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/UGCLayerType.html) | SuperMap 图层的类型。 SuperMap 图层的类型分：GRID（栅格图层）、IMAGE（影像图层）、THEME（专题图层）、VECTOR（矢量图层）、WFS（WFS 图层）、WMS（WMS 图层）。 |
| style | [Style](../../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Style.html) | 矢量图层的风格。 |
| gamma | double | 用于影像或栅格的非线性亮度和对比度调整，取值为 0-10（包含0和10）。当图层类型为 SuperMap 栅格图层或影像图层时，响应体中包含此参数。 |
| fields | [filed](../../../../../field.htm)[] | 图层包含的字段信息数组。 |
#### 示例
对 layer 资源：http://localhost:8090/iserver/services/map-China100/rest/maps/China/layers/Main_Railway_L@China@@China.rjson?returnFields=true，执行 GET 请求，返回 Main_Railway_L@China 图层中包含的信息（Main_Railway_L@China 是一个 UGCVectorLayer 图层），rjson 格式的表述如下：
{
"ugcLayerType": "VECTOR",
"displayFilter": null,
"fieldValuesDisplayFilter": {
"fieldName": "",
"values": [],
"fieldValuesDisplayMode": "DISABLE"
},
"caption": "Main_Railway_L@China_L10-L13",
"description": "",
"type": "UGC",
"datasetInfo": {
"schema": null,
"charset": null,
"recordCount": 0,
"isFileCache": false,
"description": null,
"type": "LINE",
"dataSourceName": "China",
"tableName": null,
"isReadOnly": false,
"encodeType": null,
"bounds": {
"top": 6983716.901688325,
"left": 8456781.73220221,
"bottom": 2072536.377213049,
"leftBottom": {
"x": 8456781.73220221,
"y": 2072536.377213049
},
"right": 1.4973544066083536E7,
"rightTop": {
"x": 1.4973544066083536E7,
"y": 6983716.901688325
}
},
"name": "Main_Railway_L",
"prjCoordSys": null,
"datasourceConnectionInfo": null
},
"clipRegionEnabled": true,
"minVisibleGeometrySize": 0.1,
"minScale": 8.653637486605571E-7,
"joinItems": null,
"completeLineSymbolDisplayed": false,
"clipRegion": null,
"visible": true,
"maxScale": 0,
"symbolScalable": false,
"subLayers": {},
"queryable": false,
"opaqueRate": 100,
"name": "Main_Railway_L@China",
"bounds": {
"top": 6983716.901688325,
"left": 8456781.73220221,
"bottom": 2072536.377213049,
"leftBottom": {
"x": 8456781.73220221,
"y": 2072536.377213049
},
"right": 1.4973544066083536E7,
"rightTop": {
"x": 1.4973544066083536E7,
"y": 6983716.901688325
}
},
"style": {
"fillGradientOffsetRatioX": 0,
"markerSize": 2.4,
"fillForeColor": {
"red": 208,
"green": 255,
"blue": 240,
"alpha": 255
},
"fillGradientOffsetRatioY": 0,
"markerWidth": 0,
"markerAngle": 0,
"fillSymbolID": 0,
"lineColor": {
"red": 201,
"green": 201,
"blue": 201,
"alpha": 255
},
"markerSymbolID": 0,
"lineWidth": 0.1,
"markerHeight": 0,
"fillOpaqueRate": 100,
"fillBackOpaque": true,
"fillBackColor": {
"red": 255,
"green": 255,
"blue": 255,
"alpha": 255
},
"fillGradientMode": "NONE",
"lineSymbolID": 964814,
"fillGradientAngle": 0
},
"displayOrderBy": null,
"symbolScale": 0,
"fields": [
{
"isRequired": true,
"defaultValue": "",
"name": "SmID",
"caption": "SmID",
"type": "INT32",
"maxLength": 4,
"isZeroLengthAllowed": true,
"isSystemField": true
},
{
"isRequired": true,
"defaultValue": "0",
"name": "SmUserID",
"caption": "SmUserID",
"type": "INT32",
"maxLength": 4,
"isZeroLengthAllowed": true,
"isSystemField": false
},
{
"isRequired": true,
"defaultValue": "0",
"name": "SmLength",
"caption": "SmLength",
"type": "DOUBLE",
"maxLength": 8,
"isZeroLengthAllowed": true,
"isSystemField": true
},
{
"isRequired": true,
"defaultValue": "0",
"name": "SmTopoError",
"caption": "SmTopoError",
"type": "INT32",
"maxLength": 4,
"isZeroLengthAllowed": true,
"isSystemField": true
},
{
"isRequired": true,
"defaultValue": "",
"name": "SmGeometry",
"caption": "SmGeometry",
"type": "LONGBINARY",
"maxLength": 0,
"isZeroLengthAllowed": true,
"isSystemField": true
},
{
"isRequired": false,
"defaultValue": "",
"name": "GB",
"caption": "GB",
"type": "DOUBLE",
"maxLength": 8,
"isZeroLengthAllowed": true,
"isSystemField": false
},
{
"isRequired": false,
"defaultValue": "",
"name": "RN",
"caption": "RN",
"type": "WTEXT",
"maxLength": 7,
"isZeroLengthAllowed": true,
"isSystemField": false
},
{
"isRequired": false,
"defaultValue": "",
"name": "NAME",
"caption": "NAME",
"type": "WTEXT",
"maxLength": 60,
"isZeroLengthAllowed": true,
"isSystemField": false
},
{
"isRequired": false,
"defaultValue": "",
"name": "TYPE",
"caption": "TYPE",
"type": "WTEXT",
"maxLength": 20,
"isZeroLengthAllowed": true,
"isSystemField": false
},
{
"isRequired": false,
"defaultValue": "",
"name": "SHAPE_Leng",
"caption": "SHAPE_Leng",
"type": "DOUBLE",
"maxLength": 8,
"isZeroLengthAllowed": true,
"isSystemField": false
}
],
"representationField": ""
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断图层资源是否存在，或者客户端是否有权限访问图层资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断图层资源是否支持<format>格式的表述。
## 请参见
- [layers](../layers.htm)，[legend](legend.htm)，[visible](visible.htm)，[queryable](queryable.htm)，[style](style.htm)
- [客户端构建 REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../resource_hierarchy.htm)