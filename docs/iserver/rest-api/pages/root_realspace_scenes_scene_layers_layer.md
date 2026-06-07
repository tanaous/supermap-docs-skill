# layer

## URI
- 
[<layers_uri>](layers.htm#URI)/{layerName}[.<format>]
- 
[<layers_uri>](layers.htm#URI)/{layerIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[layers](layers.htm)
## 介绍
layer 资源表示一个三维图层，在 URI 里通过{layerName}或{layerIndex}来标识。通过该资源可以获取三维场景中某一个三维图层的表述，表述包括三维图层的名称、类型、对应三维数据的路径、所用数据在三维数据中的缓存层号（仅当所用数据是三维缓存数据时）等等一些关于该三维图层的描述信息。
支持的方法：
- [GET](#GET 请求)：获取三维图层的表述。
- [HEAD](#HEAD 请求)：检查 layer 资源是否存在，或权限是否可以访问 layer 资源。
支持的表述格式：RJSON、JSON、JSONP、HTML、XML。
## 资源层次
!\[](../../../../../../../assets/images/root/Realspace/scenes/scene/layers/layer.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/scenes/scene/layers/bridge_beijing.rjson
### ](../../../../root.htm)GET 请求
获取当前三维场景中 bridge_beijing 三维图层的表述。
#### 请求参数
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| _cache | boolean | 【可选参数】 是否使用缓存，默认为 true。如果为 false，则关闭所有缓存。 |
#### 响应结构
对 layer （三维图层）资源执行 GET 请求，返回三维图层的表述结构如下：
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
对示例 Tree@CBD 三维图层，执行 GET 请求，返回 rjson 格式的表述如下：
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
}
可以从 “layer3DType” 可以看出，Tree@CBD 三维图层为 OSGBLayer 类型的图层，它对应的三维数据为 OSGB 数据，没有缓存层号的概念，所以字段“level”的值为-1，表示没有意义。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断三维图层资源是否存在，或者客户端是否有权限访问 layer 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 layer 资源是否支持<format>格式的表述。
## 请参见
- [layers](layers.htm)
- [客户端构建 REST 请求](../../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../../resource_hierarchy.htm)