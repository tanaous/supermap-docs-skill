# SuperMap iPortal Documentation - Knowledge Base Index

## Overview
SuperMap iPortal is a GIS portal platform for aggregating, managing, sharing, and visualizing geospatial resources. It provides centralized access to maps, services, scenes, data, and applications through a web-based interface.

**Version**: 2025 (12.0.0.0)  
**Documentation Base URL**: https://help.supermap.com/iPortal/  
**Total Pages Collected**: 122  

---

## Section 1: Features & Introduction (`features/` - 4 files)

| File | Description |
|------|-------------|
| `features_en.md` | iPortal features overview (English) |
| `features_zh.md` | iPortal features overview (Chinese) |
| `components.md` | Product components and architecture |
| `platform.md` | Platform requirements, supported browsers |

### Key Topics Covered
- Resource integration (maps, services, scenes, data, projects)
- Resource searching, sharing, and management
- Portal site configuration
- Server management and monitoring
- Security management (users, roles, organizations)
- SuperMap AI Assistant (Agentic RAG, GraphRAG, MCP protocol)
- BuilderX (Beta) - Web app builder
- DataViz / MapStudio / MapDashboard
- iEarth (3D globe)
- DataInsights (chart visualization, spatial analysis)
- GPAModel Builder (drag-and-drop geoprocessing)
- iDesigner3D (3D model construction)
- Custom development and extension

---

## Section 2: Installation & Deployment (`install/` - 10 files)

| File | Description |
|------|-------------|
| `install_overview.md` | Installation guide overview |
| `system_requirements.md` | System configuration requirements |
| `ports.md` | iPortal port introduction |
| `license.md` | License configuration |
| `windows.md` | Windows installation and uninstallation |
| `linux.md` | Linux installation and uninstallation |
| `war_package.md` | WAR package deployment guide |
| `docker.md` | Docker deployment |
| `directory_structure.md` | Post-installation directory structure |
| `upgrade.md` | Product upgrade guide |
| `account_environment.md` | Account initialization configuration |
| `database_config.md` | Database configuration guide |

### Key Topics
- System requirements (OS, RAM, disk, database)
- Port configuration (default ports and customization)
- License types (trial, formal, cloud) and activation
- Windows installation (EXE installer, service registration)
- Linux installation (tar.gz package, shell scripts)
- WAR package deployment (Tomcat, application server)
- Docker container deployment
- Post-install directories: bin, conf, webapps, data, logs, samples
- Version upgrade procedures

---

## Section 3: Usage Guide (`usage/` - 22 files)

| File | Description |
|------|-------------|
| `getting_started.md` | Getting started with iPortal |
| `user_center.md` | Personal center / user profile |
| `browse_search.md` | Browsing and searching resources |
| `app_center.md` | Application center |
| `groups.md` | Groups - getting started |
| `groups_usage.md` | Groups - detailed usage |
| `register_service.md` | Registering services |
| `upload_data.md` | Uploading data and publishing hosted services |
| `build_map.md` | Data mapping (DataViz) |
| `notebook_create.md` | Creating Notebook instances |
| `rest_api_register.md` | Registering services via REST API |
| `share_resource.md` | Sharing resources |
| `delete_resource.md` | Deleting resources |
| `apply_authorize.md` | Resource application and authorization |
| `builderx.md` | BuilderX - web app builder |
| `mapstudio.md` | MapStudio - map design studio |
| `data_insights.md` | DataInsights - data analysis |
| `map_dashboard.md` | MapDashboard - map dashboards |
| `3d_earth.md` | 3D Earth (iEarth) scene creation |
| `gpa_model_builder.md` | Geoprocessing Automation Model Builder |
| `3d_design.md` | 3D GeoDesign (iDesigner3D) |
| `other_functions.md` | News center, other functions |

### Key Topics
- User registration, login, profile management
- Resource browsing with fuzzy search, category filters
- Service registration (REST, WMS, WFS, WMTS, etc.)
- Hosted data upload and publishing
- DataViz: vector layers, thematic maps, spatial analysis
- MapStudio: WMS/WMTS, vector editing, spatial analysis
- MapDashboard: dashboard creation with map components
- iEarth: 3D scene creation with spatial analysis
- DataInsights: chart visualization, distributed analysis
- GPAModel Builder: drag-and-drop geoprocessing modeling
- iDesigner3D: 3D model batch construction, material editing
- Notebook: Jupyter notebook integration for data science
- Resource sharing (public, group, organization scopes)
- Resource application and authorization workflow
- BuilderX: custom web map application builder
- Service proxy for cross-domain access

---

## Section 4: Administration & Management (`management/` - 29 files)

