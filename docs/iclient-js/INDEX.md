# SuperMap iClient for JavaScript Documentation

**Source**: http://support.supermap.com.cn:8090/iserver/iClient/forJavaScript/  
**Product**: SuperMap iServer 2025  
**Date collected**: 2026-06-07  
**Total files**: 1,781 (34 MB)

---

## 1. Overview

SuperMap iClient for JavaScript is a cloud GIS web client development platform that supports:
- **SuperMap iServer / iEdge / iPortal / iManager / Online** services
- Multiple mapping library integrations: **Leaflet, OpenLayers, MapboxGL, MapLibreGL, Classic**
- Rich visualization via **ECharts, MapV, D3** integration
- Vector tiles, client-side thematic maps, spatial analysis

The documentation is available in both **English** and **Chinese**.

---

## 2. File Structure

```
iclient-js/
|-- INDEX.md                          (this file)
|-- index.html                        (iClient JS 2025 landing page)
|-- iserver-welcome.html              (iServer 2025 welcome page)
|-- download.html                     (download page)
|-- help/                             (help system files - limited)
|   |-- help-en-index.html            (English help index)
|   |-- whnjs.htm                     (WebWorks navigation JS)
|   `-- JavaScript_getingstart.html   (getting started stub - 0 bytes)
|-- docs/                             (JSDoc API documentation)
|   |-- leaflet/    (318 pages)       SuperMap iClient for Leaflet API
|   |-- openlayers/ (302 pages)       SuperMap iClient for OpenLayers API
|   |-- mapboxgl/   (146 pages)       SuperMap iClient for MapboxGL API
|   |-- maplibregl/ (282 pages)       SuperMap iClient for MapLibreGL API
|   `-- classic/    (37 pages)        SuperMap iClient Classic (legacy) API
`-- examples/                         (example code pages)
    |-- leaflet/    (233 examples)    Leaflet-based examples
    |-- openlayers/ (200 examples)    OpenLayers-based examples
    |-- mapboxgl/   (26 examples)     MapboxGL-based examples
    |-- maplibregl/ (25 examples)     MapLibreGL-based examples
    |-- classic/    (189 examples)    Classic (legacy) API examples
    `-- component/  (0 examples)      Component config only (shared)
```

---

## 3. API Documentation (JSDoc)

Each library has a complete JSDoc-generated API reference in `docs/{library}/`.
Navigation is provided via `nav.html` (sidebar) and individual `{ClassName}.html` pages.

### 3.1 Leaflet API (318 classes)
**Path**: `docs/leaflet/`  
**Key classes/namespaces**:

| Category | Representative Classes |
|---|---|
| Map Services | `MapService`, `TiledMapLayer`, `ImageMapLayer`, `WMTSLayer`, `CloudTileLayer` |
| Feature Services | `FeatureService`, `Feature`, `ServerFeature`, `EditFeaturesParameters` |
| Spatial Analysis | `SpatialAnalystService`, `BufferAnalystParameters`, `OverlayAnalystParameters` |
| Network Analysis | `NetworkAnalystService`, `FindPathParameters`, `FindServiceAreasParameters` |
| Traffic Transfer | `TrafficTransferAnalystService`, `TransferPathParameters` |
| DataFlow | `DataFlowService`, `DataFlowLayer`, `DataFlowView` |
| Processing | `ProcessingService`, `KernelDensityJobParameter` |
| Visualization | `GraphicLayer`, `EchartsLayer`, `MapVLayer`, `HeatMapLayer`, `RangeThemeLayer` |
| Thematic Maps | `ThemeLayer`, `ThemeRange`, `ThemeUnique`, `ThemeDotDensity`, `ThemeLabel` |
| iPortal | `IPortal`, `IPortalQueryParam`, `IPortalAddResourceParam` |
| Online | `Online`, `OnlineQueryDatasParameter` |
| OGC | `WMTSLayer`, `WKTFormat`, `GeoJSONFormat` |
| Third-party Maps | `BaiduTileLayer`, `TiandituTileLayer` |
| Vector Tiles | `TiledVectorLayer` |
| Geometry | `GeometryPoint`, `GeometryPolygon`, `GeometryLineString` |
| CRS/Projection | `CRS`, `NonEarthCRS` |
| Security | `SecurityManager`, `TokenServiceParameter` |

