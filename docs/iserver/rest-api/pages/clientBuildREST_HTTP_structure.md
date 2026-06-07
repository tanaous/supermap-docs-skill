# HTTP 请求消息的结构

REST 服务是通过标准 HTTP 请求来访问的，一个完整的 HTTP 请求由三个部分组成：请求行（Request Line）、消息头（Message Headers）和消息体（Entity Body），消息头与消息体之间通过空行（没有内容的行，即只有回车符和换行符）来分隔。
- 
请求行（Request Line）
请求行由三个标记组成：请求方法、请求 URI 和 HTTP 版本，它们用空格分隔。
例如：GET /news.asp HTTP/1.1
- 
消息头（Message Headers）
由域名/值对组成，每行一对，域名和值之间用紧跟的英文冒号（“:”），单空格（SP）分开。消息头通知服务器有关于客户端的功能和标识。如 Host: http://demo.com:80 表示请求的资源所在的主机和端口号，在 HTTP/1.1 协议中，Host 消息头是必选的。还可以有其他一些如 Accept-Charset、Accept-Encoding、Authorization 等等，详见 RFC1945，RFC2616。
- 
消息体（Entity Body）
HTTP 消息的消息体（如果存在），用于携带与请求相关联的数据，例如可以存一些请求需要的参数等。由消息头中的 Content-Length 或 Transfer-Encoding 来指示。消息头里的 Content-Type 说明了数据的传输类型。
一个完整的带消息体的 HTTP 请求示例如下：
POST /news.asp HTTP/1.1
Host: demo.com:80
Content-Length: 15
[a=1,(b=2,c=3)]
### 请参见
- [REST 中参数的传递方式](REST_ParamsTransfer.htm)
- [REST 中参数的构建](buildParam.htm)
- [REST 中 HTTP 请求示例](REST_HTTP.htm)