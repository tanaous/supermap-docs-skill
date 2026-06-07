# REST 中参数的构建

通过 [REST 中参数的传递方式](REST_ParamsTransfer.htm)可以了解到不同种类参数的组织和传递方式，针对某个资源某种操作该传递什么样的参数，REST API 中有详细的描述，而且有一张参数表来说明，参数结构表包含如下几项：
| 参数结构表项目 | 作用 |
| --- | --- |
| 名称 | 参数的名称。 |
| 类型 | 参数对应的 Java 类。
表明了该参数的结构。参数的构建，即参数值的确定要以此项为参考。 |
| 含义 | 参数的含义和说明。 |
示例参数表如下：
| 名称 | 类型 | 含义 |
| --- | --- | --- |
| point2Ds | Point2D[] | 用于量算的点集。 |
| unit | Unit | 期望返回结果的单位。 |
参数 point2Ds 对应的 Java 类型为 Point2D[]，Point2D 是 SuperMap iServer 的基本 GIS 对象类型，表示二维地理坐标；参数 unit 对应的 Java 类型为 Unit，Unit 是 SuperMap iServer 中的枚举类，表示距离单位的枚举。它们都可以在 iServer Javadoc 的 com.supermap.services.components.commontypes 中查到。
SuperMap iServer REST 服务中涉及到的参数有 JSON 和 XML 两种格式，以下分别加以介绍：
- [JSON 格式参数的构建](#1_JSON_格式参数的构建)
- [XML 格式参数的构建](#2_XML_格式参数的构建)
## 1 JSON 格式参数的构建
### 1.1 JSON 简介
JSON 是一种轻量级的数据格式，JSON 的构建基于两种结构：
- “名称/值”对的集合。
- 值的有序列表。
JSON 具有如下形式：
- 对象，无序的“名称/值”对集合。如 [REST 中参数的传递方式](REST_ParamsTransfer.htm)中提到的 value_a 可能为{“A1”:value1, ”A2”:value2}。
- 数组，值（value）的有序集合。如 [REST 中参数的传递方式](REST_ParamsTransfer.htm)中提到的 value_b 可能为[value1, value2]。
其中，值（如 value1、value2）可以是双引号括起来的字符串、数字、true、false、null，也可以是一个对象或数组，从而构成嵌套的关系。
### 1.2 参数类型和 JSON 的对应关系
SuperMap iServer REST API 中，针对每个参数，都有对应的类型（Java 类）说明。如前所述，参数的构建就是以对应的 Java 类作为参考的。Java 类的描述一般可以通过查询 SuperMap iServer 的 Java API 文档得到。
Java 对象中跟构建 JSON 格式参数相关的部分有：
- public 成员变量。
- 属性。属性名为指一对 get/set 方法，去掉 get/set 后，把首字母变成小写后的字符串。
它们跟 JSON 的对应关系如下：
- “public 成员变量名/取值”对应 JSON 中的“名称/值”对；
- “属性名/属性值”对应 JSON 中的“名称/值”对。
其中 Java 中的取值，跟 JSON 中的值的对应关系如下：
| Java | JSON |
| --- | --- |
| 字符串
如：
String name=”World”; | 字符串
如：
World |
| 数字
如：
double num=100.1; | 数字
如：
100.1 |
| boolean
如：
boolean tag=false; | true/false
如：
false |
| null
如：
null | null
如：
null |
| 枚举值
如：
Unit unit=Unit.METER; | 以字符串表示的枚举名称
如：
METER |
| 其他 Java 对象
如：
Point2D point=new Point2D(12.3, 15.6)
其中，Point2D 类有 public 成员变量 x、y。 | JSON 对象
如：
{“x”:12.3,”y”:15.6} |
| 简单数组
如：
double[] scales=new double[]{1128.50, 564.25}; | JSON 数组
如：
[1128.50, 564.25] |
| Java 数组
如：
Point2D[] points=new Point2D[2];
points[0]=new Point2D(1.1, 2.2);
points[1]=new Point2D(2.2, 3.3); | JSON 数组
Point2D[]对应一个 JSON 数组，即[value1,value2,…]，数组中的元素为一个 Point2D 对象，因此 JSON 数组中的元素也应该为 Point2D 对象所对应的 JSON 对象。
如：
[
{“x”:1.1,”y”:2.2},
{“x”:2.2,”y”:3.3}
] |
| Java 列表（List）
如：
List<Point2D> lst = new ArrayList<Point2D>();
lst.add(new Point2D(1.1, 2.2));
lst.add(new Point2D(1.1, 2.2)); | JSON 数组
List<Point2D>对应一个 JSON 数组，即[value1,value2,…]，数组中的元素为一个 Point2D 对象，因此 JSON 数组中的元素也应该为 Point2D 对象所对应的 JSON 对象。
如：
[
{“x”:1.1,”y”:2.2},
{“x”:2.2,”y”:3.3}
] |
Java 对象中值的嵌套关系跟 JSON 中的嵌套关系相对应。
## 2 XML 格式参数的构建
XML（eXtensible Markup Language，可扩展的标记语言）是一种简单的数据存储语言，使用一系列简单的标记描述数据，是应用开发中非常通用的一种数据格式。
SuperMap iServer REST API 中，针对每个参数，都有对应的类型（Java 类）说明，参数的构建就是以对应的 Java 类作为参考的。Java 类的描述一般可以通过查询 SuperMap iServer 的 Java API 文档得到。
在 REST API 中，请求体参数可以以 XML 格式传输，其中参数的取值为对应的 Java 对象序列化为 XML 之后的值，整个请求体示意如下：
<Object>
<参数1名称>参数1序列化结果</参数1名称>
<参数2名称>参数1序列化结果</参数2名称>
……
</Object>
例如，一个名为 unit，类型为 Unit（枚举类型）的参数的 XML 格式表达为：
<unit>METER </unit>
一个名为 point，类型为 Point2D 的参数的 XML 格式表达为：
<point>
<x>12.3</x>
<y>15.6</y>
</point>
一个名为 points，类型为 List<Point2D>的参数的 XML 格式表达为：
<points>
<Point2D>
<x>1.1</x>
<y>2.2</y>
</Point2D>
<Point2D>
<x>2.2</x>
<y>3.3</y>
</Point2D>
</points>
## 请参见
- [HTTP 请求消息的结构](HTTP_structure.htm)
- [REST 中参数的传递方式](REST_ParamsTransfer.htm)
- [REST 中 HTTP 请求示例](REST_HTTP.htm)