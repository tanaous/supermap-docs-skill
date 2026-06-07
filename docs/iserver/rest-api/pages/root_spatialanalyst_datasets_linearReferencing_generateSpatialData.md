# generateSpatialData

## URI
[<linearReferencing_uri>](linearReferencing.htm#URI)/generatespatialdata[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[linearReferencing](linearReferencing.htm)
## 子资源
[spatialdataResult](spatialdataResult.htm)
## 介绍
创建动态分段结果资源。 对该资源进行发送 POST 请求，则可以根据路由数据集和事件表生成动态分段结果，即一个空间数据集。
生成空间数据涉及三个角色：路由数据集、事件表和空间数据。生成空间数据时，系统会建立并存储三者的动态分段关系，即根据路由 
ID、刻度值字段等信息建立起三者的对应关系。动态分段关系主要用于实现三个角色间的联动修改。在动态分段关系中，路由数据集与事件表为一对多的关系，路由数据集与空间数据为一对多的关系，事件表与空间数据为一对一的关系。也就是说， 
路由数据集可以被多个事件表共用从而生成多个空间数据，但一个事件表只能对应一个空间数据。
路由数据集中的路由对象就是线性参考中“具有测量值的线性要素”，它与普通线对象的区别是除 X、Y 坐标外还存储有第三维信息，即用于度量的测量值；而事件表是一个属性表，它必须包含路由标识字段和刻度字段（点事件包含刻度字段，线事件包含起始刻度字段和终止刻度字段）。事件表数据集还可以存事件的具体信息（如交通事故发生地的天气状况、驾驶者的酒精含量、当时的车速、路面宽度、 
铺设材料等）属性。路由标识字段的值用于将事件对应的点或线定位到正确的路由上，刻度字段的值使事件对应的点或线最终正确定位。事件表中的路由标识字段、刻度字段及其他描述事件的属性，都会写入生成的空间数据的属性表中。
动态分段结束后事件表中的事件被定位到空间上，生成相应的点或者线图层。其中点事件对应生成点数据集，线事件表对应生成的线数据为路由数据集。生成空间数据后可以与原始路由数据（或原始线数据）叠加显示，或者制作专题图显示，并叠加于原始路由之上。下图展现了动态分段生成矢量点和线 
（路由）数据后，根据其某一属性制作专题图，并叠加于原始路由之上的效果。其中淡紫色的线是原始路由数据。
![](../../../../../../assets/images/root/spatialanalyst/datasets/linearReferencing/img/generate.png)
生成空间数据之后，用于生成空间数据的路由数据集、事件表与生成的空间数据之间就建立了动态分段关系。有了该关系，在修改三者中的一个时，按照约定， 
其他两者会自动发生相应的变化。
目前，SuperMap 支持以下几种联动：
1.  事件的描述信息变化，事件表与空间数据之间发生联动。
修改事件的描述信息，是指修改除路由标识字段和刻度字段之外的一般属性字段，如公路限速信息可能由于天气、施工等原因会做临时性修改。如果修改事件表中的描述信息，由该事件表生成的空间数据的属性信息也会自动进行相应的修改；修改空间数据属性表中的一般属性字段时，其对应的事件表也会动态改变。
2.  事件发生的路由位置变化，事件表与空间数据之间发生动态变化。
修改事件发生的位置，是指修改事件表或空间数据中的刻度值字段。如果修改事件表中某条记录（事件）的刻度值，那么对应的空间数据中该事件对应的点或者线对象的几何信息和属性表中对应记录的刻度字段也会做相应修改；如果修改生成的空间数据的属性表中的刻度字段的值，对应的对象的几何信息也会修改，事件表中的相关联的事件的刻度字段的值也会动态发生同等变化。如果是线事件，可以修改起始刻度或者终止刻度，事件的长度和位置可能发生变化。
如下图所示，是生成空间数据之后 ，将对应事件表中第一条事件的起始刻度和终止刻度由（20.78 ,79.37）修改为（150.00,180.00）前后，对应空间数据中对应该事件的线的变化 
，可以看出，当事件的刻度值发生变化后，对应的空间数据也自动进行对应的修改。 如果修改后的刻度值与对应路由的 M 值不存在交集，例如，修改后起始刻度和终止刻度分别为26、60，而对应路由的 
M 值范围为3到20，空间数据的几何信息不会改变；如果修改后线事件的一部分位于路由上，则对应的空间数据自动修改为只对应这一部分的数据。
![](../../../../../../assets/images/root/spatialanalyst/datasets/linearReferencing/img/LinearReferencing_2.png)
3.  事件发生的路由变化。这种情况下，空间数据会根据路由数据集的修改发生变化，而修改空间数据时，对应的路由数据不会发生变化。适用于由于数据错误或者变更导致事件所发生的路由需要修改的情形，具体分为以下情形：
- 
如果修改的是路由对象的空间几何信息，对应的空间数据中相关对象的几何信息也会自动修改。如果发生事件的路由的位置和刻度值发生变化，如管道维修后走向发生了变化，它的形状和刻度值可能都需要修改。这时就需要对路由对象本身的空间几何信息进行修改，如旋转、移动，修改刻度值等。修改后，对应的空间数据中相关对象的几何信息会作相应的变化，即对应的事件和空间数据将重新定位。
- 如果修改的是事件表的中某记录的路由 ID，则空间数据中与之关联的对象的几何信息和属性表中的路由 ID 字段也会随之动态改变。如下图中的事件表及其对应的空间数据，将事件表中第一条记录的路由 
ID 由1改为2之后，该记录对应的空间数据也发生了变化，被定位到了 ID 为2的路由上面，正如下图所展示的一样。
![](../../../../../../assets/images/root/spatialanalyst/datasets/linearReferencing/img/LinearReferencing_3.png)
- 
如果修改的是生成的空间数据的路由 ID，则事件表中对应记录的路由 ID 值也会改变，同时，空间数据的几何信息也会根据修改后对应的路由而进行修改。
- 如果修改路由数据集属性表中路由 ID 字段的值，该属性表可以修改成功，但对应的事件表和空间数据不会发生变化。
4. 
事件表的表结构发生变化。此种情形下空间数据的属性信息会随着事件表的变化而发生同等变化。
事件表的表结构发生变化是指增删或修改字段，例如，为高速公路收费站点事件表增加一个字段，用来描述站点建立的时间。对事件表的表结构进行修改后，对应的空间数据的属性表结构也会自动做同样的修改。
### 注意：
1.  用于生成空间数据的事件表中必须包含路由标识字段和刻度字段（点事件包含刻度字段，线事件包含起始刻度字段和终止刻度字段）。路由标识字段的值用于将事件对应的点或线定位到正确的路由上，刻度字段的值使事件对应的点或线最终正确定位。事件表中的路由标识字段、刻度字段及其他描述事件的属性，都会写入生成的空间数据的属性表中。
2.  通过该方法生成空间数据时，系统会在结果数据集中添加一个名为“Event_SMID”的字段，用于存储事件表中对应事件的 SMID。特别需要注意的是，不能修改该字段，否则可能导致联动的结果错误。
3.  由于事件表与空间数据为一对一关系，如果某事件表已经具有了一个动态分段关系，则不能再次用于生成空间数据，除非将其关系删除。
4.  校准、事件表融合、线参考点刻度生成路由时，如果使用的数据集包含动态分段关系，则可能引起不必要的联动修改，导致之后的分析出现错误的结果。 
因此建议不要直接使用包含动态分段关系的数据集 ，可以拷贝该数据集，或先删除该数据集的动态分段关系（需谨慎执行此步骤，因为一旦删除动态分段关系，该关系的三个角色间将不存在关联 
，不能再进行联动修改）。
5.  建立了动态分段关系后，如果直接删除一个存在动态分段关系的数据集（路由数据集、事件表或空间数据），会抛出异常，必须先将其动态分段关系删除，才能将该数据集删除。因此，建议在使用动态分段功能时，凡是进行删除数据集的操作，都先检查并删除或直接删除其动态分段关系。
支持的方法：
- [GET](#GET 请求)：html表述返回一个 POST 请求的表单，其他表述返回动态分段结果集列表。
- [POST](#POST 请求)：执行一次线性参考分析，即根据路由数据集和事件表生成空间数据资源。
- [HEAD](#HEAD 请求)：检查 generateSpatialData 
资源是否存在，或权限是否可以访问 generateSpatialData 资源。
支持的表述格式：（rjson、json、html、xml）。
## 资源层次
![](../../../../../../assets/images/root/spatialanalyst/datasets/linearReferencing/img/generateSpatialData.png)
[
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 
是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/RouteDT_road@Changchun/linearreferencing/generatespatialdata.rjson
### ](../../../root.htm)GET 请求
html表述返回一个 POST 请求的表单，其他表述返回动态分段结果集列表。
### POST 请求
执行一次线性参考分析，即根据路由数据集和事件表生成空间数据资源。
需要注意的是：对于已生成空间数据的事件表，不支持再次 
POST 创建其它空间数据。
#### 请求参数
请求体中应包含如下参数：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| routeIDField | String | 用于生成空间数据的路由数据集中的路由标识字段，路由标识字段支持的类型详见下表。 |
| routeDataset | String | 用于生成空间数据的路由数据集名称。 |
| eventTable | String | 用于生成空间数据的事件表名。 |
| eventRouteIDField | String | 用于生成空间数据的事件表的路由标识字段。 |
| measureField | String | 用于生成空间数据的事件表的刻度字段，只有当事件为点事件的时候该属性才有意义。 
目前支持的字段类型为双精度。 |
| measureStartField | String | 用于生成空间数据的事件表的起始刻度字段，只有当事件为线事件的时候该属性才有意义。 
目前支持的字段类型为双精度。 |
| measureEndField | String | 用于生成空间数据的事件表的终止刻度字段，只有当事件为线事件的时候该属性才有意义。 
目前支持的字段类型为双精度。 |
| measureOffsetField | String | 【可选参数】 
刻度偏移量字段。 |
| errorInfoField | String | 【可选参数】 
错误信息字段，设置后直接写入原事件表，用于描述事件未能生成对应的点或线时的错误信息。 |
| dataReturnOption | [DataReturnOption](../../../../../iServerJavadoc/com/supermap/services/components/commontypes/DataReturnOption.html) | 结果返回设置。 |
| retainedFields | String[] | 欲保留到结果空间数据中的字段集合（系统字段除外）。 
生成空间数据时，无论是否指定保留字段，路由 ID 字段、刻度偏移量字段、刻度值字段（点事件为刻度字段，线事件是起始和终止刻度字段）都会保留到 
结果空间数据中；如果没有指定 retainedFields 参数或者 retainedFields 参数数组长度为0，则返回所有用户字段。 |
![](../../../../../../assets/images/root/spatialanalyst/datasets/linearReferencing/img/LinearReferencing_4.png)
其中，字符、宽字符和文本型字段的值只能由数字构成，不能包含其他文字或者符号。
#### 响应结构
响应结果中包含的主要参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | boolean | 分析是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 http://localhost:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/RouteDT_road@Changchun/linearreferencing/generatespatialdata.rjson 执行 POST 请求，请求体如下：
{
"routeIDField": "RouteID",
"eventTable": "LinearEventTabDT@Changchun",
"eventRouteIDField": 
"RouteID",
"measureField": "",
"measureStartField": 
"LineMeasureFrom",
"measureEndField": 
"LineMeasureTo",
"measureOffsetField": 
"",
"errorInfoField": 
"",
"dataReturnOption": 
{
"dataset": 
"test",
"dataReturnMode": 
"DATASET_AND_RECORDSET",
"expectCount": 
1000,
"deleteExistResultDataset": 
false
}
}
则返回的 rjson 格式响应结果如下：
{
"succeed": true,
"newResourceID": "m2qzopes_2ee053dc196b4b469576186239e8ddd5",
"postResultType": 
"CreateChild",
"newResourceLocation": 
"http://localhost:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/RouteDT_road@Changchun/linearreferencing/generatespatialdata/m2qzopes_2ee053dc196b4b469576186239e8ddd5"
}
对 http://localhost:8090/iserver/services/spatialanalyst-changchun/restjsr/spatialanalyst/datasets/RouteDT_road@Changchun/linearreferencing/generatespatialdata/m2qzopes_2ee053dc196b4b469576186239e8ddd5.rjson，执行 
GET 请求，即可获取分析结果的具体信息。请参见[spatialDataResult](spatialdataResult.htm)。
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 generateSpatialData 资源是否存在，或者客户端是否有权限访问 
generateSpatialData 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 generateSpatialData 
资源是否支持<format>格式的表述。
## 请参见
- [linearReferencing](linearReferencing.htm)、[spatialdataResult](spatialdataResult.htm)
- [客户端构建 
REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap 
iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [GIS 服务资源层次结构](../../../../resource_hierarchy.htm)