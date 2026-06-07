# datasetBorderResult

## URI
<[border_uri](border.htm#URI)>/{datasetBorderResultID}[.<format>]
## 支持的方法
[GET](#GET 请求)、[HEAD](#HEAD 请求)
## 父资源
[border](border.htm)
## 介绍
模型数据集提取边界的结果资源。
支持的方法：
- [GET](#GET 请求)：返回提取边界的结果资源。
- [HEAD](#HEAD 请求)：检查 datasetBorderResult 资源是否存在，或权限是否可以访问 datasetBorderResult 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/border/sp_ds_datasetBorderResult.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialAnalysis-BIM/restjsr/spatialanalyst/datasets/结构柱@8ExportModel/border/{datasetBorderResultID}.rjson
### ](../../../root.htm)GET 请求
返回提取边界的结果资源。
#### 响应结构
对资源执行 GET 请求后，响应参数如下：  
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| geometries | [Geometry3D](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/Geometry3D.html) | 提取边界的结果，即获取模型数据集的边界结果。 |
| succeed | boolean | 提取边界操作是否成功；成功则返回 true，否则返回 false。 |
| message | String | 提取边界过程中产生的相关信息。 |
#### 响应示例
对datasetBorderResult 资源：http://supermapiserver:8090/iserver/services/spatialAnalysis-BIM/restjsr/spatialanalyst/datasets/结构柱@8ExportModel/border/3e317537d15d45b6adfa6cb9898c923d.rjson执行 GET 请求后，返回的 json 结果如下：
{
"geometries":[{"center":null,"type":"REGION3D","scaleZ":1,"points":[{"x":115.50018835203832,"y":39.4998793307187,"z":-5.599965235218406},{"x":115.50019417296818,"y":39.499879330709156,"z":-5.5999639462679625},{"x":115.50019417298573,"y":39.49988561892156,"z":-5.5999653823673725},{"x":115.50018835205536,"y":39.499885618931096,"z":-5.599966671317816},{"x":115.50018835203832,"y":39.4998793307187,"z":-5.599965235218406}],"scaleX":1,"scaleY":1,"rotationX":0,"rotationY":0,"rotationZ":0,"parts":[5],"style":null,"prjCoordSys":null,"position":{"x":115.50019126251189,"y":39.499882474820126,"z":-5.599965294077992},"id":0,"partTopo":null},{"center":null,"type":"REGION3D","scaleZ":1,"points":[{"x":115.50019417286701,"y":39.4998856189915,"z":-1.69996552541852},{"x":115.50019417298573,"y":39.49988561892156,"z":-5.5999653823673725},{"x":115.50019417296818,"y":39.499879330709156,"z":-5.5999639462679625},{"x":115.50019417284945,"y":39.49987933078293,"z":-1.69996408931911},{"x":115.50019417286701,"y":39.4998856189915,"z":-1.69996552541852}],"scaleX":1,"scaleY":1,"rotationX":0,"rotationY":0,"rotationZ":0,"parts":[5],"style":null,"prjCoordSys":null,"position":{"x":115.50019417291759,"y":39.499882474850324,"z":-3.259964893758297},"id":0,"partTopo":null},{"center":null,"type":"REGION3D","scaleZ":1,"points":[{"x":115.50019417284945,"y":39.49987933078293,"z":-1.69996408931911},{"x":115.50019417296818,"y":39.499879330709156,"z":-5.5999639462679625},{"x":115.50018835203832,"y":39.4998793307187,"z":-5.599965235218406},{"x":115.50018835192316,"y":39.499879330792474,"z":-1.6999653773382306},{"x":115.50019417284945,"y":39.49987933078293,"z":-1.69996408931911}],"scaleX":1,"scaleY":1,"rotationX":0,"rotationY":0,"rotationZ":0,"parts":[5],"style":null,"prjCoordSys":null,"position":{"x":115.50019126244466,"y":39.499879330750815,"z":-3.259964547492564},"id":0,"partTopo":null},{"center":null,"type":"REGION3D","scaleZ":1,"points":[{"x":115.50018835192316,"y":39.499879330792474,"z":-1.6999653773382306},{"x":115.50018835203832,"y":39.4998793307187,"z":-5.599965235218406},{"x":115.50018835205536,"y":39.499885618931096,"z":-5.599966671317816},{"x":115.50018835194021,"y":39.499885619001034,"z":-1.6999668134376407},{"x":115.50018835192316,"y":39.499879330792474,"z":-1.6999653773382306}],"scaleX":1,"scaleY":1,"rotationX":0,"rotationY":0,"rotationZ":0,"parts":[5],"style":null,"prjCoordSys":null,"position":{"x":115.50018835198927,"y":39.49988247485987,"z":-3.2599658949300645},"id":0,"partTopo":null},{"center":null,"type":"REGION3D","scaleZ":1,"points":[{"x":115.50018835194021,"y":39.499885619001034,"z":-1.6999668134376407},{"x":115.50018835205536,"y":39.499885618931096,"z":-5.599966671317816},{"x":115.50019417298573,"y":39.49988561892156,"z":-5.5999653823673725},{"x":115.50019417286701,"y":39.4998856189915,"z":-1.69996552541852},{"x":115.50018835194021,"y":39.499885619001034,"z":-1.6999668134376407}],"scaleX":1,"scaleY":1,"rotationX":0,"rotationY":0,"rotationZ":0,"parts":[5],"style":null,"prjCoordSys":null,"position":{"x":115.50019126246195,"y":39.4998856189613,"z":-3.259966241195798},"id":0,"partTopo":null},{"center":null,"type":"REGION3D","scaleZ":1,"points":[{"x":115.50019417284945,"y":39.49987933078293,"z":-1.69996408931911},{"x":115.50018835192316,"y":39.499879330792474,"z":-1.6999653773382306},{"x":115.50018835194021,"y":39.499885619001034,"z":-1.6999668134376407},{"x":115.50019417286701,"y":39.4998856189915,"z":-1.69996552541852},{"x":115.50019417284945,"y":39.49987933078293,"z":-1.69996408931911}],"scaleX":1,"scaleY":1,"rotationX":0,"rotationY":0,"rotationZ":0,"parts":[5],"style":null,"prjCoordSys":null,"position":{"x":115.50019126239496,"y":39.49988247489198,"z":-1.6999651789665222},"id":0,"partTopo":null}],
"succeed":true,
"message":null
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 datasetBorderResult 资源是否存在，或者客户端是否有权限访问 datasetBorderResult 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 datasetBorderResult 资源是否支持<format>格式的表述。
## 请参见
- [border](border.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)