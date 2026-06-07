# service

## URI
<[services_uri](../services.htm)>/{id}[.<format>]
## 支持的方法
[GET](#GET 请求)、[PUT](#PUT 请求)、[DELETE ](#DELETE 请求)、[HEAD](#HEAD 请求)
## 父资源
[services](../services.htm)
## 子资源
[serviceCheckStatus](serviceCheckStatus.htm)、[serviceOffline](serviceOffline.htm)、[serviceShareSetting](serviceShareSetting.htm)、[serviceStatus](serviceStatus.htm)、[regionPermissions](regionPermissions/regionPermissions.htm)
## 介绍
service 资源是指定的服务或服务集合,支持检索，更新和删除服务，支持 iso19139 媒体类型。
支持的方法：
- [GET](#GET 请求)：获取指定的服务或服务集合信息。
- [PUT](#PUT 请求)：更新指定的服务或服务集合。
- [DELETE](#DELETE 请求)：删除指定的服务或服务集合。
- [HEAD](#HEAD 请求)：检查 service 资源是否存在，或权限是否可以访问 
service 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
![](../../../../../assets/images/Portal/img/service.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiportal 
是服务器名。
http://supermapiportal:8190/iportal/web/services/{id}.rjson
### ](../../Portal.htm)GET 请求
获取指定的服务或服务集合信息。
#### 响应结构
对 service 资源执行 GET 请求，获取指定的服务或服务集合信息，由以下字段组成：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| addedMapNames | Set<String> | 服务下的地图名称列表（注册服务时可选择使用字段）。 |
| addedSceneNames | Set<String> | 服务下的场景名称列表（注册服务时可选择使用字段）。 |
| authorizeSetting | List<[IportalAuthorizeEntity](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntity.html)> | 授权信息。 |
| checkStatus | [CheckStatus](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/CheckStatus.html) | 审核状态。 |
| checkTime | Long | 审核时间。 |
| checkUser | String | 审核人名称。 |
| checkUserNick | String | 审核人昵称。 |
| createTime | Long | 服务的注册时间。 |
| description | String | 服务的描述信息。 |
| enable | Boolean | 服务是否启用。 |
| id | Integer | 注册服务的标识。 |
| isBatch | Boolean | 是否是批量注册的。 |
| isDataItemService | Boolean | 是否是用户上传数据发布的服务注册进来的。 |
| linkPage | String | 服务的链接地址。 |
| mapInfos | List<[MapInfo](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/MapInfo.html)> | 服务中包含的地图列表。 |
| metadata | Metadata | 服务的元数据信息。 |
| nickname | String | 用户的昵称。 |
| offline | Boolean | 服务是否离线。 |
| proxiedUrl | String | 启用服务代理后的地址。 |
| previewUrl | String | 服务自定义预览地址。 |
| resTitle | String | 服务名称。 |
| scenes | List<[ServiceSceneInfo](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/ServiceSceneInfo.html)> | 服务中包含的三维场景列表。 |
| serviceRootUrlId | Integer | 该注册服务对应的服务根地址的标识。 |
| tags | List<String> | 服务的标签。 |
| thumbnail | String | 服务的缩略图路径。 |
| tokenRefreshUrl | String | 获取访问服务所需 Token 的 Token 刷新地址。 |
| type | [SourceType](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/SourceType.html) | 服务的类型。 |
| updateTime | Long | 更新日期。 |
| userName | String | 用户标识。 |
| verifyReason | String | 审核意见。 |
| version | String | 服务的版本，如 WMS 服务的1.3.0。 |
| visitCount | Integer | 服务的访问次数，只有启用服务代理功能后，该参数才生效。 |
#### 响应示例
对 service 资源：http://localhost:8190/iportal/web/services/1367633656.rjson 
执行 GET 请求，返回的 rjson 格式的资源表述如下：
{
"addedSceneNames": 
null,
"linkPage": "http://192.168.17.199:8090/iserver/services/data-world/rest",
"metadata": {
"mdLang": 
"zh_CN",
"mdContact": 
{
"rpCntInfo": 
{
"faxNum": 
"+86-10-59896666",
"cntOnLineRes": 
{
"orFunct": 
"",
"orDesc": 
"",
"linkage": 
"http://www.supermap.com.cn"
},
"voiceNum": 
"+86-10-59896655",
"cntAddress": 
{
"country": 
"PR China",
"delPoint": 
"6/F, Building 107, No. A10, Jiuxianqiao North Road, Chaoyang District",
"EMailAdd": 
"support@supermap.com",
"city": 
"Beijing",
"adminArea": 
"Chaoyang District",
"postCode": 
"100015"
}
},
"role": 
"SuperMap Software Co. ,Ltd",
"rpIndName": 
"",
"rpOrgName": 
"SuperMap Software Co. ,Ltd",
"rpPosName": 
""
},
"contInfo": 
{
"fetCatDesc": 
null
},
"spatRepInfo": 
{
"gridSpatRep": 
null,
"vectSpatRep": 
null
},
"mdDateSt": 
"2012-09-19",
"dqInfo": 
{
"dqStatement": 
"dataQualityStatement",
"linStatement": 
""
},
"mdStanVer": 
"1.0",
"dataIdInfo": 
{
"serIdent": 
null,
"dataIdent": 
{
"dsFormat": 
{
"formatVer": 
"smmd2007",
"formatName": 
"metadata content specification"
},
"idAbs": 
"",
"dataScale": 
{
"equScale": 
0
},
"resType": 
"Topographical vector data",
"dataLang": 
"zh_CN",
"idPurp": 
"",
"graphOver": 
{
"bgFileType": 
"",
"bgFileDesc": 
"",
"bgFileName": 
""
},
"refTheme": 
{
"sourceCode": 
null,
"code": 
null,
"theme": 
null,
"sourceName": 
null
},
"tpCat": 
"GIS Network engineering achievements",
"resSubType": 
"",
"idStatus": 
"completed",
"dataExt": 
{
"exDesc": 
null,
"geoEle": 
{
"geoBndBox": 
{
"eastBL": 
0,
"southBL": 
0,
"northBL": 
0,
"westBL": 
0
}
}
},
"idCitation": 
{
"resRefDate": 
{
"refDateType": 
"productioncompleted",
"refDate": 
"2008-02-16"
},
"resTitle": 
"data-world/rest",
"resEd": 
""
},
"spatRpType": 
"vector",
"dataChar": 
"GB2312",
"keyword": 
"service metadata",
"aggrInfo": 
{
"aggrDSName": 
null,
"assocType": 
null
},
"idPoC": 
{
"role": 
"SuperMap Software Co. ,Ltd",
"rpOrgName": 
"SuperMap Software Co. ,Ltd"
},
"resConst": 
{
"secConsts": 
{
"clazz": 
"confidential"
}
}
}
},
"refSysInfo": 
{
"refSysID": 
null,
"mdCoRefSys": 
{
"datum": 
"datum",
"zoneMethod": 
"zoneMethod",
"zone": 
0,
"projection": 
"projection",
"longCntMer": 
0,
"ellipsoid": 
"ellipsoid"
}
},
"mdChar": 
"GB2312",
"distInfo": 
{
"onLineSrc": 
{
"orFunct": 
"",
"orDesc": 
"",
"linkage": 
"http://127.0.0.1:8195/portalproxy/iserver/services/data-world/rest"
},
"distFormat": 
{
"formatVer": 
null,
"formatName": 
null
},
"distributor": 
{
"distorCont": 
{
"rpCntInfo": 
null,
"role": 
null,
"rpIndName": 
null,
"rpOrgName": 
null,
"rpPosName": 
null
},
"resFees": 
"",
"ordInstr": 
""
}
},
"mdFileID": 
"-246945228",
"createdBy": 
"0",
"mdStanName": 
"the Geography Network Service specification metadata criterion"
},
"isDataItemService": 
false,
"metadataString": 
"<?xml version=\"1.0\" encoding=\"UTF-8\" 
standalone=\"yes\"?>\n<smmd:Metadata xmlns:smmd=\"http://data.sbsm.gov.cn/smmd/2007\" 
createdBy=\"0\">\n    <smmd:mdFileID>-246945228</smmd:mdFileID>\n 
<smmd:mdLang>zh_CN</smmd:mdLang>\n    <smmd:mdChar>GB2312</smmd:mdChar>\n 
<smmd:mdContact>\n        <smmd:rpIndName></smmd:rpIndName>\n 
<smmd:rpOrgName>SuperMap 
Software Co. ,Ltd</smmd:rpOrgName>\n        <smmd:rpPosName></smmd:rpPosName>\n 
<smmd:rpCntInfo>\n            <smmd:cntAddress>\n 
<smmd:delPoint>6/F, 
Building 107, No. A10, Jiuxianqiao North Road, Chaoyang District</smmd:delPoint>\n 
<smmd:city>Beijing</smmd:city>\n 
<smmd:adminArea>Chaoyang 
District</smmd:adminArea>\n                <smmd:postCode>100015</smmd:postCode>\n 
<smmd:country>PR 
China</smmd:country>\n                <smmd:eMailAdd>support@supermap.com</smmd:eMailAdd>\n 
</smmd:cntAddress>\n 
<smmd:cntOnLineRes>\n 
<smmd:linkage>http://www.supermap.com.cn</smmd:linkage>\n 
<smmd:orDesc></smmd:orDesc>\n 
<smmd:orFunct></smmd:orFunct>\n 
</smmd:cntOnLineRes>\n 
<smmd:voiceNum>+86-10-59896655</smmd:voiceNum>\n 
<smmd:faxNum>+86-10-59896666</smmd:faxNum>\n 
</smmd:rpCntInfo>\n        <smmd:role>SuperMap 
Software Co. ,Ltd</smmd:role>\n    </smmd:mdContact>\n 
<smmd:mdDateSt>2012-09-19</smmd:mdDateSt>\n 
<smmd:mdStanName>the Geography Network Service 
specification metadata criterion</smmd:mdStanName>\n    <smmd:mdStanVer>1.0</smmd:mdStanVer>\n 
<smmd:dataIdInfo>\n        <smmd:DataIdent>\n 
<smmd:idCitation>\n 
<smmd:resTitle>data-world/rest</smmd:resTitle>\n 
<smmd:resRefDate>\n 
<smmd:refDate>2008-02-16</smmd:refDate>\n 
<smmd:refDateType>productioncompleted</smmd:refDateType>\n 
</smmd:resRefDate>\n 
<smmd:resEd></smmd:resEd>\n 
</smmd:idCitation>\n 
<smmd:idAbs></smmd:idAbs>\n 
<smmd:idPurp></smmd:idPurp>\n 
<smmd:dataLang>zh_CN</smmd:dataLang>\n 
<smmd:idStatus>completed</smmd:idStatus>\n 
<smmd:idPoC>\n 
<smmd:rpOrgName>SuperMap 
Software Co. ,Ltd</smmd:rpOrgName>\n                <smmd:role>SuperMap 
Software Co. ,Ltd</smmd:role>\n            </smmd:idPoC>\n 
<smmd:keyword>service 
metadata</smmd:keyword>\n            <smmd:graphOver>\n 
<smmd:bgFileName></smmd:bgFileName>\n 
<smmd:bgFileDesc></smmd:bgFileDesc>\n 
<smmd:bgFileType></smmd:bgFileType>\n 
</smmd:graphOver>\n 
<smmd:resType>Topographical 
vector data</smmd:resType>\n            <smmd:resSubType></smmd:resSubType>\n 
<smmd:tpCat>GIS 
Network engineering achievements</smmd:tpCat>\n            <smmd:refTheme/>\n 
<smmd:resConst>\n 
<smmd:SecConsts>\n 
<smmd:class>confidential</smmd:class>\n 
</smmd:SecConsts>\n 
</smmd:resConst>\n 
<smmd:aggrInfo/>\n 
<smmd:dsFormat>\n 
<smmd:formatName>metadata 
content specification</smmd:formatName>\n                <smmd:formatVer>smmd2007</smmd:formatVer>\n 
</smmd:dsFormat>\n 
<smmd:dataExt>\n 
<smmd:geoEle>\n 
<smmd:GeoBndBox>\n 
<smmd:westBL>0.0</smmd:westBL>\n 
<smmd:eastBL>0.0</smmd:eastBL>\n 
<smmd:southBL>0.0</smmd:southBL>\n 
<smmd:northBL>0.0</smmd:northBL>\n 
</smmd:GeoBndBox>\n 
</smmd:geoEle>\n 
</smmd:dataExt>\n 
<smmd:spatRpType>vector</smmd:spatRpType>\n 
<smmd:dataScale>\n 
<smmd:equScale>0</smmd:equScale>\n 
</smmd:dataScale>\n 
<smmd:dataChar>GB2312</smmd:dataChar>\n 
</smmd:DataIdent>\n    </smmd:dataIdInfo>\n 
<smmd:dqInfo>\n        <smmd:dqStatement>dataQualityStatement</smmd:dqStatement>\n 
<smmd:linStatement></smmd:linStatement>\n 
</smmd:dqInfo>\n    <smmd:spatRepInfo/>\n 
<smmd:refSysInfo>\n        <smmd:MdCoRefSys>\n 
<smmd:projection>projection</smmd:projection>\n 
<smmd:ellipsoid>ellipsoid</smmd:ellipsoid>\n 
<smmd:datum>datum</smmd:datum>\n 
<smmd:longCntMer>0.0</smmd:longCntMer>\n 
<smmd:zoneMethod>zoneMethod</smmd:zoneMethod>\n 
<smmd:zone>0</smmd:zone>\n 
</smmd:MdCoRefSys>\n    </smmd:refSysInfo>\n 
<smmd:contInfo/>\n    <smmd:distInfo>\n 
<smmd:onLineSrc>\n            <smmd:linkage>http://127.0.0.1:8195/portalproxy/iserver/services/data-world/rest</smmd:linkage>\n 
<smmd:orDesc></smmd:orDesc>\n 
<smmd:orFunct></smmd:orFunct>\n 
</smmd:onLineSrc>\n        <smmd:distFormat/>\n 
<smmd:distributor>\n            <smmd:distorCont/>\n 
<smmd:ordInstr></smmd:ordInstr>\n 
<smmd:resFees></smmd:resFees>\n 
</smmd:distributor>\n 
</smmd:distInfo>\n</smmd:Metadata>\n",
"description": null,
"verifyReason": null,
"isBatch": true,
"serviceRootUrlId": 
1,
"type": "DATA",
"addedMapNames": null,
"offline": false,
"checkStatus": "SUCCESSFUL",
"visitCount": 165,
"enable": true,
"nickname": "admin",
"id": 1367633656,
"thumbnail": "http://127.0.0.1:8190/iportal/services/../web/static/portal/img/map/cloud.png",
"previewUrl": null,
"proxiedUrl": "http://127.0.0.1:8195/portalproxy/iserver/services/data-world/rest",
"authorizeSetting": 
[
{
"permissionType": 
"DELETE",
"aliasName": 
"admin",
"entityRoles": 
[],
"entityType": 
"USER",
"entityName": 
"admin",
"entityId": 
null
},
{
"permissionType": 
"SEARCH",
"aliasName": 
"GUEST",
"entityRoles": 
[],
"entityType": 
"USER",
"entityName": 
"GUEST",
"entityId": 
null
}
],
"updateTime": 1607395213816,
"userName": "admin",
"version": null,
"tags": [
"用户服务"
],
"resTitle": "data-world/rest",
"checkUser": null,
"checkUserNick": null,
"checkTime": null,
"createTime": 1607395213816,
"tokenRefreshUrl": 
null,
"scenes": [],
"mapInfos": []
}
### PUT 请求
更新指定的服务或服务集合。只有服务注册者和门户管理员有权限对服务进行更新。
#### 请求参数
发送请求时，需要在请求体中包含如下参数：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| authorizeSetting | List<[IportalAuthorizeEntity](../../../../iServerJavadoc/com/supermap/iportal/web/commontypes/IportalAuthorizeEntity.html)> | 授权信息。服务的权限类型包括：DELETE（查看/编辑/删除）、READ（查看）、READWRITE（查看/编辑）。 |
| tags | List<String> | 服务的标签。 |
| metadata | Metadata | 服务的元数据信息。 |
| thumbnail | String | 服务的缩略图路径。 |
| tokenRefreshUrl | String | ArcGIS REST 服务的令牌获取地址。通过该地址可获取访问服务所需 Token。 |
| previewUrl | String | 服务自定义预览地址。 |
#### 响应结构
返回的资源表述结构如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 更新服务是否成功。 |
| error | Httperror | 出错信息，如果更新服务成功，则没有本字段。 |
#### 响应示例
修改服务的名称，对 service 资源：http://localhost:8190/iportal/web/services/1.json 
执行 PUT 请求，发送请求体如下：
{
"tags": [
"changchun"
],
"authorizeSetting": 
[],
"metadata": {
"mdContact": 
{
"rpIndName": 
"",
"rpOrgName": 
"",
"rpCntInfo": 
{
"cntAddress": 
{
"delPoint": 
"",
"eMailAdd": 
""
},
"voiceNum": 
"",
"faxNum": 
""
}
},
"refSysInfo": 
{
"mdCoRefSys": 
{
"projection": 
"WGS84"
},
"refSysID": 
""
},
"dataIdInfo": 
{
"dataIdent": 
{
"idCitation": 
{
"resTitle": 
"changchun1"
},
"dataExt": 
{
"geoEle": 
{
"geoBndBox": 
{
"westBL": 
"0",
"eastBL": 
"0",
"southBL": 
"0",
"northBL": 
"0"
}
},
"exDesc": 
""
},
"idAbs": 
""
}
},
"distInfo": 
{
"onLineSrc": 
{
"linkage": 
"http://192.168.120.40:8091/iserver/services/map-changchun/rest"
}
}
},
"thumbnail": null,
"tokenRefreshUrl": 
null,
"previewUrl": "https://arcgis.ispeco.com/ispeco"
}
则返回的 rjson 格式的表述如下：
{ "succeed": true}
### DELETE 请求
删除指定的服务或服务集合。
#### 响应示例
对 service 资源：http://localhost:8190/iportal/web/services/3.rjson 
执行 DELETE 请求，返回的 rjson 格式的表述如下：
{ "succeed": true}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 service 资源是否存在，或者客户端是否有权限访问 service 资源。通过对加.<format>的 
URI 执行 HEAD 请求，还可以快速判断 service 资源是否支持<format>格式的表述。
## 请参见
- [services](../services.htm)、[serviceCheckStatus](serviceCheckStatus.htm)、[serviceOffline](serviceOffline.htm)、[serviceShareSetting](serviceShareSetting.htm)、[serviceStatus](serviceStatus.htm)、[regionPermissions](regionPermissions/regionPermissions.htm)
- [客户端构建 
REST 请求](../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../iPortalArchitecture.htm)