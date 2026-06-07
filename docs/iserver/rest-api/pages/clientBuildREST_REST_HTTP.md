# REST 中 HTTP 请求示例

### 使用 URI 查询参数：
以 distance 资源为例，根据 REST API，distance 资源的 GET 请求的所有参数都是 URI 查询参数，参数说明如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| point2Ds | Point2D[] | 用于量算的点集。 |
| unit | Unit | 期望返回结果的单位。 |
则对 distance 资源执行 GET 请求，完整的 HTTP 请求应为：
GET /iserver/services/components-rest/rest/maps/World/distance.rjson?point2Ds=[{"y":26,"x":101},{"y":21,"x":97},{"y":16,"x":103}]&unit=METER HTTP/1.1
Host: supermapiserver:8090
### 使用请求体参数：
以 datasource 资源为例，根据 REST API，datasource 资源的 PUT 请求的所有参数都是请求体参数，参数说明如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| description | String | 数据源描述信息。 |
| coordUnit | Unit | 坐标单位。 |
| distanceUnit | Unit | 距离单位。 |
则对 datasource 资源执行 PUT 请求，完整的 HTTP 请求应为：
PUT /iserver/services/components-rest/rest/data/datasources/name/world.rjson HTTP/1.1
Host: supermapiserver:8090
Content-Length: 84
{"coordUnit":"MILE","description":"This is a new description","distanceUnit":"MILE"}
如果以 XML 格式传输请求体，则完整的 HTTP 请求应为：
PUT /iserver/services/components-rest/rest/data/datasources/name/world.rjson HTTP/1.1
Host: supermapiserver:8090
Content-Length: 84
X-RequestEntity-ContentType: application/xml
<Object>
<description>This is a new description</description>
<coordUnit>MILE</coordUnit>
<distanceUnit>MILE</distanceUnit>
</Object>
### 请参见
- [HTTP 请求消息的结构](HTTP_structure.htm)
- [REST 中参数的传递方式](REST_ParamsTransfer.htm)
- [REST 中参数的构建](buildParam.htm)