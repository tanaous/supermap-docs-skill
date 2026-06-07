# 概述

SuperMap iServer 提供了 REST 式的服务，这些服务以资源的形式存在，客户端通过对资源的操作实现相应的功能。在 SuperMap iServer 中，对资源的操作通过 HTTP 的四个方法来实现。
HTTP（HyperText Transfer Protocol）是互联网上应用最为广泛的一种网络协议，是一个客户端和服务器端请求和应答的标准（TCP）。由 HTTP 客户端发起一个请求，建立一个到服务器指定端口（默认是80端口）的 TCP 连接。HTTP 服务器则在那个端口监听客户端发送过来的请求。一旦收到请求，服务器（向客户端）发回一个状态行（Status-Line）（比如"HTTP/1.1 200 OK"）和响应消息，响应消息的消息体可能是请求的文件、错误消息、或者其他一些信息。
在 SuperMap iServer 中，所有的业务需求都可以映射成对资源的操作。获取资源的表述用 GET，修改资源用 PUT，添加一个资源用 POST 或者 PUT（POST 表示创建子资源，PUT 在目标资源不存在时创建资源本身），删除资源用 DELETE。支持 HEAD 操作，它只返回报头，不返回表述，用于得到资源的元数据，比如是否可访问，是否支持某种表述格式等。
这里，分如下几个方面介绍在客户端怎样构建一个 REST 请求：
- [HTTP 请求消息的结构](HTTP_structure.htm)
- [REST 中参数的传递方式](REST_ParamsTransfer.htm)
- [REST 中参数的构建](buildParam.htm)
- [几何对象的 JSON 格式构建](Geometry_Build.htm)
- [REST 中 HTTP 请求示例](REST_HTTP.htm)
- [用 POST 模拟 GET](POST_GET.htm)
##  请参见
- RFC1945，RFC2616
- [状态码列表及说明](../StatusCodeDescription.htm)
- [表述格式介绍](../SuperMap_iServer_REST_API_OutputFormat.htm)