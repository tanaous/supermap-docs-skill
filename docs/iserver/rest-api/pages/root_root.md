# root

## URI
- 
[<services_uri>](../services.htm#URI)/{component}/rest[.<format>]
- 
[<services_uri>](../services.htm#URI)/{component}/googlerest[.<format>]
- 
[<services_uri>](../services.htm#URI)/{component}/arcgisrest[.<format>]
- 
[<services_uri>](../services.htm#URI)/{component}/baidurest[.<format>]
- 
[<services_uri>](../services.htm#URI)/{component}/osmrest[.<format>]
- 
[<services_uri>](../services.htm#URI)/{component}/tmsrest[.<format>]
- 
[<services_uri>](../services.htm#URI)/{component}/restjsr[.<format>]
- 
[<services_uri>](../services.htm#URI)/{component}/dataflow[.<format>]
{component}/rest中，{component}可以是组件名，也可以是组件集名，REST API 中对每个模块都使用了对应的组件名，对应 SuperMap iServer 默认发布的服务。
- 地图模块：map-world。该组件可使用名为 rest、googlerest、baidurest、tmsrest、arcgisrest、osmrest、restjsr 的服务接口发布服务。当使用 restjsr 服务接口时，将发布为矢量瓦片服务。使用其他服务接口可发布为地图服务。若要在iServer中使用 googlerest、baidurest、tmsrest、arcgisrest、osmrest 服务接口，需选配三方服务分发许可模块。
- 数据模块：data-world。
- 三维模块：3D-sample。
- 空间分析模块：spatialanalyst-sample，该组件使用名为 restjsr 的服务接口发布服务。默认发布的服务中，根节点 URI 为：http://<server>:<port>/iserver/services/spatialanalyst-sample/restjsr[.<format>]
- 交通网络分析模块：transportationanalyst-sample。
- 三维网络分析模块：networkAnalyst3D-Pipe3D。
- 交通换乘分析模块：traffictransferanalyst-sample。
- 数据目录服务模块：dataCatalog。
- 动态标绘服务模块：plot-jingyong。
- 分布式分析服务：distributedanalyst。
- 地址匹配服务：addressmatch-Address。该组件使用名为 restjsr 的服务接口发布服务。默认发布的服务中，根节点 URI 为：http://<server>:<port>/iserver/services/addressmatch-Address/restjsr/{version}/address[.<format>]。
- 几何服务：geometry。该组件使用名为 restjsr 的服务接口发布服务。根节点 URI 为：http://<server>:<port>/iserver/services/geometry/restjsr/{version}/geometry[.<format>]{component}/dataflow是数据流服务根目录。根节点 URI 为：http://<server>:<port>/iserver/services/dataflow/dataflow[.<format>]
- Web打印服务模块：webprinting。该组件使用名为 rest 的服务接口发布服务。默认发布的服务中，根节点 URL 为：http://<server>:<port>/iserver/services/webprinting/rest[.<format>]。
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[services](../services.htm)
## 子资源
[3D](Realspace/Realspace.htm)、[address](address/address.htm)、[data](data/data.htm)、[dataCatalog](datacatalog/bigdata.htm)、[dataHistory](dataHistory/dataHistory.htm)、[dataflow](dataflow/dataflow.htm)、[facilityAnalyst3D](facilityAnalyst3D/facilityAnalyst3D.htm)、[geometry](geometry/geometry.htm)、[geoprocessing](geoprocessing/geoprocessing.htm)、[maps](maps/maps.htm)、[machinelearning](machinelearning/machineLearning.htm)、[networkAnalyst](networkanalyst/networkanalyst.htm)、[processingJobs](processingjobs/jobs.htm)、[plot](plot/plot.htm)、[spatialAnalyst](spatialanalyst/spatialanalyst.htm)、[trafficTransferAnalyst](traffictransferanalyst/trafficTransferAnalyst.htm)、[vectorTile](vectortile/vectortile.htm)、[webPrinting](webprinting/webprinting.htm)
## 介绍
root 资源是 SuperMap iServer 提供的各个 REST 服务的根节点，是访问各 GIS 服务的入口。其中，{component}是组件或组件集名，表示 REST 服务的来源。SuperMap iServer 默认发布的服务中，包含所有 REST 服务的根目录 URI 为：
http://<server>:<port>/iserver/services/components-rest/rest[.<format>]
其中 components-rest 是组件集名，它包含了 map、data、3D 等组件。
支持的方法：
- [GET](#GET 请求)：获取 root 资源的表述，即获取当前服务的入口。
- [HEAD](#HEAD 请求)：检查 root 资源是否存在，或权限是否可以访问 root 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../assets/images/root/root.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/components-rest/rest.rjson
### ](root.htm)GET 请求
获取 root 资源的表述，即获取当前服务的入口。
#### 响应结构
对 root 资源执行 GET 请求，在响应消息的实体主体里是一个资源描述集，其中单个资源描述的结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | String | 资源名称。 |
| path | String | 资源的访问路径。 |
| resourceConfigID | String | 资源配置项 ID。 |
| resourceType | String | 资源类型。 |
| supportedMediaTypes | String[] | 支持的表述的媒体类型。 |
#### 示例
对 root 资源：http://supermapiserver:8090/iserver/services/components-rest/rest.rjson 执行 GET 请求，返回 rjson 格式的资源描述如下：
[
{
"name": "maps",
"path": "http://supermapiserver:8090/iserver/services/components-rest/rest/maps",
"resourceConfigID": "maps",
"resourceType": "CatalogList",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html"
]
},
{
"name": "realspace",
"path": "http://supermapiserver:8090/iserver/services/components-rest/rest/realspace",
"resourceConfigID": "realspace",
"resourceType": "CatalogList",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html"
]
},
{
"name": "data",
"path": "http://supermapiserver:8090/iserver/services/components-rest/rest/data",
"resourceConfigID": "data",
"resourceType": "CatalogList",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html"
]
}
]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 root 资源是否存在，或者客户端是否有权限访问 root 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 root 资源是否支持<format>格式的表述。
## 请参见
- [3D](Realspace/Realspace.htm)、[address](address/address.htm)、[data](data/data.htm)、[dataCatalog](datacatalog/bigdata.htm)、[dataHistory](dataHistory/dataHistory.htm)、[dataflow](dataflow/dataflow.htm)、[facilityAnalyst3D](facilityAnalyst3D/facilityAnalyst3D.htm)、[geometry](geometry/geometry.htm)、[geoprocessing](geoprocessing/geoprocessing.htm)、[maps](maps/maps.htm)、[machinelearning](machinelearning/machineLearning.htm)、[networkAnalyst](networkanalyst/networkanalyst.htm)、[processingJobs](processingjobs/jobs.htm)、[plot](plot/plot.htm)、[spatialAnalyst](spatialanalyst/spatialanalyst.htm)、[trafficTransferAnalyst](traffictransferanalyst/trafficTransferAnalyst.htm)、[vectorTile](vectortile/vectortile.htm)、[webPrinting](webprinting/webprinting.htm)
- [客户端构建 REST 请求](../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../StatusCodeDescription.htm)
- [表述格式介绍](../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../resource_hierarchy.htm)