### 3.2 OpenLayers API (302 classes)
**Path**: `docs/openlayers/`  
**Key classes/namespaces**:

| Category | Representative Classes |
|---|---|
| Map Services | `MapService`, `TileSuperMapRest`, `ImageSuperMapRest` |
| Feature Services | `FeatureService`, `Feature`, `GetFeaturesBySQLParameters` |
| Spatial Analysis | `SpatialAnalystService`, `BufferAnalystParameters` |
| Network Analysis | `NetworkAnalystService`, `FindPathParameters` |
| Traffic Transfer | `TrafficTransferAnalystService` |
| DataFlow | `DataFlowService`, `DataFlow` |
| Processing | `ProcessingService` |
| Visualization | `Graphic`, `Mapv`, `HeatMap`, `Range`, `Unique`, `Theme` |
| Vector Tiles | `VectorTileSuperMapRest`, `VectorTileStyles`, `MapboxStyles` |
| Thematic Maps | `ThemeLabel`, `ThemeRange`, `ThemeUnique`, `ThemeDotDensity` |
| iPortal | `IPortal`, `IPortalQueryParam` |
| Online | `Online` |
| Third-party Maps | `BaiduMap`, `Tianditu`, `SuperMapCloud` |
| Security | `SecurityManager` |
| Web Printing | `WebPrintingJobService`, `WebPrintingJobParameters` |
| Chart | `ChartService`, `ChartView` |
| ElasticSearch | `ElasticSearch` |

### 3.3 MapboxGL API (146 classes)
**Path**: `docs/mapboxgl/`  
**Key classes/namespaces**:

| Category | Representative Classes |
|---|---|
| Themes | `CommonTheme`, `ThemeDotDensity` |
| Visualization | `GraphicLayer` (via common library) |
| Chart | `ChartService`, `ChartView` |
| UGC Layers | `UGCLayer`, `UGCMapLayer`, `UGCSubLayer` |
| Legend | `LayerInfoService`, `GetLayersLegendInfoParameters` |
| Styling | `ServerColor`, `ServerStyle`, `LabelImageCell`, `LabelSymbolCell` |

> **Note**: MapboxGL shares many parameter/service classes with the Leaflet/OpenLayers APIs.
> The 146 pages include shared classes and MapboxGL-specific extensions.

### 3.4 MapLibreGL API (282 classes)
**Path**: `docs/maplibregl/`  

This is the MapLibre GL JS v2+ compatible API, forked from MapboxGL v1.
Contains a similar but expanded set of classes compared to MapboxGL,
including full service parameter classes for spatial analysis, network analysis, etc.

### 3.5 Classic API (37 classes)
**Path**: `docs/classic/`  

Legacy SuperMap iClient classic API (pre-modern-framework).
Provides core GIS functionality using SuperMap's proprietary mapping library.

**Key classes**: `AddressMatchService`, `CommonServiceBase`, `ElasticSearch`,
`GeoCodingParameter`, `GeometryPoint`, `KernelDensityJobParameter`, `LonLat`

---

## 4. Example Pages

Each library has interactive example pages demonstrating features.
Examples are organized by category in `config.js` files.

### 4.1 Leaflet (233 examples)
**Path**: `examples/leaflet/`  
**Categories**:

| Section | Examples | Topics |
|---|---|---|
| iServer | ~45 | Map services, queries, measurements, legends, layers |
| Data | ~5 | CRUD operations on datasets |
| Theme | ~4 | Thematic mapping |
| Spatial Analyst | ~6 | Buffer, overlay, interpolation, surface analysis |
| Network Analyst | ~11 | Path finding, service areas, closest facilities, TSP |
| Traffic Transfer | ~3 | Public transit routing |
| Processing | ~5 | Distributed analysis (density, summary, vector clip) |
| Address Match | ~2 | Geocoding and reverse geocoding |
| DataFlow | ~2 | Real-time data streaming |
| Image | ~2 | Image service analysis |
| Security | ~1 | Token-based authentication |
| iPortal | ~23 | Portal resource management (query, add, upload, register, publish) |
| Online | ~1 | SuperMap Online services |
| iManager | ~1 | Node management |
| Elasticsearch | ~1 | Elasticsearch-based heatmap/grid |
| Visualization | ~35+ | Heatmap, cluster, animation, graphic layer |
| ECharts | ~10 | Charts integrated with maps |
| MapV | ~6 | MapV visualizations |
| D3 | ~2 | D3-based thematic maps |
| OSMBuildings | ~1 | 3D building extrusion |
| Vector Tiles | ~3 | MVT vector tile layers |
| Client Theme | ~5 | Client-side thematic mapping |
| Dynamic Plot | ~2 | Dynamic plotting symbols |
| Turf | ~2 | Client-side spatial analysis with Turf.js |
| Controls | ~5 | Drawing, editing, zoom controls |
| Components | ~2 | File open (vanilla and React) |
| OGC | ~1 | WMTS layers |
| WMS | ~1 | WMS layers |
| Third-party | ~3 | Baidu Maps, Tianditu |
| Cloud | ~1 | SuperMap Cloud tile maps |
| Other | ~1 | Geometry queries |

### 4.2 OpenLayers (200 examples)
**Path**: `examples/openlayers/`  
**Categories**: Similar to Leaflet, covering:
- iServer map/data/theme/spatial/network/traffic/processing/address/image services
- iPortal resource management (~23 examples)
- Visualization (heatmap, cluster, animation, graphic, ECharts, MapV, OSMBuildings)
- Vector tiles, client-side thematic maps
- Mask layers, plotting, Turf analysis
- Web Printing service
- OGC (WMTS, WMS), third-party maps (Baidu, Tianditu, SuperMap Cloud)

### 4.3 MapboxGL (26 examples)
**Path**: `examples/mapboxgl/`  
Covers map services, data queries, thematic maps, spatial analysis,
network analysis, visualization (ECharts, MapV, heatmap, cluster),
vector tiles, and third-party maps.

### 4.4 MapLibreGL (25 examples)
**Path**: `examples/maplibregl/`  
MapLibre GL JS-based examples, similar scope to MapboxGL.

### 4.5 Classic API (189 examples)
**Path**: `examples/classic/`  
Legacy SuperMap iClient examples covering:

| Category | Topics |
|---|---|
| Map | SuperMap REST maps, third-party maps (Baidu, Tianditu, Google) |
| Operations | Pan, zoom, measure, layer control |
| Overlays | Vector layers, markers, popups |
| Controls | Map controls, feature controls |
| Query | Map query, dataset query (SQL, bounds, distance, geometry) |
| Theme | Server-side and client-side thematic mapping |
| Analysis | Buffer, overlay, interpolation, surface analysis |
| Network | Path finding, service areas, closest facilities, TSP |
| Traffic | Public transit routing |
| Processing | Distributed analysis jobs |
| Address Match | Geocoding |
| Visualization | Heat maps, cluster, animation layers, MapV |
| OGC | WMTS, WMS |
| Plotting | Dynamic plotting symbols, trend maps |

### 4.6 Component (shared configuration only)
**Path**: `examples/component/`  
Contains shared component configuration (`config.js`). No standalone example
HTML files; these are used by other library examples that reference components.

---

## 5. Help System

The iServer help system uses **WebWorks ePublisher** format with
JavaScript-based dynamic content loading.