| File | Description |
|------|-------------|
| `admin_getting_started.md` | Administration getting started |
| `portal_config.md` | Portal site configuration overview |
| `proxy_config.md` | Proxy configuration |
| `server_management.md` | GIS server management and configuration |
| `security.md` | Security configuration summary |
| `user_management.md` | User management |
| `webapps_config.md` | Built-in WebApps configuration |
| `service_preview.md` | Service preview configuration |
| `basemap_config.md` | Basemap configuration |
| `structural_data.md` | Structured data management |
| `default_thumbnail.md` | Default thumbnail configuration |
| `custom_directory.md` | Custom directory configuration |
| `custom_metadata.md` | Metadata customization |
| `support_service.md` | Support service configuration |
| `search_service.md` | Search service configuration |
| `spatial_permission.md` | Global search and spatial permission shared basemap |
| `data_storage.md` | Upload data configuration |
| `other_settings.md` | Other portal function configuration |
| `mail_server.md` | Email notification configuration |
| `multi_language.md` | Multi-language configuration |
| `custom_home.md` | Customizing portal home page |
| `theme_manage.md` | Theme management |
| `resource_management.md` | Unified resource management |
| `statistics.md` | Portal statistics |
| `log_management.md` | Log management |
| `license_info.md` | License information viewing |
| `scheduled_tasks.md` | Scheduled resource recycling |
| `news.md` | News/announcement management |
| `feedback.md` | Feedback management |

### Key Topics
- Administrator account creation and initial setup
- Database configuration (SQLite, MySQL, PostgreSQL)
- Portal site configuration (name, logo, description)
- Proxy service configuration
- GIS server registration and management
- Security: user management, organizational structure, role-based access
- Built-in web apps (DataViz, MapDashboard, DataInsights) configuration
- Service preview settings
- Basemap selection and configuration
- Structured data management
- Default thumbnail customization
- Custom directory configuration
- Metadata field customization
- Support service setup
- Search service (Elasticsearch) configuration
- Spatial permission and shared basemap
- Data storage configuration (local, MongoDB, HBase)
- Email notification (SMTP) configuration
- Multi-language support (Chinese, English)
- Portal home page customization
- Theme management (colors, logos, layout)
- Resource management (batch operations, approval)
- Portal statistics (users, resources, visits, online users)
- Log management (system logs, operation logs)
- License information monitoring
- Scheduled tasks for resource recycling
- News/announcement publishing
- User feedback collection and management

---

## Section 5: Development & API Reference (`development/` - 8 files, `api/` - 9 files)

### Development Guide (`development/`)

| File | Description |
|------|-------------|
| `api_reference.md` | API reference overview (Javadoc, REST API, OGC) |
| `ogc_reference.md` | OGC service reference |
| `dev_guide.md` | iPortal development and extension guide |
| `jersey_extend.md` | Case: Jersey-based sub-resource extension |
| `jersey_custom.md` | Case: Jersey-based new resource development |
| `login_extend.md` | Registration and login module extension |
| `login_custom.md` | Login module custom development |
| `custom_portal.md` | Custom portal development overview |
| `service_metadata_extend.md` | Service metadata frontend extension |
| `sample_code.md` | Sample code description |

### REST API Reference (`api/`)

| File | Description |
|------|-------------|
| `rest_api_overview.md` | REST API overview |
| `construct_rest_request.md` | Building REST requests |
| `token_rest_services.md` | Token-based REST service access |
| `status_codes.md` | HTTP status codes |
| `output_format.md` | Response format introduction (JSON, RJSON, XML) |
| `resource_hierarchy.md` | Service resource hierarchy |
| `manager_architecture.md` | Management resource hierarchy |
| `iportal_architecture.md` | Portal resource hierarchy |
| `temp_resources_life.md` | Temporary resource lifecycle |
| `root_services.md` | Root services endpoint |
| `map_service.md` | Map service REST API |
| `data_service.md` | Data service REST API |
| `spatialanalyst_service.md` | Spatial analysis service REST API |
| `realspace_service.md` | 3D/Realspace service REST API |

### Key Development Topics
- **Backend Extension (Java/Jersey)**:
  - Extending existing resources with `@ExtendPortalResource`
  - Creating new REST resources with `@Path` annotations
  - Spring bean configuration in `extendPortalResources.xml`
- **Frontend Extension**:
  - Login/registration page customization via iFrame
  - Management UI extension with Vue.js components
  - Service metadata field extension via .ftl templates
- **REST API**:
  - Authentication: `POST /web/login.json`, Token-based access
  - User management: `POST /web/users.json`, `GET /web/users/registered.json`
  - Resource management: `GET /web/mycontent/...`, service CRUD
  - Portal configuration: `GET /web/config/portal.json`
  - Management APIs: departments, roles, statistics
