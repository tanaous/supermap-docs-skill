# 几何对象的 GeoJSON 格式创建

当使用 GeoJSON格式创建几何对象时，需由 type、geometry 和 properties 
等参数表示，其中：
- 
type 描述几何对象的类型。当 type 为 
Feature 时，表示一个几何对象，当 type 为 FeatureCollection 时，标识为几何对象的集合；
- 
geometry 描述几何对象的实际形状，包含两个字段；
- 
1. 
type：几何对象的类型。包括点（Point）、线（LineString）、面（Polygon）、多点（MultiPoint）、多线（MultiLineSting）、多面（MultiPolygon）等类型；
2. coordinates：几何对象的坐标。
- 
properties：描述几何对象的属性。
- 
features：当 type 为 FeatureCollection 
时，用来描述存在的多个 feature。此时，每个 feature 的种类可以不同。
下面分别对简单点对象、简单线对象、简单面对象的构建进行介绍。
#### 1. 简单点对象
一个简单点对象的 GeoJSON 格式的表示示例如下：
{
"type": "Feature",
"properties": {},
"geometry": {
"type": 
"Point",
"coordinates": 
[105.380859375,31.5785342647338]
}
}
#### 2. 简单线对象
一个简单点对象的 GeoJSON 格式的表示示例如下：
{
"type": "Feature",
"properties": {},
"geometry": {
"type": 
"LineString",
"coordinates": 
[[105.6005859375,30.65681556429287],
[107.95166015624999,31.98944183792288],
[109.3798828125,30.031055426540206],
[107.7978515625,29.935895213372444]]
}
}
#### 3. 简单面对象
一个简单点对象的 GeoJSON 格式的表示示例如下：
{
"type": "Feature",
"properties": {},
"geometry": {
"type": 
"Polygon",
"coordinates": 
[
[ 
[106.10595703125,33.33970700424026],
[106.32568359375,32.41706632846282],
[108.03955078125,32.2313896627376],
[108.25927734375,33.15594830078649],
[106.10595703125,33.33970700424026],
]
]
}
}