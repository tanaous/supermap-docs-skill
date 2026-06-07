# terrainCalculation

## URI
<[dataset_uri](../dataset.htm#URI)>/terraincalculation[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[curvature](curvature.htm)，[cutFill](cutfill.htm)，[terrainAspect](aspect.htm)，[terrainSlope](terrainSlope.htm)
## 介绍
地形分析功能的根资源，是所有地形计算资源的入口。
地形计算，是对栅格数据进行有关地形相关的计算，主要源数据是 DEM 数据。DEM 是由一组有序数值阵列形式表示地面高程的一种实体地面模型，包含了地面的高程信息，是对地貌形态的虚拟表示，非常适用于与地形相关的分析，因此广泛应用于水文、地貌、地质、气象、军事等诸多领域。
支持的方法：
- [GET](#GET 请求)：获取地形计算子资源。
- [HEAD](#HEAD 请求)：检查 terrainCalculation 
资源是否存在，或权限是否可以访问 terrainCalculation 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../../assets/images/root/spatialanalyst/datasets/terraincaCalulation/img/terrainCalculation.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/JingjinHillshade@Jingjin/terraincalculation.rjson
### ](../../../root.htm)GET 请求
获取地形计算子资源。
#### 响应结构
返回所有的地形计算方法子资源。
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | string | 子资源的名称。 |
| path | string | 子资源的 URI 路径。 |
| resourceConfigID | string | 在资源配置文件中的 ID。 |
| resourceType | [ResourceType](../../../../../iServerJavadoc/com/supermap/services/rest/commontypes/ResourceType.html) | 资源的类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 响应示例
对 terrainCalculation 资源 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/JingjinHillshade@Jingjin/terraincalculation.rjson，执行 
Get 请求，则返回的 rjson 格式表述如下：
[{
"name": "curvature",
"path": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/JingjinHillshade@Jingjin/terraincalculation/curvature",
"resourceConfigID": 
null,
"resourceType": null,
"supportedMediaTypes": 
null
}]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 terrainCalculation 资源是否存在，或者客户端是否有权限访问 
terrainCalculation 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 terrainCalculation 
资源是否支持<format>格式的表述。
## 请参见
- [curvature](curvature.htm)，[cutFill](cutfill.htm)，[terrainAspect](aspect.htm)，[terrainSlope](terrainSlope.htm)
- [客户端构建 
REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)