- **Response Formats**: JSON (.json), RJSON (.rjson), XML (.xml)
- **Sample Code**: Located in `%iPortal_HOME%/samples/code/`

---

## Section 6: SuperMap iPortal AI Assistant (`ai-assistant/` - 26 files)

A separate product (https://help.supermap.com/iPortalAIAssistant/) that provides conversational AI for GIS tasks, integrated with iPortal.

### Introduction (`ai-assistant/`)

| File | Description |
|------|-------------|
| `index.md` | AI Assistant documentation index |
| `introduction.md` | Product introduction and tool overview |
| `interface_intro.md` | Interface introduction |
| `new_features_2025.md` | New features in 2025 version |
| `agentx_api.md` | AgentX Server API programming reference |

### Deployment

| File | Description |
|------|-------------|
| `deployment.md` | Installation and deployment guide |

### Usage / Function Documentation

| File | Description |
|------|-------------|
| `function_document.md` | Function documentation overview |
| `register_login.md` | Login and registration |
| `iportal_manage_tools.md` | iPortal management tools |
| `iportal_resource_tool.md` | iPortal resource tools |
| `visualization.md` | Map visualization tools |
| `proximity_analysis.md` | Proximity analysis tools |
| `data_summary.md` | Data aggregation tools |
| `space_overlay.md` | Spatial overlay tools |
| `machine_learning.md` | Machine learning tools |
| `data_processing.md` | Data processing tools |
| `pattern_analysis.md` | Pattern analysis tools |
| `rs_analysis.md` | Remote sensing analysis tools |
| `3d_analysis.md` | 3D analysis tools |
| `data_conversion.md` | Data conversion tools |
| `geocoding.md` | Geocoding tools |

### Management

| File | Description |
|------|-------------|
| `management_overview.md` | Management overview |
| `toolset_management.md` | Tool set management |
| `tool_management.md` | Tool management |
| `mcp_management.md` | MCP service management |
| `knowledge_base.md` | Knowledge base management |

### Key AI Assistant Features
- **Agentic RAG**: Knowledge base management and Q&A with tool invocation
- **GraphRAG**: Built-in GI tool knowledge graph for reliable task suggestions
- **MCP Protocol**: Model Context Protocol for unified geospatial agent tool interface
- **Open-source Model Support**: Compatible with common open-source models and cloud LLM services
- **Custom Tool Integration**: Upload OpenAPI/Swagger YAML to import custom API tools
- **14 Built-in Tool Categories**: iPortal management, resource tools, map visualization, proximity analysis, data aggregation, spatial overlay, ML, data processing, pattern analysis, remote sensing, 3D analysis, data conversion, geocoding

---

## Section 7: Security (`security/` - 2 files)

| File | Description |
|------|-------------|
| `token_auth.md` | Token-based authentication |
| `org_structure.md` | Organizational structure configuration |

### Key Security Topics
- Token-based access to protected REST services
- Organizational structure setup for hierarchical permissions
- Role-based access control (RBAC)
- User management and authentication
- Single sign-on integration (CAS, Keycloak, LDAP)

---

## Section 8: Reference & FAQ (`topic/` - 1 file)

| File | Description |
|------|-------------|
| `faq.md` | Frequently asked questions |

---

## Resource Links

### Official Documentation Portals
- iPortal Main: https://help.supermap.com/iPortal/
- iPortal AI Assistant: https://help.supermap.com/iPortalAIAssistant/
- AgentX Server API: https://help.supermap.com/AgentXServer/

### Related Products
- SuperMap iServer: https://help.supermap.com/iServer
- SuperMap iEdge: https://help.supermap.com/iEdge
- SuperMap iManager: https://help.supermap.com/iManager/zh/
- SuperMap iManager for Kubernetes: https://help.supermap.com/iManager_K8S/zh/
- SuperMap iClient JavaScript: https://iclient.supermap.io/

### External Resources
- Video Tutorials: https://ke.qq.com/course/4159457
- GIS Academy: http://edu.supermap.com/
- SuperMap Blog (CSDN): https://blog.csdn.net/supermapsupport

---

## Document Collection Summary

| Section | Pages | Size |
|---------|-------|------|
| Features & Introduction | 4 | 132K |
| Installation & Deployment | 12 | 216K |
| Usage Guide | 22 | 444K |
| Administration & Management | 29 | 588K |
| Development & API | 24 | 344K |
| AI Assistant | 27 | 292K |
| Security | 2 | 56K |
| Reference & FAQ | 1 | 96K |
| **Total** | **122** | **~2.2MB** |

---

## Document Format Note
All files are saved as HTML (`.md` extension with HTML content inside). The content is fully readable and includes the complete documentation text, navigation, and structure information from the original SuperMap help site. Use any HTML viewer or text editor to browse the content.
