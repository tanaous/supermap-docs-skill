# POST 请求模拟 GET 请求

GET 请求通常用于获取资源的表述或操作结果，在发送 GET 请求时需给出操作所需的请求参数，并在请求 URI 中表现出来。然而，不同资源不同操作需要传递的参数有很大差别，有可能出现参数过多而导致 URI 长度过大的问题。比如在访问 distance 资源时，如果量算的点非常多，则参数中会有海量的组数据坐标对，有可能使请求 URI 长度过大而导致响应失败。并且，在 URI 中拼装请求参数无法直观看到参数结构，当请求参数结构复杂时，极易出错。
SuperMap iServer 提供了一种解决方法，即使用 POST 请求模拟 GET 请求的机制。具体方法为：在向操作资源进行请求时，将 GET 请求方法变更为 POST 请求方法，在请求 URI 后添加参数“_method= GET”来标识该 POST 请求模拟的是 GET 请求，并将原 URI 中的 GET 请求参数填写到 POST 请求体中。
当前，iServer 中以 rest、restjsr（包括 REST-矢量瓦片服务、REST-空间分析服务、REST-几何服务、REST-地址匹配服务、REST-交通换乘服务等）以及 wms111、wms130 为接口的服务支持此机制，您可通过指定资源的 URI 进行判断。如下分别以 REST 地址匹配服务中 geocoding 资源和 WMS 1.1.1 地图服务 GetFeatureInfo 为例，进行使用说明。
#### 示例1 对 geocoding 资源进行请求
对 geocoding 资源执行 GET 请求，查询某一个公司的地址，则请求 URI 为：http://localhost:8090/iserver/services/addressmatch-BeijingAddress/restjsr/v1/address/geocoding.rjson?address=京东方科技集团股份有限公司&fromIndex=0&toIndex=1&maxReturn=-1
若对 geocoding 资源使用 POST 请求模拟 GET 请求，则请求 URI 为：http://localhost:8090/iserver/services/addressmatch-BeijingAddress/restjsr/v1/address/geocoding.rjson?_method= GET。请求体如下：
{
"address":"京东方科技集团股份有限公司",
"fromIndex":0,
"toIndex":1,
"maxReturn":-1
}
#### 例2 对 GetFeatureInfo 操作进行请求
对 GetFeatureInfo 操作执行 GET 请求，在指定范围进行属性过滤，则请求 URI 为：http://localhost:8090/iserver/services/map-baseline/wms111/guangxi
?REQUEST=GetFeatureInfo&SERVICE=WMS&VERSION=1.1.1&INFO_FORMAT= text/xml &QUERY_LAYERS=0.1
&LAYERS=0.1&WIDTH=256&HEIGHT=256&SRS=EPSG:4326&BBOX=110.12596366179878,22.805670611177316,110.13216922057563,22.810863367830148
&X=15&Y=214&layerDefs={"0.1":"dlmc like '水田'"}&FEATURE_COUNT=2
若对 GetFeatureInfo 操作使用 POST 请求模拟 GET 请求，则请求 URI 为：http://localhost:8090/iserver/services/map-baseline/wms111/guangxi?_method=GET。请求体如下：
{
"SERVICE":"WMS",
"VERSION": "1.1.1",
"REQUEST": "GetFeatureInfo",
"LAYERS": "0.1",
"QUERY_LAYERS": "0.1",
"SRS": "EPSG:4326",
"BBOX": "110.12596366179878,22.805670611177316,110.13216922057563,22.810863367830148",
"WIDTH": 256,
"HEIGHT": 256,
"FEATURE_COUNT": 2,
"X":15,
"Y":214,
"layerDefs":{
"0.1":"dlmc like '水田'"
}
}