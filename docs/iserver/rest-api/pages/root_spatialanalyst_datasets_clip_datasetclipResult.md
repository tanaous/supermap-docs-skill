# datasetClipResult

## URI
<[clip_uri](clip.htm)>/{datasetclipResultID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[clip](clip.htm)
## 介绍
获取模型数据集裁剪结果资源。
支持的方法：
- [GET](#GET 请求)：返回模型数据集裁剪结果资源。
- [HEAD](#HEAD 请求)：检查 datasetClipResult 资源是否存在，或权限是否可以访问 datasetClipResult 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/clip/sp_ds_datasetclipResult.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialAnalysis-BIM/restjsr/spatialanalyst/datasets/结构框架%40管廊0629/clip/{datasetclipResultID}.rjson
### ](../../../root.htm)GET 请求
返回模型数据集裁剪结果资源。
#### 响应结构
对资源执行 GET 请求后，响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| geometries | [Geometry3D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry3D.html) | 模型数据集裁剪结果模型数组。 |
| succeed | boolean | 模型数据集裁剪是否成功；成功则返回 true，否则返回 false。 |
| message | String | 模型数据集裁剪过程中产生的相关信息。 |
#### 响应示例
对 datasetClipResult 资源：http://supermapiserver:8090/iserver/services/spatialAnalysis-BIM/restjsr/spatialanalyst/datasets/结构框架%40管廊0629/clip/{datasetclipResultID}.rjson，执行 GET 请求后，返回的 rjson 结果如下：
{
"geometries": [
{
"boundingBox": {
"lower": {
"x": 115.50013803211871,
"y": 39.50034813169894,
"z": 1.4200179064830965E-4
},
"upper": {
"x": 115.50026178668492,
"y": 39.50045607278759,
"z": 4.1002182748246
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50019990940181,
"y": 39.500402102243264,
"z": 0
},
"id": 1,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.5001774335089,
"y": 39.500432661853495,
"z": 0.29994740610888965
},
"upper": {
"x": 115.5003012047661,
"y": 39.500540638457075,
"z": 4.400039390562617
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.5002393191375,
"y": 39.500486650155295,
"z": 0
},
"id": 2,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50021685141651,
"y": 39.50051722748819,
"z": 0.5997685099181926
},
"upper": {
"x": 115.50034060639213,
"y": 39.500625168705724,
"z": 4.699876146627414
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50027872890432,
"y": 39.500571198096964,
"z": 0
},
"id": 3,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50025625288016,
"y": 39.500601757604215,
"z": 0.899605287322054
},
"upper": {
"x": 115.50038000818674,
"y": 39.50070969889597,
"z": 4.999728576929982
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50031813053346,
"y": 39.50065572825008,
"z": 0
},
"id": 4,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50056020203583,
"y": 39.50125382826893,
"z": 0.4057043730243426
},
"upper": {
"x": 115.5007217574538,
"y": 39.50144285887996,
"z": 4.50619659325299
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50064097974482,
"y": 39.50134834357445,
"z": 0
},
"id": 5,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50068093662038,
"y": 39.50151274459746,
"z": -0.19162224220555132
},
"upper": {
"x": 115.50082914747873,
"y": 39.501673145797824,
"z": 3.908858626955503
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50075504204958,
"y": 39.50159294519763,
"z": 0
},
"id": 6,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50063741242725,
"y": 39.50141944448202,
"z": 0.706202830364167
},
"upper": {
"x": 115.50073367207023,
"y": 39.501468396097316,
"z": 4.806285027513468
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50068554224873,
"y": 39.50144392028969,
"z": 0
},
"id": 7,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50062065745831,
"y": 39.500926330016526,
"z": -0.29882441022435896
},
"upper": {
"x": 115.50131634100893,
"y": 39.501176012308534,
"z": 3.80171084426376
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50096849923362,
"y": 39.501051171162516,
"z": 0
},
"id": 8,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50032578055593,
"y": 39.50068628761586,
"z": 1.199706379165421
},
"upper": {
"x": 115.5004163540849,
"y": 39.50077931561761,
"z": 5.599877680715191
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50037106732042,
"y": 39.50073280161673,
"z": 0
},
"id": 9,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50029563809129,
"y": 39.50070130173682,
"z": 1.199716357226849
},
"upper": {
"x": 115.50036211128094,
"y": 39.500793723515656,
"z": 5.599875848074772
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50032887468612,
"y": 39.50074751262623,
"z": 0
},
"id": 10,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50040003609224,
"y": 39.500845867839544,
"z": 2.3999750040551167
},
"upper": {
"x": 115.5004906130398,
"y": 39.50093889729645,
"z": 6.800183281593479
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50044532456602,
"y": 39.500892382568004,
"z": 0
},
"id": 11,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50034809165403,
"y": 39.50086084754757,
"z": 2.3999777091365444
},
"upper": {
"x": 115.50043647398367,
"y": 39.50094718846527,
"z": 6.800169796918214
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50039228281885,
"y": 39.50090401800642,
"z": 0
},
"id": 12,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50044457744771,
"y": 39.50100577687153,
"z": 0.40508847581826424
},
"upper": {
"x": 115.50054733004916,
"y": 39.50106865928338,
"z": 4.605179749429355
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50049595374844,
"y": 39.50103721807746,
"z": 0
},
"id": 13,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50040635516159,
"y": 39.50092377837541,
"z": 2.00639259485557
},
"upper": {
"x": 115.50049898611681,
"y": 39.50096494603153,
"z": 6.206430687392941
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50045267063922,
"y": 39.50094436220348,
"z": 0
},
"id": 14,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.500506941048,
"y": 39.50120153762641,
"z": 0.00154871636782292
},
"upper": {
"x": 115.5005903492289,
"y": 39.50127723467021,
"z": 5.601783828700079
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50054864513845,
"y": 39.50123938614831,
"z": 0
},
"id": 15,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50046297685115,
"y": 39.501060302876134,
"z": 0.0012139501023176822
},
"upper": {
"x": 115.50052449056771,
"y": 39.50114206976475,
"z": 5.601423922317755
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50049373370943,
"y": 39.50110118632043,
"z": 0
},
"id": 16,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50049299041858,
"y": 39.50104524754365,
"z": 0.0011980631771629753
},
"upper": {
"x": 115.50061651061529,
"y": 39.501127765078486,
"z": 5.601451419614456
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50055475051693,
"y": 39.50108650631107,
"z": 0
},
"id": 17,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50065112015962,
"y": 39.50144573922004,
"z": -0.19182844838996208
},
"upper": {
"x": 115.50077624645513,
"y": 39.50153615635781,
"z": 6.308383046125898
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50071368330737,
"y": 39.501490947788916,
"z": 0
},
"id": 18,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50041463164243,
"y": 39.50093849307898,
"z": 0.8048162450754961
},
"upper": {
"x": 115.50053988643553,
"y": 39.501029188102166,
"z": 7.304957609838196
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50047725903897,
"y": 39.50098384059058,
"z": 0
},
"id": 19,
"modelUrl": null,
"partTopo": null
},
{
"boundingBox": {
"lower": {
"x": 115.50031008988293,
"y": 39.50076426583844,
"z": 1.799854766871162
},
"upper": {
"x": 115.50045437518645,
"y": 39.50087532849343,
"z": 8.600001679169141
}
},
"filePath": null,
"center": null,
"type": "GEOMODEL3D",
"scaleZ": 1,
"points": null,
"scaleX": 1,
"scaleY": 1,
"rotationX": 0,
"rotationY": 0,
"rotationZ": 0,
"parts": null,
"model": null,
"style": null,
"prjCoordSys": null,
"position": {
"x": 115.50038223253468,
"y": 39.50081979716593,
"z": 0
},
"id": 20,
"modelUrl": null,
"partTopo": null
}
],
"succeed": true,
"message": null
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetClipResult 资源是否存在，或者客户端是否有权限访问 datasetClipResult 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetClipResult 资源是否支持<format>格式的表述。
## 请参见
- [clip](clip.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)