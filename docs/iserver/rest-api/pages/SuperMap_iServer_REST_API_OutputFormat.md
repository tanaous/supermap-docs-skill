# 表述格式介绍

SuperMap iServer 服务器会对客户端 HTTP 请求做出响应，客户端执行 GET 请求，获得资源的表述，客户端执行 PUT、POST、DELETE 请求，获得操作结果的表述。表述可以有多种格式，如 html、xml、json、rjson、jsonp、png、bmp、gif 、jpg、jpeg、classic、leaflet、openlayers3、mapboxgl 等，其中 png、bmp、gif、jpg 及 jpeg 是图片资源特有的表述格式，classic、leaflet、openlayers3、mapboxgl 是 map 资源和 layer 资源支持的表述格式。
表述的格式在 HTTP 请求的 URI 中指定，形式是在 URI 后面加上.<format>。例如对 http://supermapiserver:8090/iserver/services/map-changchun/rest/maps.json 执行 GET 请求，就会返回 json 格式的 maps 资源的表述。
如果不指定<format>，SuperMap iServer 服务器以默认的表述格式返回相应表述，默认返回 html 格式的表述。
注意：获取图片资源的表述出错时，如果是 Debug 模式（在 AppContext.xml 中 REST 配置项的 debug 字段来设置，debug 为 true 表示为 Debug 模式，默认为 true），出错信息以 html 格式返回，否则以 json 格式返回。
目前，SuperMap iServer 支持的全部表述格式：
| - 
[html](#html) | - 
[rjson](#rjson) | - 
[jpg](#jpg) | - 
[WebP](#WebP) |
| --- | --- | --- | --- |
| - 
[kml](#kml) | - 
[jsonp](#jsonp) | - 
[wkt](#WKT) | - 
[georss](#georss) |
| - 
[png](#png) | - 
[classic](#classic) | - 
[FlatGeobuf](#FlatGeobuf) | - 
[xml](#xml) |
| - 
[bmp](#bmp) | - 
[geojson](#geojson) | - 
[json](#json) | - 
[gif](#gif) |
| - 
[openlayers](#openlayers) | - 
[openlayers with MVT](#openlayers3_with_MVT_) | - 
[leaflet](#leaflet) | - 
[mapboxgl](#mapboxgl) |
| - 
[WebGL3D](#WebGL3D) | | | |
## html
默认的非图片资源表述格式。返回一个 HTML 页面。HTML 可以容易地表达一个列表，而且可以用标准属性（class）表达列表的种类。
例如，要获得 maps 服务的 HTML 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps.html
因为 html 是默认的非图片资源表述格式，所以也可以不指定，直接使用如下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps
返回的示例如下所示：
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
……
</head>
<body>
……
<div id="content" valign="top" width="80%">
<h1>地图列表(maps)</h1>
……
<b>描述:</b>
……
<b>地图列表：</b>
……
<span><strong>HTTP 方法</strong></span>
……
<span><strong>表述格式</strong></span>
……
</div>
</body>
</html>
在浏览器中显示如下：
!\[](../../assets/images/htmlsample.png)
## xml
返回一个 xml 格式的文档。SuperMap iServer 自定义了一系列 XML 词汇，这样就能够更准确地表述资源。
例如，要获得 maps 服务的 XML 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-world/rest/maps.xml
返回的示例如下所示：
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<list>
<ChildResource>
<name>世界地图</name>
<resourceType>StaticResource</resourceType>
<resourceConfigID>map</resourceConfigID>
<path>http://localhost:8090/iserver/services/map-world/rest/maps/%E4%B8%96%E7%95%8C%E5%9C%B0%E5%9B%BE</path>
<supportedMediaTypes>
<string>application/xml</string>
<string>text/xml</string>
<string>application/json</string>
<string>application/rjson</string>
<string>text/html</string>
<string>application/jsonp</string>
<string>application/x-java-serialized-object</string>
<string>application/ajax</string>
<string>application/kml</string>
<string>application/ifx</string>
<string>application/flex</string>
<string>application/isl</string>
<string>application/silverlight</string>
<string>application/ijs</string>
<string>application/javascript</string>
<string>application/html5</string>
<string>application/smc</string>
<string>application/supermapcloud</string>
<string>application/tdt</string>
<string>application/ilt</string>
<string>application/leaflet</string>
<string>application/flash3d</string>
</supportedMediaTypes>
</ChildResource>
</list>
## kml
返回一个 KML 格式的页面，当资源是 map、 features、 feature 时有效。 KML（Keyhole Markup Language）是 GoolgleEarth 的文件格式，是一个基于 XML 语法和文件格式的文件，用来描述和保存如点、线、图片、折线等地理信息要素并在 Google Earth、 Google Map 等应用系统中显示。
例如，要获得 features 服务的 KML 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/services/data-changchun/rest/data/datasources/Changchun/datasets/Frame/features.kml
返回的示例如下所示：
<?xml version="1.0" encoding="utf-8" standalone="no"?>
<kml>
<Document>
<NetworkLink>
<name>0-1-0</name>
<Link>
<href>http://supermapiserver:8090/iserver/services/data-changchun/rest/data/feature/0-1-0.kml</href>
</Link>
</NetworkLink>
<NetworkLink>
<name>0-1-1</name>
<Link>
<href>http://supermapiserver:8090/iserver/services/data-changchun/rest/data/feature/0-1-1.kml</href>
</Link>
</NetworkLink>
</Document>
</kml>
要获得 map 服务的 KML 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps/长春市区图.kml
## georss
返回一个 GeoRSS 格式的页面，当资源是 features、feature 时有效。GeoRSS 是 OGC 在 GML（地理标记语言） 基础上推出的描述地理信息的规范，它使用 XML 语言存储和传输地理数据，用来描述和保存如点、线、面等地理信息要素。GeoRSS 提供了 GeoRSS Simple 和 GeoRSS GML Profile 两种形式，SuperMap iServer 目前支持 GeoRSS Simple 表述。GeoRSS 格式的地理要素信息可以通过 Virtual Earth 等应用系统显示。
例如，data-changchun/rest 服务中有一个名为 Park 的数据集，要获取其索引号为 0-0-0 的要素的 georss 表述，可以用以下 URI（有关 feature 资源的请求 URI，请参见 [feature 资源](root/data/datasources/datasource/datasets/dataset/features/feature/feature.htm)介绍）：
http://supermapiserver:8090/iserver/services/data-changchun/rest/data/feature/0-0-0.georss
返回的示例如下所示：
<?xml version="1.0" encoding="utf-8" standalone="no"?>
<rss xmlns:georss="http://www.georss.org/georss" version="2.0">
<channel>
<title>GeoRSS-Simple Representation for Feature Resource</title>
<link><![CDATA[http://supermapiserver:8090/iserver/services/data-changchun/rest/data/feature/0-0-0]]></link>
<item>
<title>朝阳公园</title>
<link><![CDATA[http://supermapiserver:8090/iserver/services/data-changchun/rest/data/feature/0-0-0]]></link>
<description><![CDATA[<table border='1'><tr><th colspan='9' scope='col'>朝阳公园</th></tr><tr><td>SMID</td><td>SMX</td><td>SMY</td><td>SMLIBTILEID</td><td>SMUSERID</td><td>SMGEOMETRYSIZE</td><td>NAME</td><td>X</td><td>Y</td></tr><tr><td>1</td><td>4597.873059</td><td>-4567.922216</td><td>1</td><td>0</td><td>16</td><td>朝阳公园</td><td>4597.873059</td><td>-4567.922216</td></tr></table>]]></description>
<georss:point>-4567.922216 4597.873059</georss:point>
</item>
</channel>
</rss>
## json
返回一个 JSON 字符串。JSON（JavaScript Object Notation）是一种 JavaScript 对象表示法，是一种轻量级的数据交换格式，可以表达一般的数据结构。
例如，要获得 maps 资源的 JSON 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps.json
返回的示例如下所示：
[
{
"resourceConfigID": "map",
"name": "长春市区图",
"path": "http://localhost:8090/iserver/services/map-changchun/rest/maps/%E9%95%BF%E6%98%A5%E5%B8%82%E5%8C%BA%E5%9B%BE",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"application/ajax",
"application/kml",
"application/ifx",
"application/flex",
"application/isl",
"application/silverlight",
"application/ijs",
"application/javascript",
"application/html5",
"application/smc",
"application/supermapcloud",
"application/tdt",
"application/ilt",
"application/leaflet",
"application/flash3d"
],
"resourceType": "StaticResource"
}
]
## rjson
执行 PUT、POST、DELETE、HEAD 请求时默认的操作结果表述格式。返回一个格式化了的 JSON 字符串，更便于阅读。
例如，要获得 maps 服务的 RJSON 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps.rjson
返回的示例如下所示：
[{
"name": "长春市区图",
"path": "http://localhost:8090/iserver/services/map-changchun/rest/maps/%E9%95%BF%E6%98%A5%E5%B8%82%E5%8C%BA%E5%9B%BE",
"resourceConfigID": "map",
"resourceType": "StaticResource",
"supportedMediaTypes": [
"application/xml",
"text/xml",
"application/json",
"application/rjson",
"text/html",
"application/jsonp",
"application/x-java-serialized-object",
"application/ajax",
"application/kml",
"application/ifx",
"application/flex",
"application/isl",
"application/silverlight",
"application/ijs",
"application/javascript",
"application/html5",
"application/smc",
"application/supermapcloud",
"application/tdt",
"application/ilt",
"application/leaflet",
"application/flash3d"
]
}]
## jsonp
JSONP（JSON with Padding）是 JSON 格式的一种补充，用于方便客户端实现跨域访问。
例如，要获得 maps 资源的 JSONP 表述，指定回调函数名为 mycallbackname，可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps.jsonp?callback=mycallbackname
返回的示例如下所示：
callBack11893434([{"resourceConfigID":"map","name":"长春市区图","path":"http://localhost:8090/iserver/services/map-changchun/rest/maps/%E9%95%BF%E6%98%A5%E5%B8%82%E5%8C%BA%E5%9B%BE","supportedMediaTypes":["application/xml","text/xml","application/json","application/rjson","text/html","application/jsonp","application/x-java-serialized-object","application/ajax","application/kml","application/ifx","application/flex","application/isl","application/silverlight","application/ijs","application/javascript","application/html5","application/smc","application/supermapcloud","application/tdt","application/ilt","application/leaflet","application/flash3d"],"resourceType":"StaticResource"}],200)
## png
返回请求的 PNG 格式图片，仅当资源是图片时有效。
例如，要获得名为长春市区图的地图的当前显示，格式为 PNG，可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps/长春市区图/image.png
## bmp
返回请求的 bmp 格式图片，仅当资源是图片时有效。
例如，要获得名为 World 的地图的当前显示，格式为 BMP，可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps/长春市区图/image.bmp
## gif
返回请求的 GIF 格式图片，仅当资源是图片时有效。
例如，要获得名为长春市区图的地图的当前显示，格式为 GIF，可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps/长春市区图/image.gif
## jpg
返回请求的 JPEG 格式图片，仅当资源是图片时有效。
例如，要获得名为长春市区图的地图的当前显示，格式为 JPEG（*.jpg），可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps/长春市区图/image.jpg
## WebP
返回请求的 WebP 格式图片，仅当资源是图片时有效。WebP 是谷歌提出的一种既提供有损压缩也提供无损压缩的图片格式，WebP 无损压缩图片的大小小于相同图像质量的 PNG 格式的图像。目前地图服务的 image，tileImage，entireimage，overview，symbol，zxyTileImage 资源均支持通过 WebP 表述浏览。
例如，要获得名为长春市区图的地图的当前显示，格式为 WebP（*.webp），可以用以下 URI：
http://supermapiserver:8090/iserver/services/map-changchun/rest/maps/长春市区图/image.webp
注：在切图时，栅格、影像数据建议使用 WebP 格式，矢量数据建议使用 PNG 格式。
## classic
当资源是 map、layer 时 classic 表述有效。classic 表述是针对 JavaScript 客户端的应用，实现了简单的地图功能，如缩放、量算等。
例如，要获得名为 World Map 的地图的classic 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/representations/classic/map.html?serviceName=map-World&mapName=World
## wkt
对于地图模块的=[prjCoordSys](root/maps/map/PrjCoordSys.htm)资源，SuperMap iServer 提供了 WKT 表述用于表达当前地图坐标参考系统。WKT（Well-known Text）是 OGC（开放地理空间联盟）制定的一种文本标记语言，用于表示几何对象、坐标参考系统及坐标系之间的转换。
[prjCoordSys](root/maps/map/PrjCoordSys.htm)资源的 WKT 表述用于表达当前地图的坐标参考系统，如：
http://supermapiserver:8090/iserver/services/map-world/rest/maps/世界地图/prjCoordSys.wkt
## geojson
当资源是features、feature、featureResult、queryResult时，geojson表述有效。GeoJSON是基于[JSON](#json)表示法的地理空间信息数据交换格式。
例如，要获得 World 数据服务中索引号为0-13-19的 feature 资源的 GeoJSON 表述，可以使用以下URI：
http://supermapiserver:8090/iserver/services/data-World/rest/data/feature/0-13-19.geojson
可获得名为0-13-19.geojson的文件，文件可用文本编辑器打开，内容示例如下：
{  "geometry":null,
"id":"20",
"type":
"Feature",
"properties":  {
"SQKM":"48775.27",
"SMSDRIW":"16.84472",
"SMSDRIS":"47.7375",
"POP_1994":"5374362.0",
"SMSDRIN":"49.60083",
"SMID":"20",
"COUNTRY":"斯洛伐克",
"CONTINENT":"欧洲",
"SMAREA":"4.892668943085318E10",
"COLORID":"1",
"SMPERIMETER":"1207821.0411783515",
"SQMI":"18832.13",
"SMGEOMETRYSIZE":"3544",
"COLOR_MAP":"2",
"CAPITAL":"布拉迪斯拉发",
"SMSDRIE":"22.558052",
"SMUSERID":"23"
}
}
## openlayers3
当资源是 map、layer 时 openlayers 表述有效。openlayers 表述是针对 JavaScript 客户端的应用，实现了简单的地图功能，如缩放、量算等。
例如，要获得名为 World Map 的地图的 openlayers 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/representations/openlayers3/map.html?serviceName=map-World&mapName=World
此外，从 V12 起，WMS 1.1.1、WMS 1.3.0、WMTS 1.0.0、WMTS-CHINA、WMTS-ARCGIS 等 OGC 地图服务中的地图也支持通过 openlayers 表述预览，其中 WMTS 服务还支持以指定矩阵集进行预览。获取相应服务中指定地图的 openlayers 表述 URI 如下：
| 服务类型 | URI |
| --- | --- |
| WMS 1.1.1 | 浏览器中需要输入的 url：http://supermapiserver:8090/iserver/services/{serviceName}/wms111/{layerName}.ol3
实际访问表述的url:http://supermapiserver:8090/iserver/representations/openlayers3/wmsMap.html?serviceName={serviceName}&serviceType=wms111&layerName={layerName} |
| WMS 1.3.0 | 浏览器中需要输入的 url：http://supermapiserver:8090/iserver/services/{serviceName}/wms130/{layerName}.ol3
实际访问表述的url:http://supermapiserver:8090/iserver/representations/openlayers3/wmsMap.html?serviceName={serviceName}&serviceType=wms130&layerName={layerName} |
| WMTS 1.0.0 | 浏览器中需要输入的 url：http://supermapiserver:8090/iserver/services/{serviceName}/wmts100.ol3?layerName={layerName}&tileMatrixSet={tileMatrixSet}
实际访问表述的url:http://supermapiserver:8090/iserver/representations/openlayers3/wmtsMap.html?serviceName={serviceName}&serviceType=wmts100&layerName={layerName}&tileMatrixSet={tileMatrixSet}&projection={projection}&extent={extent}&resolutions={resolutions} |
| WMTS-CHINA | 浏览器中需要输入的 url：http://supermapiserver:8090/iserver/services/{serviceName}/wmts-china.ol3?layerName={layerName}&tileMatrixSet={tileMatrixSet}
实际访问表述的url:http://supermapiserver:8090/iserver/representations/openlayers3/wmtsMap.html?serviceName={serviceName}&serviceType=wmts-china&layerName={layerName}&tileMatrixSet={tileMatrixSet}&projection={projection}&extent={extent}&resolutions={resolutions} |
| WMTS-ARCGIS | 浏览器中需要输入的 url：http://supermapiserver:8090/iserver/services/{serviceName}/wmts-arcgis.ol3?layerName={layerName}&tileMatrixSet={tileMatrixSet}
实际访问表述的url:http://supermapiserver:8090/iserver/representations/openlayers3/wmtsMap.html?serviceName={serviceName}&serviceType=wmts-arcgis&layerName={layerName}&tileMatrixSet={tileMatrixSet}&projection={projection}&extent= |
对于 WMTS 服务，输入的 url 参数中 layerName 和 tileMatrixSet 为可选，若您不设置此两项参数，访问表述时将默认按照能力文档中的第一个矩阵集来展示服务中的第一个地图。
## openlayers3 with MVT
当资源是 map、dataset 时 openlayers with MVT 表述有效。openlayers(with MVT) 表述是针对 JavaScript 客户端的应用，实现依照 Mapbox 矢量瓦片规范来浏览地图矢量要素。
例如，要获得名为 World Map 的地图的 openlayers with MVT 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/openlayers3/map.html?serviceName=map-World&mapName=World&isMvt=true
## leaflet
当资源是 map 时 leaflet 表述有效。leaflet 表述是针对 JavaScript 客户端的应用，实现了简单的地图功能，如缩放、量算等。
例如，要获得名为 World Map 的地图的 leaflet 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/representations/leaflet/map.html?serviceName=map-World&mapName=World
## mapboxgl
当资源是 map 时，且地图的投影坐标系为3857、4326、4490、4214、4610 时，mapboxgl 表述有效。mapboxgl 表述是针对 JavaScript 客户端的应用，实现了简单的地图功能，如缩放、量算等。mapboxgl 表述仅支持浏览地图矢量要素。
例如，要获得名为 China 的地图的 mapboxgl 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/representations/mapboxgl/map.html?serviceName=map-World&mapName=World
## WebGL3D
当资源是 map，且地图不是平面坐标系时，WebGL3D 表述有效。WebGL3D实现了简单的三维地图功能，如缩放、旋转等。
例如，要获得名为 World 的地图的 WebGL3D 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/representations/webgl3d/map.html?serviceName=map-World&mapName=World
## FlatGeobuf
当资源是 featureResults、featureResult、queryResults、queryResult、connectedEdges、traceDown、traceUp、geometryOverlayResult (geometry)、geometryBufferResult (geometry)、datasetBufferResult、datasetOverlayResult、datasetIsolineResult、datasetIsoregionResult、datasetThiessenPolygonResult、geometryBufferResult (spatialAnalyst)、geometryOverlayResult (spatialAnalyst)、geometryIsolineResult、 geometryIsoregionResult、 geometryThiessenPolygonResult 时，FlatGeobuf 表述有效。FlatGeobuf 是一种基于 flatbuffers，能容纳简单要素（Simple Features）规范下数据的二进制编码格式，具有文件较小，能够分段传输和局部加载的特点。FlatGeobuf 表述可以通过 URI.fgb 形式获得。
例如，要获得 World 数据服务中 Capitals 数据集 ID 为1-3 的要素查询结果的 FlatGeobuf 表述，可以用以下 URI：
http://supermapiserver:8090/iserver/services/data-World/rest/data/featureResults/d935257d1b284a3c9c187f65d8417b12_71377342b8b742deb45ea5fd4c58bf45.fgb
可获得名为 d935257d1b284a3c9c187f65d8417b12_71377342b8b742deb45ea5fd4c58bf45.fgb 的文件，可用 QGIS 等软件打开进行使用。