# 概述

REST，是 REpresentational State Transfer（表述性状态转移）的简称，它是一种软件架构风格。
REST 强调从资源的角度来观察整个网络，基于 REST 的架构是一种面向资源的架构（Resource-Oriented 
Architecture，ROA）。资源可以是具体的数据，也可以是能够实现某些功能的服务，资源通常由 URI（Uniform Resource 
Identifier，统一资源标识符）唯一标识，客户端的应用通过 URI 来获取资源的表述，获得这些表述致使客户端应用程序转变了状态，即，表述性的状态转变。
REST 通常使用 HTTP，URI，XML 以及 HTML 这些现有的广泛流行的协议和标准。
SuperMap iServer 采用 REST 架构，提供了基于标准 HTTP 协议的应用编程接口——iServer 
REST API，这些接口封装了大部分的 GIS 功能，包括地图功能、数据功能、分析功能、三维功能等。SuperMap iServer 将这些 
GIS 功能以资源的形式提供给客户端，客户端使用 iServer REST API 对资源进行操作，能够获取到相应的 GIS 能力。
SuperMap iServer REST API 包括以下特点：
- SuperMap iServer 提供的资源通过 URI 进行唯一标识。
- SuperMap iServer REST API 使用 HTTP 协议标准的方法，包括：GET、POST、PUT、DELETE 
方法等，分别对应对资源的四种操作，获取、创建、修改和删除等。
- SuperMap iServer 对资源提供多种格式的表述。
SuperMap iServer REST API 支持的 HTTP 版本包括：HTTP/1.1。
## 请参见：
- 有关 REST 相关介绍请参见 Roy Thomas Fielding 博士论文《Architectural 
Styles and the Design of Network-based Software Architectures》（中文版《架构风格与基于网络的软件架构设计》）
- [客户端构建 
REST 请求](clientBuildREST/ConstructRESTRequest.htm)
- [基于 Token 
访问受保护的 REST 服务资源](Token_RESTServices.htm)
- [状态码列表及说明](StatusCodeDescription.htm)
- [表述格式介绍](SuperMap_iServer_REST_API_OutputFormat.htm)
- [服务资源层次结构](resource_hierarchy.htm)
- [管理资源层次结构](Resources_Manager_Architecture.htm)
- [门户资源层次结构](iPortalArchitecture.htm)
- [临时资源的生命周期](tempResourcesLife.htm)