**Accessible files**:
- `help/help-en-index.html` (4.5 KB) - English help homepage (frameset)
- `help/whnjs.htm` (1.4 KB) - WebWorks navigation JavaScript

**Note**: The compiled HTML help content is served dynamically and individual
topic pages return 0 bytes when fetched directly via HTTP. The help system
is designed to be accessed through the frameset at:
`http://support.supermap.com.cn:8090/iserver/help/`

**Help URL structure** (from iServer welcome page):
- `help/index.htm#GettingStarted/iServer_User_Start/iServer_User_Start.htm` - Getting Started
- `help/index.htm#Product_introduce/iServerJava_introduce.htm` - Product Introduction
- `help/index.htm#mergedProjects/iServerJavadoc/overview-summary.html` - Javadoc API
- `help/index.htm#GettingStarted/iServer_iClient_Start/Android/Android_getingstart.htm` - Android iClient

---

## 6. Key External Links

- **Official website**: https://iclient.supermap.io/
- **Source code (GitHub)**: https://github.com/SuperMap/iClient-JavaScript
- **Leaflet introduction**: https://iclient.supermap.io/web/introduction/leaflet.html
- **OpenLayers introduction**: https://iclient.supermap.io/web/introduction/openlayers.html
- **MapboxGL introduction**: https://iclient.supermap.io/web/introduction/mapboxgl.html
- **Leaflet API reference**: https://leafletjs.com/reference.html
- **OpenLayers API reference**: https://openlayers.org/en/latest/apidoc/
- **Mapbox GL JS API**: https://www.mapbox.com/mapbox-gl-js/api/
- **ECharts API**: https://echarts.apache.org/api.html
- **MapV API**: https://github.com/huiyan-fe/mapv/blob/master/API.md

---

## 7. Statistics

| Resource | Leaflet | OpenLayers | MapboxGL | MapLibreGL | Classic | Total |
|---|---|---|---|---|---|---|
| **API doc pages** | 318 | 302 | 146 | 282 | 37 | **1,085** |
| **Example pages** | 233 | 200 | 26 | 25 | 189 | **673** |
| **Config/nav files** | 2 | 2 | 2 | 2 | 2 | **10** |
| **Root/help pages** | - | - | - | - | - | **6** |
| **Grand total** | | | | | | **1,781 files / 34 MB** |

### API Pages per Category (approximate)

| Service Type | Leaflet | OpenLayers | MapLibreGL |
|---|---|---|---|
| Map/REST services | 15 | 12 | 20 |
| Spatial analysis | 25 | 23 | 25 |
| Network analysis | 25 | 22 | 22 |
| Data/feature services | 20 | 18 | 20 |
| Thematic mapping | 40 | 38 | 35 |
| Visualization | 25 | 20 | 15 |
| Geometry | 12 | 12 | 10 |
| iPortal/Online | 25 | 28 | 20 |
| Processing | 15 | 14 | 12 |
| Others (security, CRS, etc.) | 28 | 30 | 40 |

---

## 8. Notes

1. **Language**: All documentation pages contain Chinese text content (Simplified Chinese).
   API class names and method signatures are in English.
   Type names follow SuperMap conventions.

2. **Version**: These docs are for SuperMap iClient JavaScript **2025**,
   bundled with SuperMap iServer 2025.

3. **MapLibreGL vs MapboxGL**: MapLibreGL is the community fork of MapboxGL v1.
   SuperMap provides nearly identical API coverage for both, with MapLibreGL
   having more comprehensive docs (282 vs 146 pages).

4. **Classic API**: The "classic" library is the legacy SuperMap proprietary
   mapping API that predates the Leaflet/OpenLayers/MapboxGL integrations.
   It is still maintained but considered legacy.

5. **Help system limitation**: The compiled WebWorks help content could not be
   downloaded via direct HTTP. The help system requires the iServer frameset
   to load content dynamically.
