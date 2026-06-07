# 状态码列表及说明

客户端向 SuperMap iServer 服务器发送 HTTP 请求时，SuperMap iServer 服务器会根据请求的类型返回响应结果，通过响应结果中的状态码，客户端可以得知请求的处理情况。例如：是否成功、出错的原因，等等。
HTTP 协议定义了各个状态码代表的意义，官方定义有41种状态码，分5类，如下：
- 1xx：信息性——收到请求，继续处理
- 2xx：成功性——成功收到、理解并接受行动
- 3xx：重定向——必须采取进一步行动来完成请求
- 4xx：客户端错误——请求包含错误语法或不能完成
- 5xx：服务器错误——服务器没有成功完成显然有效的请求
SuperMap iServer 主要用到其中的2xx 系列、4xx 系列和5xx 系列，各个状态码的含义如下表所示：
| 状态码值 | 含义 |
| --- | --- |
| 200 | 表示服务器成功执行了客户端的 HTTP 请求。
如果请求的类型是 GET 说明获取资源成功，是 PUT 说明修改资源成功，是 DELETE 说明删除资源成功，是 HEAD 说明获取资源的元数据成功。 |
| 201 | 表示服务器按客户端的请求成功创建了一个新资源。对应的请求类型是 POST 或 PUT。
注意，这时返回的信息中会包含 Location 报头，指向新创建资源的规范 URI。 |
| 303 | 表示服务器将客户端的请求重定向到另一个 URI，要完成请求必须进行进一步操作。
例如，在访问 image 资源时，redirect 参数为 true（默认值）则表示重定向图片，URI 如下：
http://supermapiserver:8090/iserver/services/map-world/rest/maps/World Map/image.png?center={"x":103,"y":34}&scale=0.00000002&redirect=true
HTTP 响应的状态码为 303，并重定向到图片地址。 |
| 400 | 表示客户端的请求参数不合法或没有表达足够的信息。
例如，对 layers 资源执行 POST 操作创建一个新的图层，即 layer 资源，但如果没有在请求体里给出创建新图层必须的参数，即图层的描述信息，这时就会得到响应码400。 |
| 401 | 表示因为安全的原因，导致对资源的操作没有完成。
例如，删除数据集，可以对 dataset 资源执行 DELETE 请求（包含参数），URI 如下：
http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries.rjson
而创建新图层需要管理员权限，假设某个客户端没有这个权限，当它执行以上请求时，就会得到响应码401。 |
| 404 | 表示客户端请求的资源不存在，即 URI 无效。
例如，在获取名为 World 的 map 资源时，对如下 URI 执行 GET 请求：
http://supermapiserver:8090/iserver/services/components-rest/rest/maps/World.json
正常返回响应码200，说明成功获取资源；但当服务器（server）里根本没有名为 World 的 map 资源时，就会返回响应码404，表示资源无效。 |
| 405 | 表明资源不支持该操作。
例如：对 maps 资源执行 PUT 和 DELETE 请求会得到响应码405，表示 maps 资源对 PUT 和 DELETE 不支持。 |
| 406 | 表示资源不支持客户端请求的表述格式（参见 SuperMap iServer REST API 输出格式介绍）。
例如，在获取 maps 资源时，对如下 URI 执行 GET 请求：
http://supermapiserver:8090/iserver/services/components-rest/rest/maps.bmp
因为 maps 不是图片资源，所以不支持 BMP 的表述格式，这时就会得到响应码406。 |
| 500 | 表示服务器端发生非预期情况，导致请求没有完成。 |