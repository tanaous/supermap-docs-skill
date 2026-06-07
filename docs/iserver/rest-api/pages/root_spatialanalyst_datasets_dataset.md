# dataset

## URI
- 
[<datasets_uri>](datasets.htm#URI)/{datasetName}[.<format>]
- 
[<datasets_uri>](datasets.htm#URI)/{datasetIndex}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[datasets](datasets.htm)
## 子资源
[datasetBufferResults](datasetBufferResults/datasetBufferResults.htm)，[datasetOverlayResults](datasetOverlayResults/datasetOverlayResults.htm)，[datasetIsolineResults](datasetIsolineResults/datasetIsolineResults.htm)，[datasetIsoregionResults](datasetIsoregionResults/datasetIsoregionResults.htm)、[datasetInterpolation](interpolation/interpolation.htm)、[datasetGeorelationResults](datasetGeorelationResults/datasetGeorelationResults.htm)、[datasetLinearReferencing](linearReferencing/linearReferencing.htm)、[datasetThiessenPolygonResults](datasetThiessenResults/datasetThiessenResults.htm)、[datasetMinDistanceResults](datasetMinDistanceResults/datasetMinDistanceResults.htm)、[gridMathAnalyst](gridMathAnalyst/gridMathAnalyst.htm)、[datasetDensityAnalyst](Density/datasetDensityAnalyst.htm)、[terrainCalculation](terraincaCalulation/terrainCalculation.htm)、[RelativePosition3D](RelativePosition3D/RelativePosition3D.htm)、[SpatialQuery3D](../datasets_SpatialQuery3D/SpatialQuery3D.htm)、[shadowVolume](shadowVolume/datasetShadowVolumeResults.htm)、[planeProjection](planeProjection/datasetPlaneProjectionResults.htm)、[section](section/datasetSectionResults.htm)、[buffer3D](buffer3D/buffer3D.htm)、[border](border/border.htm)、[sunlight](sunlight/sunlight.htm)、[clip](clip/clip.htm)
## 介绍
数据集资源，返回某一数据集的详细信息。可以使用 datasetName 或者 datasetIndex 来访问。
支持的方法：
- [GET](#GET 请求)：获取数据集信息，以及其子资源，即支持的空间分析操作（不同类型的数据集支持不同的空间分析功能）。
- [HEAD](#HEAD 请求)：检查 dataset 资源是否存在，或权限是否可以访问 dataset 资源。
支持的表述格式：rjson、json、jsonp、html、xml。
## 资源层次
!\[](../../../../../assets/images/root/spatialanalyst/datasets/sp_ds_dataset.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation.rjson
### ](../../root.htm)GET 请求
获取数据集信息，以及其子资源，即支持的空间分析操作（不同类型的数据集支持不同的空间分析功能）。
#### 响应结构
返回的是 DatasetInfo 类型的表述。
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| datasetInfo | [DatasetInfo](../../../../iServerJavadoc/com/supermap/services/components/commontypes/DatasetInfo.html) | 数据集信息。 |
| childResourceInfos | [List<ChildResourceInfo>](../../../../iServerJavadoc/com/supermap/services/rest/commontypes/ChildResourceInfo.html) | 子资源信息，即针对此数据集可进行的空间分析操作的列表。 |
#### 响应示例
对 dataset 资源：http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation.rjson，执行 GET 请求，返回 RJSON 格式的响应如下：
{
"childResourceInfos": [{
"name": "datasetBufferResults",
"path": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/buffer",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
},
{
"name": "datasetGeorelationResults",
"path": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/georelation",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
},
{
"name": "datasetInterpolation",
"path": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/interpolation",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
},
{
"name": "datasetIsolineResults",
"path": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/isoline",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
},
{
"name": "datasetIsoregionResults",
"path": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/isoregion",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
},
{
"name": "datasetOverlayResults",
"path": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/SamplesP@Interpolation/overlay",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
}],
"datasetInfo": {
"bounds": {
"bottom": 1884474.0662141703,
"left": -2419318.165185321,
"leftBottom": {
"x": -2419318.165185321,
"y": 1884474.0662141703
},
"right": 2137211.956299985,
"rightTop": {
"x": 2137211.956299985,
"y": 5846399.0117541645
},
"top": 5846399.0117541645
},
"charset": "GB18030",
"dataSourceName": "Interpolation",
"description": "",
"encodeType": "NONE",
"isFileCache": false,
"isReadOnly": false,
"name": "SamplesP",
"prjCoordSys": {
"coordSystem": {
"datum": {
"name": "D_China_2000",
"spheroid": {
"axis": 6378137,
"flatten": 0.003352810681182319,
"name": "China_2000",
"type": "SPHEROID_CHINA_2000"
},
"type": "DATUM_CHINA_2000"
},
"name": "GCS_China_2000",
"primeMeridian": {
"longitudeValue": 0,
"name": "Greenwich",
"type": "PRIMEMERIDIAN_GREENWICH"
},
"spatialRefType": "SPATIALREF_EARTH_LONGITUDE_LATITUDE",
"type": "GCS_CHINA_2000",
"unit": "DEGREE"
},
"coordUnit": "METER",
"distanceUnit": "METER",
"epsgCode": -1000,
"name": "User Define",
"projection": {
"name": "Albers",
"type": "PRJ_ALBERS"
},
"projectionParam": {
"azimuth": 0,
"centralMeridian": 105,
"centralParallel": 0,
"falseEasting": 0,
"falseNorthing": 0,
"firstPointLongitude": 0,
"firstStandardParallel": 25,
"scaleFactor": 1,
"secondPointLongitude": 0,
"secondStandardParallel": 47
},
"type": "PCS_USER_DEFINED"
},
"recordCount": 400,
"tableName": "SamplesP",
"type": "POINT"
},
"name": null,
"path": null
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 dataset 资源是否存在，或者客户端是否有权限访问 dataset 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 dataset 资源是否支持<format>格式的表述。
## 请参见
- [datasets](datasets.htm)，[datasetBufferResults](datasetBufferResults/datasetBufferResults.htm)，[datasetOverlayResults](datasetOverlayResults/datasetOverlayResults.htm)，[datasetIsolineResults](datasetIsolineResults/datasetIsolineResults.htm)，[datasetIsoregionResults](datasetIsoregionResults/datasetIsoregionResults.htm)、[datasetInterpolation](interpolation/interpolation.htm)、[datasetGeorelationResults](datasetGeorelationResults/datasetGeorelationResults.htm)、[datasetLinearReferencing](linearReferencing/linearReferencing.htm)、[datasetThiessenPolygonResults](datasetThiessenResults/datasetThiessenResults.htm)、[shadowVolume](shadowVolume/datasetShadowVolumeResults.htm)、[planeProjection](planeProjection/datasetPlaneProjectionResults.htm)、[section](section/datasetSectionResults.htm)、[buffer3D](buffer3D/buffer3D.htm)、[border](border/border.htm)、[shadowratio](sunlight/sunlight.htm)
- [客户端构建 REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../resource_hierarchy.htm)