# scene

## URI
- 
[<scenes_uri>](../scenes.htm#URI)/{sceneName}[.<format>]
- 
[<scenes_uri>](../scenes.htm#URI)/{sceneIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[scenes](../scenes.htm)
## 子资源
[layers](layers/layers.htm)
## 介绍
scene 资源是一个具体的三维场景，三维场景的主体是一个模拟地球的三维球体，包含了大气环境、场景相机、雾、三维图层等信息，用于真实地将三维数据显示到三维球体上。可以使用{sceneName}或{sceneIndex}来访问一个具体的三维场景，优先以 sceneName 匹配资源。
该资源的 XML 表述是通过 SuperMap Objects Java 得到的标准的 Scene 的描述，三维客户端可以通过读取该 XML 文档，还原一个三维场景。
对 scene 资源执行 GET 请求时，可以获取 3D 表述，3D 表述是利用三维客户端对该三维场景的展现，即一个加载了该三维场景中所有图层的三维球体。
支持的方法：
- [GET](#GET 请求)：获取一个三维场景（{sceneName}）的描述。
- [HEAD](#HEAD 请求)：获取三维场景资源的元数据信息。检查该 scene 资源是否存在，权限是否可以访问。
支持的表述格式：RJSON、JSON、JSONP、HTML、XML、3D。
## 资源层次
!\[](../../../../../../assets/images/root/Realspace/scenes/scene/scene.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/3D-sample/rest/realspace/scenes/scene.rjson
### ](../../../root.htm)GET 请求
获取一个三维场景的描述。
#### 请求参数
无。
#### 响应结构
对 scene 资源执行 GET 请求，返回的资源表述（xml 格式的表述除外）的结构如下（资源表述在响应消息的实体主体里）：   
注意：为了方便将 xml 格式的表述转换成 SuperMap 的 scene 对象，xml 表述格式的结构与其他表述格式的结构不一样，但是内容相同。
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| atmosphere | Atmosphere | 大气环境。 |
| camera | Camera | 当前三维场景的场景相机，相当于视点。 |
| cameraFOV | double | 场景相机的视角，单位为度，范围为0-90度。默认值为45度。 |
| fog | Fog | 当前三维场景的雾对象。 场景中的 Fog、Lights 等对象跟三维地图的渲染效果有关。 |
| fogVisibleAltitude | double | 当前三维场景中雾的可见高度，即离地球表面的海拔距离。 |
| latLonGrid | LatLonGrid | 当前三维场景的经纬网设置。 用于设置当前场景的经纬网以及其中的文字是否可见。 |
| layers | Layer3Ds | 三维图层集合。 |
| maxCameraDistance | double | 场景相机的最大距离，单位为米。 |
| minCameraDistance | double | 场景相机的最小距离，单位为米。 |
| name | String | 当前三维场景的名称。 |
| scaleLegendVisible | boolean | 比例尺是否可见。 true 表示比例尺可见，false 表示不可见。 |
| screenLayer | ScreenLayer | 当前三维场景的屏幕图层。 一个三维场景有且只有一个屏幕图层，可以向屏幕图层添加任何三维几何对象，屏幕图层上的几何对象不随三维场景中球体的旋转、倾斜等操作而变化，屏幕图层上的对象相对于三维窗口是静止的，可以用于在三维窗口中显示静止的内容。 |
| terrainExaggeration | double | 地形夸大的比例。 |
| trackingLayer | TrackingLayer3D | 3D 跟踪图层。 |
#### 示例
对示例 scene 三维场景资源执行 GET 请求，返回 rjson 格式的描述如下：
{
"atmosphere": {"visible": true},
"camera": {
"altitude": 510.15876223985106,
"altitudeMode": "RELATIVE_TO_GROUND",
"empty": false,
"heading": 359.9998737040828,
"latitude": 39.99375298399387,
"longitude": 116.38343383513059,
"tilt": 71.565051177178
},
"cameraFOV": 60.00000000019494,
"fog": {
"color": {
"blue": 255,
"green": 255,
"red": 255
},
"density": 1,
"enable": false,
"endDistance": 1,
"mode": "EXP",
"startDistance": 0
},
"fogVisibleAltitude": 20000,
"latLonGrid": {
"textVisible": true,
"visible": false
},
"layers": [
{
"alwaysRender": true,
"bounds": null,
"cachePassword": "",
"caption": "OlympicGreen",
"dataConfigPath": "C:/SuperMap/SuperMapiServerJava6R/samples/data/Realspace/olympicgreen/OlympicGreen.scv",
"dataName": "OlympicGreen_705273881",
"description": "",
"editable": false,
"layer3DType": "VectorLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "OlympicGreen",
"oldCache": false,
"queryable": false,
"style": null,
"subLayers": {},
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "flyRoute2",
"dataConfigPath": "C:/SuperMap/SuperMapiServerJava6R/samples/data/Realspace/flyRoute2.kml",
"dataName": "flyRoute2_3725315",
"description": "",
"editable": false,
"layer3DType": "KMLLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "flyRoute2",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "flyRoute1",
"dataConfigPath": "C:/SuperMap/SuperMapiServerJava6R/samples/data/Realspace/flyRoute1.kml",
"dataName": "flyRoute1_4648836",
"description": "",
"editable": false,
"layer3DType": "KMLLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "flyRoute1",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "BirdNestRoad",
"dataConfigPath": "C:/SuperMap/SuperMapiServerJava6R/samples/data/Realspace/BirdNestRoad.kml",
"dataName": "BirdNestRoad_1014015224",
"description": "",
"editable": false,
"layer3DType": "KMLLayer",
"level": -1,
"maxVisibleAltitude": 2934.295784,
"minVisibleAltitude": 0,
"name": "BirdNestRoad",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "SubwayPoint@RealspaceSample",
"dataConfigPath": "SubwayPoint@RealspaceSample",
"dataName": "SubwayPoint@RealspaceSample",
"dataset": null,
"description": "",
"displayFilter": null,
"editable": false,
"layer3DSetting": {
"bottomAltitudeField": "",
"extendedHeightField": "",
"layer3DDatasetType": "GRID",
"sideTextureField": "",
"style": {
"altitudeMode": "CLAMP_TO_GROUND",
"bottomAltitude": 0,
"extendedHeight": 0,
"fillForeColor": {
"blue": 229,
"green": 255,
"red": 178
},
"fillMode": "LINE_AND_FILL",
"getMarkerColor": {
"blue": 102,
"green": 178,
"red": 51
},
"lineColor": {
"blue": 51,
"green": 204,
"red": 153
},
"lineWidth": 3,
"markerIconFile": null,
"markerIconScale": 0,
"markerSize": 6,
"sideTextureFiles": [],
"tilingU": 1,
"tilingV": 1,
"topTextureFile": "",
"xml": "<sml:Style>\r\n<sml:PointSize>6.0<\/sml:PointSize>\r\n<sml:ColorPoint>RGBA(0.2,0.7,0.4,1.0))<\/sml:ColorPoint>\r\n<sml:LineWidth>3<\/sml:LineWidth>\r\n<sml:Fill3DMode>FILL_FACEANDLINE<\/sml:Fill3DMode>\r\n<sml:ColorFill>RGBA(0.7,1.0,0.9,0.9))<\/sml:ColorFill>\r\n<sml:LineColor>RGBA(0.6,0.8,0.2,1.0))<\/sml:LineColor>\r\n<sml:IconScale>1.0<\/sml:IconScale>\r\n<sml:TilingU>1.0<\/sml:TilingU>\r\n<sml:TilingV>1.0<\/sml:TilingV>\r\n<sml:IconName/>\r\n<sml:SideTextureName/>\r\n<sml:TopTextureName/>\r\n<sml:BottomAltitude>0<\/sml:BottomAltitude>\r\n<sml:ExtendHeight>0<\/sml:ExtendHeight>\r\n<sml:AltitudeMode>ClampToGround<\/sml:AltitudeMode>\r\n<\/sml:Style>\r\n"
},
"tilingUField": "",
"tilingVField": "",
"topTextureField": ""
},
"layer3DType": "VectorLayer",
"level": -1,
"maxVisibleAltitude": 2934.295784,
"minVisibleAltitude": 0,
"name": "SubwayPoint@RealspaceSample",
"oldCache": false,
"queryable": false,
"subLayers": {},
"theme": null,
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "GasPoint@RealspaceSample",
"dataConfigPath": "GasPoint@RealspaceSample",
"dataName": "GasPoint@RealspaceSample",
"dataset": null,
"description": "",
"displayFilter": null,
"editable": false,
"layer3DSetting": {
"bottomAltitudeField": "",
"extendedHeightField": "",
"layer3DDatasetType": "GRID",
"sideTextureField": "",
"style": {
"altitudeMode": "CLAMP_TO_GROUND",
"bottomAltitude": 0,
"extendedHeight": 0,
"fillForeColor": {
"blue": 229,
"green": 255,
"red": 178
},
"fillMode": "LINE_AND_FILL",
"getMarkerColor": {
"blue": 102,
"green": 178,
"red": 51
},
"lineColor": {
"blue": 51,
"green": 204,
"red": 153
},
"lineWidth": 3,
"markerIconFile": null,
"markerIconScale": 0,
"markerSize": 6,
"sideTextureFiles": [],
"tilingU": 1,
"tilingV": 1,
"topTextureFile": "",
"xml": "<sml:Style>\r\n<sml:PointSize>6.0<\/sml:PointSize>\r\n<sml:ColorPoint>RGBA(0.2,0.7,0.4,1.0))<\/sml:ColorPoint>\r\n<sml:LineWidth>3<\/sml:LineWidth>\r\n<sml:Fill3DMode>FILL_FACEANDLINE<\/sml:Fill3DMode>\r\n<sml:ColorFill>RGBA(0.7,1.0,0.9,0.9))<\/sml:ColorFill>\r\n<sml:LineColor>RGBA(0.6,0.8,0.2,1.0))<\/sml:LineColor>\r\n<sml:IconScale>1.0<\/sml:IconScale>\r\n<sml:TilingU>1.0<\/sml:TilingU>\r\n<sml:TilingV>1.0<\/sml:TilingV>\r\n<sml:IconName/>\r\n<sml:SideTextureName/>\r\n<sml:TopTextureName/>\r\n<sml:BottomAltitude>0<\/sml:BottomAltitude>\r\n<sml:ExtendHeight>0<\/sml:ExtendHeight>\r\n<sml:AltitudeMode>ClampToGround<\/sml:AltitudeMode>\r\n<\/sml:Style>\r\n"
},
"tilingUField": "",
"tilingVField": "",
"topTextureField": ""
},
"layer3DType": "VectorLayer",
"level": -1,
"maxVisibleAltitude": 2934.295784,
"minVisibleAltitude": 0,
"name": "GasPoint@RealspaceSample",
"oldCache": false,
"queryable": false,
"subLayers": {},
"theme": null,
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "BusPoint@RealspaceSample",
"dataConfigPath": "BusPoint@RealspaceSample",
"dataName": "BusPoint@RealspaceSample",
"dataset": null,
"description": "",
"displayFilter": null,
"editable": false,
"layer3DSetting": {
"bottomAltitudeField": "",
"extendedHeightField": "",
"layer3DDatasetType": "GRID",
"sideTextureField": "",
"style": {
"altitudeMode": "CLAMP_TO_GROUND",
"bottomAltitude": 0,
"extendedHeight": 0,
"fillForeColor": {
"blue": 229,
"green": 255,
"red": 178
},
"fillMode": "LINE_AND_FILL",
"getMarkerColor": {
"blue": 102,
"green": 178,
"red": 51
},
"lineColor": {
"blue": 51,
"green": 204,
"red": 153
},
"lineWidth": 3,
"markerIconFile": null,
"markerIconScale": 0,
"markerSize": 6,
"sideTextureFiles": [],
"tilingU": 1,
"tilingV": 1,
"topTextureFile": "",
"xml": "<sml:Style>\r\n<sml:PointSize>6.0<\/sml:PointSize>\r\n<sml:ColorPoint>RGBA(0.2,0.7,0.4,1.0))<\/sml:ColorPoint>\r\n<sml:LineWidth>3<\/sml:LineWidth>\r\n<sml:Fill3DMode>FILL_FACEANDLINE<\/sml:Fill3DMode>\r\n<sml:ColorFill>RGBA(0.7,1.0,0.9,0.9))<\/sml:ColorFill>\r\n<sml:LineColor>RGBA(0.6,0.8,0.2,1.0))<\/sml:LineColor>\r\n<sml:IconScale>1.0<\/sml:IconScale>\r\n<sml:TilingU>1.0<\/sml:TilingU>\r\n<sml:TilingV>1.0<\/sml:TilingV>\r\n<sml:IconName/>\r\n<sml:SideTextureName/>\r\n<sml:TopTextureName/>\r\n<sml:BottomAltitude>0<\/sml:BottomAltitude>\r\n<sml:ExtendHeight>0<\/sml:ExtendHeight>\r\n<sml:AltitudeMode>ClampToGround<\/sml:AltitudeMode>\r\n<\/sml:Style>\r\n"
},
"tilingUField": "",
"tilingVField": "",
"topTextureField": ""
},
"layer3DType": "VectorLayer",
"level": -1,
"maxVisibleAltitude": 2934.295784,
"minVisibleAltitude": 0,
"name": "BusPoint@RealspaceSample",
"oldCache": false,
"queryable": false,
"subLayers": {},
"theme": null,
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "RoadA@RealspaceSample",
"dataConfigPath": "RoadA@RealspaceSample",
"dataName": "RoadA@RealspaceSample",
"dataset": null,
"description": "",
"displayFilter": null,
"editable": false,
"layer3DSetting": {
"bottomAltitudeField": "",
"extendedHeightField": "",
"layer3DDatasetType": "GRID",
"sideTextureField": "",
"style": {
"altitudeMode": "CLAMP_TO_GROUND",
"bottomAltitude": 0,
"extendedHeight": 0,
"fillForeColor": {
"blue": 229,
"green": 255,
"red": 178
},
"fillMode": "LINE_AND_FILL",
"getMarkerColor": {
"blue": 102,
"green": 178,
"red": 51
},
"lineColor": {
"blue": 51,
"green": 204,
"red": 153
},
"lineWidth": 3,
"markerIconFile": null,
"markerIconScale": 0,
"markerSize": 6,
"sideTextureFiles": [],
"tilingU": 1,
"tilingV": 1,
"topTextureFile": "",
"xml": "<sml:Style>\r\n<sml:PointSize>6.0<\/sml:PointSize>\r\n<sml:ColorPoint>RGBA(0.2,0.7,0.4,1.0))<\/sml:ColorPoint>\r\n<sml:LineWidth>3<\/sml:LineWidth>\r\n<sml:Fill3DMode>FILL_FACEANDLINE<\/sml:Fill3DMode>\r\n<sml:ColorFill>RGBA(0.7,1.0,0.9,0.9))<\/sml:ColorFill>\r\n<sml:LineColor>RGBA(0.6,0.8,0.2,1.0))<\/sml:LineColor>\r\n<sml:IconScale>1.0<\/sml:IconScale>\r\n<sml:TilingU>1.0<\/sml:TilingU>\r\n<sml:TilingV>1.0<\/sml:TilingV>\r\n<sml:IconName/>\r\n<sml:SideTextureName/>\r\n<sml:TopTextureName/>\r\n<sml:BottomAltitude>0<\/sml:BottomAltitude>\r\n<sml:ExtendHeight>0<\/sml:ExtendHeight>\r\n<sml:AltitudeMode>ClampToGround<\/sml:AltitudeMode>\r\n<\/sml:Style>\r\n"
},
"tilingUField": "",
"tilingVField": "",
"topTextureField": ""
},
"layer3DType": "VectorLayer",
"level": -1,
"maxVisibleAltitude": 2934.295784,
"minVisibleAltitude": 0,
"name": "RoadA@RealspaceSample",
"oldCache": false,
"queryable": false,
"subLayers": {},
"theme": null,
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "lawn@RealspaceSample",
"dataConfigPath": "lawn@RealspaceSample",
"dataName": "lawn@RealspaceSample",
"dataset": null,
"description": "",
"displayFilter": null,
"editable": false,
"layer3DSetting": {
"bottomAltitudeField": "",
"extendedHeightField": "",
"layer3DDatasetType": "GRID",
"sideTextureField": "",
"style": {
"altitudeMode": "CLAMP_TO_GROUND",
"bottomAltitude": 0,
"extendedHeight": 0,
"fillForeColor": {
"blue": 229,
"green": 255,
"red": 178
},
"fillMode": "LINE_AND_FILL",
"getMarkerColor": {
"blue": 102,
"green": 178,
"red": 51
},
"lineColor": {
"blue": 229,
"green": 229,
"red": 229
},
"lineWidth": 1,
"markerIconFile": null,
"markerIconScale": 0,
"markerSize": 6,
"sideTextureFiles": [],
"tilingU": 1,
"tilingV": 1,
"topTextureFile": "",
"xml": "<sml:Style>\r\n<sml:PointSize>6.0<\/sml:PointSize>\r\n<sml:ColorPoint>RGBA(0.2,0.7,0.4,1.0))<\/sml:ColorPoint>\r\n<sml:LineWidth>1<\/sml:LineWidth>\r\n<sml:Fill3DMode>FILL_FACEANDLINE<\/sml:Fill3DMode>\r\n<sml:ColorFill>RGBA(0.7,1.0,0.9,0.9))<\/sml:ColorFill>\r\n<sml:LineColor>RGBA(0.9,0.9,0.9,1.0))<\/sml:LineColor>\r\n<sml:IconScale>1.0<\/sml:IconScale>\r\n<sml:TilingU>1.0<\/sml:TilingU>\r\n<sml:TilingV>1.0<\/sml:TilingV>\r\n<sml:IconName/>\r\n<sml:SideTextureName/>\r\n<sml:TopTextureName/>\r\n<sml:BottomAltitude>0<\/sml:BottomAltitude>\r\n<sml:ExtendHeight>0<\/sml:ExtendHeight>\r\n<sml:AltitudeMode>ClampToGround<\/sml:AltitudeMode>\r\n<\/sml:Style>\r\n"
},
"tilingUField": "",
"tilingVField": "",
"topTextureField": ""
},
"layer3DType": "VectorLayer",
"level": -1,
"maxVisibleAltitude": 2934.295784,
"minVisibleAltitude": 0,
"name": "lawn@RealspaceSample",
"oldCache": false,
"queryable": false,
"subLayers": {},
"theme": null,
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "buildings@RealspaceSample",
"dataConfigPath": "buildings@RealspaceSample",
"dataName": "buildings@RealspaceSample",
"dataset": null,
"description": "",
"displayFilter": null,
"editable": false,
"layer3DSetting": {
"bottomAltitudeField": "",
"extendedHeightField": "",
"layer3DDatasetType": "GRID",
"sideTextureField": "",
"style": {
"altitudeMode": "CLAMP_TO_GROUND",
"bottomAltitude": 0,
"extendedHeight": 0,
"fillForeColor": {
"blue": 229,
"green": 255,
"red": 178
},
"fillMode": "LINE_AND_FILL",
"getMarkerColor": {
"blue": 102,
"green": 178,
"red": 51
},
"lineColor": {
"blue": 229,
"green": 229,
"red": 229
},
"lineWidth": 1,
"markerIconFile": null,
"markerIconScale": 0,
"markerSize": 6,
"sideTextureFiles": [],
"tilingU": 1,
"tilingV": 1,
"topTextureFile": "",
"xml": "<sml:Style>\r\n<sml:PointSize>6.0<\/sml:PointSize>\r\n<sml:ColorPoint>RGBA(0.2,0.7,0.4,1.0))<\/sml:ColorPoint>\r\n<sml:LineWidth>1<\/sml:LineWidth>\r\n<sml:Fill3DMode>FILL_FACEANDLINE<\/sml:Fill3DMode>\r\n<sml:ColorFill>RGBA(0.7,1.0,0.9,0.9))<\/sml:ColorFill>\r\n<sml:LineColor>RGBA(0.9,0.9,0.9,1.0))<\/sml:LineColor>\r\n<sml:IconScale>1.0<\/sml:IconScale>\r\n<sml:TilingU>1.0<\/sml:TilingU>\r\n<sml:TilingV>1.0<\/sml:TilingV>\r\n<sml:IconName/>\r\n<sml:SideTextureName/>\r\n<sml:TopTextureName/>\r\n<sml:BottomAltitude>0<\/sml:BottomAltitude>\r\n<sml:ExtendHeight>0<\/sml:ExtendHeight>\r\n<sml:AltitudeMode>ClampToGround<\/sml:AltitudeMode>\r\n<\/sml:Style>\r\n"
},
"tilingUField": "",
"tilingVField": "",
"topTextureField": ""
},
"layer3DType": "VectorLayer",
"level": -1,
"maxVisibleAltitude": 2934.295784,
"minVisibleAltitude": 0,
"name": "buildings@RealspaceSample",
"oldCache": false,
"queryable": false,
"subLayers": {},
"theme": null,
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "2015beijingsubway",
"dataConfigPath": "C:/SuperMap/SuperMapiServerJava6R/samples/data/Realspace/2015beijingsubway.kmz",
"dataName": "2015beijingsubway_1906626426",
"description": "",
"editable": false,
"layer3DType": "KMZLayer",
"level": -1,
"maxVisibleAltitude": 4143.914692,
"minVisibleAltitude": 0,
"name": "2015beijingsubway",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "bridge_beijing",
"dataConfigPath": "C:/SuperMap/SuperMapiServerJava6R/samples/data/Realspace/bridge_beijing.kml",
"dataName": "bridge_beijing_1477437759",
"description": "",
"editable": false,
"layer3DType": "KMLLayer",
"level": -1,
"maxVisibleAltitude": 601.746247,
"minVisibleAltitude": 0,
"name": "bridge_beijing",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cachePassword": null,
"caption": "beijing@beijing",
"dataConfigPath": "beijing@beijing",
"dataName": "beijing@beijing",
"dataset": null,
"description": "",
"displayFilter": null,
"editable": false,
"layer3DSetting": null,
"layer3DType": "ImageFileLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "beijing@beijing",
"oldCache": false,
"queryable": false,
"subLayers": {},
"theme": null,
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": true,
"bounds": null,
"cacheAutoCleared": false,
"cacheCapacity": -2147483648,
"cacheEnabled": false,
"cachePassword": null,
"caption": "WorldMap",
"dataConfigPath": "WorldMap",
"dataName": "WorldMap",
"description": "",
"editable": false,
"layer3DType": "MapLayer",
"level": -1,
"map": null,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 3145967.927476,
"name": "WorldMap",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"visible": true,
"visibleDistance": -1
},
{
"alwaysRender": false,
"bounds": null,
"cachePassword": "",
"caption": "Beijing@RealspaceSample",
"dataConfigPath": "Beijing@RealspaceSample",
"dataName": "Beijing@RealspaceSample_Terrain",
"datasetGrid": null,
"description": "",
"editable": false,
"layer3DType": "TerrainFileLayer",
"level": -1,
"maxVisibleAltitude": 0,
"minVisibleAltitude": 0,
"name": "Beijing@RealspaceSample_Terrain",
"oldCache": false,
"queryable": false,
"subLayers": {},
"type": null,
"visible": true,
"visibleDistance": 0
}
],
"maxCameraDistance": 4.78360275E7,
"minCameraDistance": 6367103,
"name": "scene",
"scaleLegendVisible": true,
"screenLayer": null,
"terrainExaggeration": 1,
"trackingLayer": null,
"xml": null
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 scene 三维场景是否存在，或者客户端是否有权限访问  scene 三维场景资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断  scene 三维场景资源是否支持<format>格式的表述。
## 请参见
- [layers](layers/layers.htm)、[scenes](../scenes.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)