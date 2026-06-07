# layers

## URI
[<scene_uri>](../scene.htm#URI)/layers[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[scene](../scene.htm)
## 子资源
[layer](layer.htm)
## 介绍
layers 资源对应一个三维场景中的三维图层集合。通过它可以获取当前三维场景中，三维图层的列表。
支持的方法：
- [GET](#GET 请求)：获取三维图层集合。
- [HEAD](#HEAD 请求)：检查三维图层集资源是否存在，或权限是否可以访问 layers 资源。
支持的表述格式：RJSON、JSON、JSONP、HTML、XML。
## 资源层次
!\[](../../../../../../../assets/images/root/Realspace/scenes/scene/layers/layers.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/scenes/scene/layers.rjson
### ](../../../../root.htm)GET 请求
获取当前三维场景中的三维图层列表。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 layers （三维图层集）资源执行 GET 请求，返回的响应是一个三维图层集，其中单个三维图层的描述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| alwaysRender | boolean | 图层是否始终渲染。 |
| bounds | Rectangle2D | 图层范围。 |
| cachePassword | String | 三维图层的密码。 |
| caption | String | 图层的标题。 默认情况下图层的标题与图层的名称一致，用户可以根据具体情况修改图层的标题。 |
| dataConfigPath | String | 三维图层所使用的数据的路径。 |
| dataName | String | 三维图层名称。 |
| description | String | 图层的描述信息。 |
| editable | boolean | 图层是否可被编辑。 |
| hasLocalCache | boolean | 三维切片缓存是否保存在本地。 |
| layer3DType | Layer3DType | 图层的类型。 |
| level | int | 缓存层号。 |
| maxVisibleAltitude | double | 最大可见高度。 |
| minVisibleAltitude | double | 最低可见高度。 |
| name | String | 图层的名称。 图层的名称在图层所在的地图中唯一标识此图层，区分大小写。 |
| oldCache | boolean | 是否使用旧缓存。 |
| queryable | boolean | 图层中的对象是否可以查询。 |
| style | String | 图层的渲染风格。 |
| subLayers | String | 子图层信息。 |
| visible | boolean | 图层是否可见。 |
| visibleDistance | double | 三维图层中对象的可见距离。 |
#### 示例
对示例三维服务的 layers 资源（scene 场景中的三维图层集 ）执行 GET 请求，返回的 rjson 格式的表述如下：
[
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "Tree@CBD",
"dataConfigPath": "C:/SuperMap/SuperMapiServer/samples/data/Realspace/CBD/Tree@CBD/Tree@CBD.scp",
"dataName": "Tree@CBD",
"description": "",
"editable": false,
"hasLocalCache": true,
"isWebDatasource": false,
"layer3DType": "OSGBLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "Tree@CBD",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"useTwoDimenCache": false,
"visible": true,
"visibleDistance": 0
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "Lake@CBD",
"dataConfigPath": "C:/SuperMap/SuperMapiServer/samples/data/Realspace/CBD/Lake@CBD/Lake@CBD.scp",
"dataName": "Lake@CBD",
"description": "",
"editable": false,
"hasLocalCache": true,
"isWebDatasource": false,
"layer3DType": "OSGBLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "Lake@CBD",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"useTwoDimenCache": false,
"visible": true,
"visibleDistance": 0
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "Ground_2@CBD",
"dataConfigPath":"C:/SuperMap/SuperMapiServer/samples/data/Realspace/CBD/Ground_2@CBD/Ground_2@CBD.scp",
"dataName": "Ground_2@CBD",
"description": "",
"editable": false,
"hasLocalCache": true,
"isWebDatasource": false,
"layer3DType": "OSGBLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "Ground_2@CBD",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"useTwoDimenCache": false,
"visible": true,
"visibleDistance": 0
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "Ground_1@CBD",
"dataConfigPath":"C:/SuperMap/SuperMapiServer/samples/data/Realspace/CBD/Ground_1@CBD/Ground_1@CBD.scp",
"dataName": "Ground_1@CBD",
"description": "",
"editable": false,
"hasLocalCache": true,
"isWebDatasource": false,
"layer3DType": "OSGBLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "Ground_1@CBD",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"useTwoDimenCache": false,
"visible": true,
"visibleDistance": 0
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "Building@CBD",
"dataConfigPath":"C:/SuperMap/SuperMapiServer/samples/data/Realspace/CBD/Building@CBD/Building@CBD.scp",
"dataName": "Building@CBD",
"description": "",
"editable": false,
"hasLocalCache": true,
"isWebDatasource": false,
"layer3DType": "OSGBLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "Building@CBD",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"useTwoDimenCache": false,
"visible": true,
"visibleDistance": 0
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断三维图层集资源是否存在，或者客户端是否有权限访问 layers 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 layers 资源是否支持<format>格式的表述。
## 请参见
- [layer](layer.htm)、[scene](../scene.htm)
- [客户端构建 REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../resource_hierarchy.htm)