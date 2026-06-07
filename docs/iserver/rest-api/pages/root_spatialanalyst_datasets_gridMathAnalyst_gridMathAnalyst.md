# gridMathAnalyst

## URI
<[dataset_uri](../dataset.htm#URI)>/mathanalyst[.<format>]
## 支持的方法
[GET](#GET 请求)、[POST](#POST 请求)、[HEAD](#HEAD 请求)
## 父资源
[dataset](../dataset.htm)
## 子资源
[gridMathResult](gridMathResult.htm)
## 介绍
栅格代数运算资源，用于提供对一个或多个栅格数据集的数学运算及函数运算。
栅格代数运算的思想是运用代数学的观点对地理特征和现象进行空间分析，实质上是对多个栅格数据集进行数学运算以及函数运算。运算结果栅格的像元值是由输入的一个或多个栅格同一位置的像元的值通过代数规则运算得到的。
栅格代数运算支持的计算方法包括以下两种：
1. 基础运算方法，包括 plus（加法运算）、minus（减法运算）、multiply（乘法运算）、divide（除法运算）、toInt（取整运算）和 toFloat（浮点运算）。使用这几个方法可以完成一个或多个栅格数据对应栅格值的算术运算。对于相对简单的运算，可以通过多次调用这几个方法来实现，如 (A/B)-(A/C)。
2. 运算表达式。使用表达式不仅可以对一个或多个栅格数据集实现运算符运算，还能够进行函数运算。运算符包括算术运算符、关系运算符和布尔运算符，算术运算主要包括加法（+）、减法（-）、乘法（*）、除法（/）；布尔运算主要包括和（And）、或（Or）、异或（Xor）、非（Not）；关系运算主要包括 =、<、>、<>、>=、<=。对于布尔运算和关系运算，有三种可能的输出结果：真＝1、假=0及无值（只要有一个输入值为无值，结果即为无值）。此外，还支持 21 种常用的函数运算，如下图所示：
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/gridMathAnalyst/img/math.png)
栅格代数运算表达式的组成需要遵循以下规则：
1. 运算表达式应为一个形如下式的字符串：
[DatasourceAlias1.Raster1] + [DatasourceAlias2.Raster2]
即使用“ [数据源别名.数据集名] ”来指定参加运算的栅格数据集。
2. 栅格代数运算支持四则运算符（"+" 、"-" 、"*" 、"/" ）、条件运算符（">" 、">=" 、"<" 、"<=" 、"<>" 、"==" ）、逻辑运算符（"|" 、"&" 、"Not()" 、"^" ）和一些常用数学函数（"abs()" 、"acos()" 、"asin()" 、"atan()" 、"acot()" 、"cos()" 、"cosh()" 、"cot()" 、"exp()" 、"floor()" 、"mod(,)" 、"ln()" 、"log()" 、"pow(,)" 、"sin()" 、"sinh()" 、"sqrt()" 、"tan()" 、"tanh()" 、"Isnull()" 、"Con(,,)" 、"Pick(,,,..)" ）。
3. 代数运算的表达式中各个函数之间可以嵌套使用，直接用条件运算符计算的栅格结果都为二值（如大于、小于等），即满足条件的用1代替，不满足的用0代替，若想使用其他值来表示满足条件和不满足条件的取值，可以使用条件提取函数 Con(,,)。例如："Con(IsNull([SURFACE_ANALYST.Dem3] ) ,100,Con([SURFACE_ANALYST.Dem3] > 100,[SURFACE_ANALYST.Dem3] ,-9999) ) " ，该表达式的含义是：栅格数据集 Dem3 在别名为 SURFACE_ANALYST 的数据源中，将其中无值栅格变为 100，剩余栅格中，大于100 的，值保持不变，小于等于 100 的，值改成 -9999。
4. 如果栅格计算中有小于零的负值，注意要加小括号，如：[DatasourceAlias1.Raster1] - ([DatasourceAlias2.Raster2])。
5. 表达式中，运算符连接的操作数可以是一个栅格数据集，也可以是数字或者数学函数。
6. 数学函数的自变量可以为一个数值，也可以为某个数据集，或者是一个数据集或多个数据集的运算表达式。
7. 表达式必须是没有回车的单行表达式。
8. 表达式中必须至少含有一个输入栅格数据集。
注意：
- 参与运算的数据集可以来自不同的数据源，但是必须来自当前服务对应的工作空间。
- 参与运算的两个数据集，如果其像素类型不同，则运算的结果数据集的像素类型与二者中精度较高者保持一致。例如，一个为32位整型，一个为单精度浮点型，那么进行加法运算后，结果数据集的像素类型将为单精度浮点型。
- 对于栅格数据集中的无值数据，如果忽略无值，则无论何种运算，结果仍为无值；如果不忽略无值，意味着无值将参与运算。例如，两栅格数据集 A 和 B 相加，A 某单元格为无值，值为-9999，B 对应单元格值为3000，如果不忽略无值，则运算结果该单元格值为-6999。
支持的方法：
- [GET](#GET 请求)：获取进行栅格代数运算的表单。
- [POST](#POST 请求)：通过输入运算表达式，进行栅格运算。
- [HEAD](#HEAD 请求)：检查 gridMathAnalyst 资源是否存在，或权限是否可以访问 gridMathAnalyst 资源。
支持的表述格式：RJSON、JSON、HTML、XML。
## 资源层次
!\[](../../../../../../assets/images/root/spatialanalyst/datasets/gridMathAnalyst/img/gridmath.png)[ 
## HTTP 请求方法
对如下 URI 执行 HTTP 请求，以 rjson 输出格式为例加以说明，其中，supermapiserver 是服务器名。
http://supermapiserver:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/JingjinTerrain%40Jingjin/mathanalyst.rjson
### ](../../../root.htm)GET 请求
获取进行栅格代数运算的表单。
### POST 请求
通过输入运算表达式，进行栅格运算。
#### 请求参数
在请求体中传递参数如下表所示：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| expression | String | 【必选参数】 指定的栅格运算表达式。如： [DatasourceAlias1.Raster1]*2-10 |
| extractRegion | Geometry | 指定的有效计算区域。 如果不指定，则默认计算全部区域，如果参与运算的数据集范围不一致，将使用所有数据集的范围的交集作为计算区域。 |
| isZip | boolean | 是否对结果数据集进行压缩处理。默认为 False，表示不压缩。 |
| ignoreNoValue | boolean | 是否忽略无值栅格数据。true 表示忽略无值数据，即无值栅格不参与运算。默认为 False。 |
| targetDatasource | String | 指定的存储结果数据集的数据源。 |
| resultGridName | String | 指定的结果数据集。 |
| deleteExistResultDataset | boolean | 如果用户命名的结果数据集名称与已有的数据集重名，是否删除已有的数据集。默认为否，即不删除。 |
#### 响应结构
正常响应情况：响应码201。响应参数如下：
| 字段 | 类型 | 说明 |
| --- | --- | --- |
| succeed | Boolean | 分析是否成功。 |
| newResourceID | String | 分析结果资源的 ID。 |
| postResultType | [PostResultType](../../../../../iServerJavadoc/com/supermap/services/rest/PostResultType.html) | POST 请求的结果类型，枚举说明 POST 请求对目标资源的影响，即处理结果是什么样的。 |
| newResourceLocation | String | 创建的新资源的 URI。 |
#### 响应示例
对 gridMathAnalyst 资源 http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/JingjinTerrain@Jingjin/mathanalyst.rjson，执行 POST 请求，传入 rjson 格式的请求体如下：
{
"expression": "[Jingjin.JingjinTerrain]*2-10",
"isZip": false,
"ignoreNoValue": false,
"targetDatasource": "Jingjin",
"resultGridName": "test1",
"deleteExistResultDataset": true
}
则返回的 rjson 格式响应结果如下：
{
"succeed": true,
"newResourceID": "6b7fe42a934c49fa93fe5b8b7541d2db_5fe86d5324c74d4e88344c29ca89f36f",
"postResultType": "CreateChild",
"newResourceLocation": "http://localhost:8090/iserver/services/spatialanalyst-sample/restjsr/spatialanalyst/datasets/JingjinTerrain@Jingjin/mathanalyst/6b7fe42a934c49fa93fe5b8b7541d2db_5fe86d5324c74d4e88344c29ca89f36f"
}
### HEAD 请求
返回跟 GET 请求一样的 HTTP 响应头，但是没有响应实体。可以在不必传输整个响应内容的情况下，获取包含在响应消息头中的元数据信息。元数据信息包括媒体类型，字符编码，压缩编码，实体内容长度等。
HEAD 请求可以用来判断 gridMathAnalyst 资源是否存在，或者客户端是否有权限访问 gridMathAnalyst 资源。通过对加.<format>的 URI 执行 HEAD 请求，还可以快速判断 gridMathAnalyst 资源是否支持<format>格式的表述。
## 请参见
- [gridMathResult](gridMathResult.htm)、[dataset](../dataset.htm)
- [客户端构建 REST 请求](../../../../clientBuildREST/ConstructRESTRequest.htm)
- [状态码列表及说明](../../../../StatusCodeDescription.htm)
- [SuperMap iServer REST API 表述格式介绍](../../../../SuperMap_iServer_REST_API_OutputFormat.htm)
- [资源层次结构](../../../../resource_hierarchy.htm)