# datasetLinearReferencing

## URI
[<dataset_uri>](../dataset.htm#URI)/linearreferencing[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[generateSpatialData](generateSpatialData.htm)
## 介绍
线性参考资源。该资源是动态分段功能的入口。动态分段技术是在传统 GIS 数据模型的基础上，利用线性参考技术，根据属性数据的空间位置，实现属性数据在地图上动态地显示、分析及输出等。
实现动态分段的一般过程为：
- 准备好路由数据集和事件表
- 根据路由数据集和事件表生成动态分段结果，即一个空间数据集
- 由客户端对空间数据集进行展示
目前只支持根据点或线事件表生成空间数据。
线性参考是一种采用沿具有测量值的线性要素的相对位置来描述和存储地理位置的方法，即使用距离来定位沿线的事件。这里的距离表示一个度量值，可以是长度，也可以是时间、费用等。
下图是线性参考的简单示意，图中底部的线是一条具有测量值的线段（比如公路、管道等），线上方的点和线段是发生在该线段上的事件（如公路上的交通事故、一段道路的路面材料等）。线性参考技术将图中沿线的点和线从左至右分别描述为：距离线段起始位置12个单位的点，沿线段第35个单位开始至第76个单位结束的线段，沿线段第84.3个单位的点。
![](../../../../../../assets/images/root/spatialanalyst/datasets/linearReferencing/img/linearRef.png)
在很多实际应用中，使用线性参考进行定位比传统的通过精确的 X、Y 坐标来定位更符合人们的习惯，从而能够更加有效地处理问题。比如在某某路口东300米处发生交通事故，比描述为发生在（6570.3876,3589.6082）坐标处更容易定位。
基本概念：
在 SuperMap 中，动态分段主要涉及两种数据结构：路由和事件。路由用来表达具有测量值的线对象，事件记录发生在路由上的现象的位置和其他属性。
路由：是使用唯一 ID 标识，并具有度量值的线对象。除有 X、Y 坐标外，每个节点还有一个用于度量的值（刻度值），是路由与一般线对象的根本区别。路由对象可以用来模拟现实世界中的公路、铁路、河流和管线等线性地物。存储了路由对象的数据集，称为路由数据集，是一个矢量数据集。
刻度值（M 值）：SuperMap 中，路由的节点信息由（X、Y、M）表达，如下图所示，为某个路由对象的节点信息。刻度值即 M 值，代表该节点到路由起点的度量值，该值可以是距离、时间或其他任何值。M 值独立于路由数据的坐标系统，其单位可以不与（X，Y）的坐标单位相同。M 值可以递增、递减或者保持不变。
![](../../../../../../assets/images/root/spatialanalyst/datasets/linearReferencing/img/LinearReferencing_1.png)
路由位置：路由的一个点或路由上一部分的位置，简称位置。分为点路由位置和线路由位置。点路由位置使用一个刻度值描述沿路由的一个位置，如某某路500米处；线路由位置使用起始刻度值和终止刻度值来描述路由上一部分，如某某路200到1000米处。
事件：包含路由位置及相关属性的一条记录称为路由事件，简称事件。存储了路由事件集合的属性表称为事件表。与路由位置对应，事件也分为点事件和线事件，分别存储于点事件表和线事件表中。点事件和线事件请参见 EventType 类型。
零长度事件：是指起始刻度与终止刻度相同的线事件。如果允许设置一个容限值，那么起始刻度与终止刻度的差值的绝对值小于该容限时，也可看做是零长度事件。
路由标识字段：路由数据集中的一个字段，存储了路由 ID，是路由对象的唯一标识字段。路由数据集、事件表和通过事件表生成的空间数据中均包含该字段，它将事件与路由或空间数据对应起来。注意，该字段只能是数值型。
支持的方法：
- [GET](#GET 请求)：获取当前数据集支持的线性参考分析资源。
- [HEAD](#HEAD 请求)：检查 linearReferencing 资源是否存在，或权限是否可以访问 linearReferencing 资源。
支持的表述格式：（rjson、json、html、xml）。
## 资源层次
![](../../../../../../assets/images/root/spatialanalyst/datasets/linearReferencing/img/linearReferencing.png) 
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/RouteDT_road@Changchun/linearreferencing.rjson
### ](../../../root.htm)GET 请求
获取当前数据集支持的线性参考分析资源。
#### 响应结构
返回当前数据集支持的线性分析资源，包括资源名、路径、类型等信息。
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| name | string | 子资源的名称。 |
| path | string | 子资源的 URI 路径。 |
| resourceConfigID | string | 在资源配置文件中的 ID。 |
| resourceType | [ResourceType](../../../../../iServerJavadoc/com/supermap/services/rest/commontypes/ResourceType.html) | 资源的类型。 |
| supportedMediaTypes | string[] | 支持的表述类型。 |
| visible | Boolean | 是否可见，默认为 true。 |
#### 响应示例
对 http://localhost:8090/iserver/services/spatialanalyst-changchun/restjsr/restjsr/spatialanalyst/datasets/RouteDT_road@Changchun/linearreferencing.rjson 执行 GET 请求，则返回的 rjson 格式表述如下：
[{
"name": "generateSpatialData",
"path": "http://localhost:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/RouteDT_road@Changchun/linearreferencing/generatespatialdata",
"resourceConfigID": null,
"resourceType": null,
"supportedMediaTypes": null,
"visible": true
}]
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 linearReferencing 资源是否存在，或者客户端是否有权限访问 linearReferencing 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 linearReferencing 资源是否支持<format>格式的表述。
## 请参见
- [spatialanalyst](../../spatialanalyst.htm)、[datasets](../datasets.htm)、[dataset](../dataset.htm)，[generateSpatialData](generateSpatialData.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)