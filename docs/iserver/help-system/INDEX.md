# SuperMap iServer - Help System & Additional Documentation

**Source:** http://support.supermap.com.cn:8090/iserver/help/html/zh/  
**Files collected:** 49  
**Total size:** ~2.0 MB  
**Encoding:** UTF-8 (HTML5 help system)

## Contents

### Help System Entry Points
- `index.html` - Main help system index with navigation and resource center (18 KB)
- `help-index.html` - Redirect page with language detection (1 KB)

### What's New / Release Notes
- `whatsnew.html` - What's new in current version (31 KB)

### Product Introduction (mirror)
- `product-include.html` - Product components overview (13 KB)

### FAQ (Frequently Asked Questions)
- `faq.html` - Comprehensive FAQ (143 KB) -- **large file**

### Appendix
- `Appendix/iServer_configInfo.htm` - Complete system configuration reference (87 KB)
- `Appendix/iSvrHistoryWhatNew.htm` - Historical "What's New" across versions (235 KB)
- `Appendix/iServer_12i(2025)_API.htm` - 2025 API changes (26 KB)
- `Appendix/iServer_12i(2025)_SP1_API.htm` - 2025 SP1 API changes (22 KB)
- `Appendix/iServer_offlineFunction.htm` - Offline functionality (18 KB)
- `Appendix/scale.htm` - Scale reference (15 KB)

### API Reference Pages
- `API/WMS/WMS111/Using_SLD.htm` - WMS SLD styling (62 KB)
- `API/WMS/WMS111/GetFeatureInfo/GetFeatureInfo_Request.htm` - WMS GetFeatureInfo (21 KB)
- `API/WFS/WFS100/GetFeature/GetFeature_Request.htm` - WFS GetFeature (20 KB)

### REST API Merged Project
- `rest-api-overview.html` - REST API overview (13 KB)
- `mergedProjects/SuperMapiServerRESTAPI/Overview.htm` - REST API architecture overview
- `mergedProjects/SuperMapiServerRESTAPI/resource_hierarchy.htm` - Resource hierarchy (11 KB)
- `mergedProjects/SuperMapiServerRESTAPI/Resources_Manager_Architecture.htm` - Resources manager (11 KB)
- `mergedProjects/SuperMapiServerRESTAPI/iPortalArchitecture.htm` - iPortal architecture (11 KB)
- `mergedProjects/SuperMapiServerRESTAPI/StatusCodeDescription.htm` - Status codes (17 KB)
- `mergedProjects/SuperMapiServerRESTAPI/Token_RESTServices.htm` - Token authentication (20 KB)
- `mergedProjects/SuperMapiServerRESTAPI/SuperMap_iServer_REST_API_OutputFormat.htm` - Output formats (48 KB)
- `mergedProjects/SuperMapiServerRESTAPI/tempResourcesLife.htm` - Temporary resource lifecycle (36 KB)

**Client Build REST:**
- `mergedProjects/SuperMapiServerRESTAPI/clientBuildREST/ConstructRESTRequest.htm` - Constructing requests (13 KB)
- `mergedProjects/SuperMapiServerRESTAPI/clientBuildREST/POST_GET.htm` - POST vs GET (14 KB)

**REST API Root Resources:**
- `mergedProjects/SuperMapiServerRESTAPI/root/maps/map/image.htm` - Map image (34 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/maps/map/tileImage.htm` - Tile image (46 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/maps/map/tileImages.htm` - Tile images (31 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/maps/map/zxyTileImage/zxyTileImage.htm` - ZXY tile image (25 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/data/datasources/datasource/datasets/dataset/domain/domain.htm` - Domain (26 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/data/datasources/datasource/datasets/dataset/features/feature/feature.htm` - Feature (68 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/data/datasources/datasource/datasets/dataset/features/features.htm` - Features collection (76 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/data/datasources/datasource/datasets/dataset/features/feature/attachment.htm` - Attachment (19 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/data/featureResults/featureResults.htm` - Feature results (112 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/geometry/overlay/geometryOverlayResults.htm` - Geometry overlay (22 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/arcgisrest/vectorTileService/vectorTileService.htm` - ArcGIS vector tile (23 KB)
- `mergedProjects/SuperMapiServerRESTAPI/root/spatialanalyst/datasets/gridStatistics/gridBasicStatistics/gridDatasetBasicStatisticsResults.htm` - Grid statistics (19 KB)

### Javadoc API
- `mergedProjects/iServerJavadoc/overview-summary.html` - Javadoc API overview (23 KB)

### Cloud & Clients
- `Cloud%26Clients/Universal_Introduce.htm` - Universal client introduction (20 KB)

### iS (Use iServer)
- `iS/use_iserver/usebigdata/bigdatacatalog_function.htm` - Big data catalog functions (27 KB)
- `iS/use_iserver/usebigdata/config_bigdatacatalog.htm` - Configuring big data catalog (14 KB)
- `iS/use_iserver/usewebprinting/create_printingjob.htm` - Web printing (43 KB)

### Subject Introduction (Topic Guides)
**Security:**
- `Subject_introduce/Security/systemSecurity/port.htm` - Port configuration (26 KB)
- `Subject_introduce/Security/systemSecurity/HTTPS/HTTPS_for_Web.htm` - HTTPS configuration (17 KB)
- `Subject_introduce/Security/otherSecurity/sessionConfig.htm` - Session configuration (17 KB)
- `Subject_introduce/Security/otherSecurity/SSRFConfig.htm` - SSRF configuration (14 KB)
- `Subject_introduce/Security/otherSecurity/storageConfig.htm` - Storage configuration (20 KB)
- `Subject_introduce/Security/otherSecurity/extendOAuth_2.0.htm` - OAuth 2.0 extension (33 KB)
- `Subject_introduce/Security/otherSecurity/extendUsers.htm` - User extension (19 KB)

**Caching:**
- `Subject_introduce/Cache/MapCache/distribute_MapTile/newTileJob.htm` - Distributed map tile jobs (33 KB)

## Notes
- The help system uses a merged project architecture where content from multiple sub-projects (REST API, Javadoc, etc.) is integrated.
- Some content overlaps with the `rest-api/` directory collected previously (the REST API merged project references the same REST API documentation).
- The Javadoc overview page was fetched but the full Javadoc HTML tree (hundreds of class files) was not recursively downloaded - it would likely be very large.
- Many expected subject pages (PreCache, more Security topics, etc.) returned empty responses from the server.
