# SuperMap iServer 1201 REST API Documentation Index

**Total pages collected: 260**

Source: [SuperMap iServer 1201 Help](https://help.supermap.com/iServer/1201/zh/mergedProjects/SuperMapiServerRESTAPI/Overview.htm)

---

## Table of Contents

- [Overview & Architecture](#overview-&-architecture) (8 pages)
- [Portal - Service Management](#portal---service-management) (14 pages)
- [clientBuildREST - Client Request Building](#clientbuildrest---client-request-building) (8 pages)
- [root - Root Resources](#root---root-resources) (2 pages)
- [root/address - Address Matching](#root-address---address-matching) (3 pages)
- [root/data - Data Service](#root-data---data-service) (22 pages)
- [root/dataHistory - Data History](#root-datahistory---data-history) (2 pages)
- [root/datacatalog - Data Catalog](#root-datacatalog---data-catalog) (6 pages)
- [root/dataflow - Data Flow](#root-dataflow---data-flow) (3 pages)
- [root/facilityAnalyst3D - 3D Facility Analysis](#root-facilityanalyst3d---3d-facility-analysis) (7 pages)
- [root/geometry - Geometry Service](#root-geometry---geometry-service) (7 pages)
- [root/geoprocessing - Geoprocessing](#root-geoprocessing---geoprocessing) (5 pages)
- [root/machinelearning - Machine Learning](#root-machinelearning---machine-learning) (25 pages)
- [root/maps - Map Service](#root-maps---map-service) (36 pages)
- [root/networkanalyst - Network Analysis](#root-networkanalyst---network-analysis) (18 pages)
- [root/plot - Plotting](#root-plot---plotting) (5 pages)
- [root/processingjobs - Processing Jobs](#root-processingjobs---processing-jobs) (3 pages)
- [root/realspace - 3D/Realspace](#root-realspace---3d-realspace) (19 pages)
- [root/spatialanalyst - Spatial Analysis](#root-spatialanalyst---spatial-analysis) (54 pages)
- [root/traffictransferanalyst - Traffic Transfer Analysis](#root-traffictransferanalyst---traffic-transfer-analysis) (5 pages)
- [root/vectortile - Vector Tile](#root-vectortile---vector-tile) (6 pages)
- [root/webprinting - Web Printing](#root-webprinting---web-printing) (2 pages)

---

## Overview & Architecture

**8 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `Overview` | 概述 | [Overview.md](Overview.md) |
| 2 | `Resources_Manager_Architecture` | 管理资源层次结构 | [Resources_Manager_Architecture.md](Resources_Manager_Architecture.md) |
| 3 | `StatusCodeDescription` | 状态码列表及说明 | [StatusCodeDescription.md](StatusCodeDescription.md) |
| 4 | `SuperMap_iServer_REST_API_OutputFormat` | 表述格式介绍 | [SuperMap_iServer_REST_API_OutputFormat.md](SuperMap_iServer_REST_API_OutputFormat.md) |
| 5 | `Token_RESTServices` | 基于 Token 访问受保护的 REST 服务资源 | [Token_RESTServices.md](Token_RESTServices.md) |
| 6 | `iPortalArchitecture` | 门户资源层次结构 | [iPortalArchitecture.md](iPortalArchitecture.md) |
| 7 | `resource_hierarchy` | 服务资源层次结构 | [resource_hierarchy.md](resource_hierarchy.md) |
| 8 | `tempResourcesLife` | 临时资源的存储与生命周期 | [tempResourcesLife.md](tempResourcesLife.md) |

## Portal - Service Management

**14 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `Portal_services_batchRegister_batchRegister` | batchRegister | [Portal_services_batchRegister_batchRegister.md](Portal_services_batchRegister_batchRegister.md) |
| 2 | `Portal_services_harvestBatchRegisterServices` | harvestBatchRegisterServices | [Portal_services_harvestBatchRegisterServices.md](Portal_services_harvestBatchRegisterServices.md) |
| 3 | `Portal_services_serviceShareSettings` | servicesShareSetting | [Portal_services_serviceShareSettings.md](Portal_services_serviceShareSettings.md) |
| 4 | `Portal_services_service_regionPermissions_myRegionPermission` | myRegionPermission | [Portal_services_service_regionPermissions_myRegionPermission.md](Portal_services_service_regionPermissions_myRegionPermission.md) |
| 5 | `Portal_services_service_regionPermissions_regionPermission` | regionPermission | [Portal_services_service_regionPermissions_regionPermission.md](Portal_services_service_regionPermissions_regionPermission.md) |
| 6 | `Portal_services_service_regionPermissions_regionPermissions` | regionPermissions | [Portal_services_service_regionPermissions_regionPermissions.md](Portal_services_service_regionPermissions_regionPermissions.md) |
| 7 | `Portal_services_service_service` | service | [Portal_services_service_service.md](Portal_services_service_service.md) |
| 8 | `Portal_services_service_serviceCheckStatus` | serviceCheckStatus | [Portal_services_service_serviceCheckStatus.md](Portal_services_service_serviceCheckStatus.md) |
| 9 | `Portal_services_service_serviceOffline` | serviceOffline | [Portal_services_service_serviceOffline.md](Portal_services_service_serviceOffline.md) |
| 10 | `Portal_services_service_serviceShareSetting` | serviceShareSetting | [Portal_services_service_serviceShareSetting.md](Portal_services_service_serviceShareSetting.md) |
| 11 | `Portal_services_service_serviceStatus` | serviceStatus | [Portal_services_service_serviceStatus.md](Portal_services_service_serviceStatus.md) |
| 12 | `Portal_services_services` | services | [Portal_services_services.md](Portal_services_services.md) |
| 13 | `Portal_services_servicesCheckStatus` | servicesCheckStatus | [Portal_services_servicesCheckStatus.md](Portal_services_servicesCheckStatus.md) |
| 14 | `Portal_services_servicesStatus` | servicesStatus | [Portal_services_servicesStatus.md](Portal_services_servicesStatus.md) |

## clientBuildREST - Client Request Building

**8 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `clientBuildREST_ConstructRESTRequest` | 概述 | [clientBuildREST_ConstructRESTRequest.md](clientBuildREST_ConstructRESTRequest.md) |
| 2 | `clientBuildREST_Geometry_Build` | 几何对象的 JSON 格式构建 | [clientBuildREST_Geometry_Build.md](clientBuildREST_Geometry_Build.md) |
| 3 | `clientBuildREST_Geometry_Build_GeoJSON` | 几何对象的 GeoJSON 格式创建 | [clientBuildREST_Geometry_Build_GeoJSON.md](clientBuildREST_Geometry_Build_GeoJSON.md) |
| 4 | `clientBuildREST_HTTP_structure` | HTTP 请求消息的结构 | [clientBuildREST_HTTP_structure.md](clientBuildREST_HTTP_structure.md) |
| 5 | `clientBuildREST_POST_GET` | POST 请求模拟 GET 请求 | [clientBuildREST_POST_GET.md](clientBuildREST_POST_GET.md) |
| 6 | `clientBuildREST_REST_HTTP` | REST 中 HTTP 请求示例 | [clientBuildREST_REST_HTTP.md](clientBuildREST_REST_HTTP.md) |
| 7 | `clientBuildREST_REST_ParamsTransfer` | REST 中参数的传递方式 | [clientBuildREST_REST_ParamsTransfer.md](clientBuildREST_REST_ParamsTransfer.md) |
| 8 | `clientBuildREST_buildParam` | REST 中参数的构建 | [clientBuildREST_buildParam.md](clientBuildREST_buildParam.md) |

## root - Root Resources

**2 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_root` | root | [root_root.md](root_root.md) |
| 2 | `root_tokens` | tokens | [root_tokens.md](root_tokens.md) |

## root/address - Address Matching

**3 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_address_address` | address | [root_address_address.md](root_address_address.md) |
| 2 | `root_address_geocoding_geocoding` | geocoding | [root_address_geocoding_geocoding.md](root_address_geocoding_geocoding.md) |
| 3 | `root_address_geodecoding_geodecoding` | geodecoding | [root_address_geodecoding_geodecoding.md](root_address_geodecoding_geodecoding.md) |

## root/data - Data Service

**22 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_data_coordTransfer_coordTransfer` | coordTransfer | [root_data_coordTransfer_coordTransfer.md](root_data_coordTransfer_coordTransfer.md) |
| 2 | `root_data_coordTransfer_coordtransferResult_coordtransferResult` | coordTransferResult | [root_data_coordTransfer_coordtransferResult_coordtransferResult.md](root_data_coordTransfer_coordtransferResult_coordtransferResult.md) |
| 3 | `root_data_data` | data | [root_data_data.md](root_data_data.md) |
| 4 | `root_data_datasources_datasource_datasets_dataset_dataset` | dataset | [root_data_datasources_datasource_datasets_dataset_dataset.md](root_data_datasources_datasource_datasets_dataset_dataset.md) |
| 5 | `root_data_datasources_datasource_datasets_dataset_domain_domain` | domain | [root_data_datasources_datasource_datasets_dataset_domain_domain.md](root_data_datasources_datasource_datasets_dataset_domain_domain.md) |
| 6 | `root_data_datasources_datasource_datasets_dataset_features_feature_attachment` | attachments | [root_data_datasources_datasource_datasets_dataset_features_feature_attachment.md](root_data_datasources_datasource_datasets_dataset_features_feature_attachment.md) |
| 7 | `root_data_datasources_datasource_datasets_dataset_features_feature_feature` | feature | [root_data_datasources_datasource_datasets_dataset_features_feature_feature.md](root_data_datasources_datasource_datasets_dataset_features_feature_feature.md) |
| 8 | `root_data_datasources_datasource_datasets_dataset_features_feature_metadata` | metadata | [root_data_datasources_datasource_datasets_dataset_features_feature_metadata.md](root_data_datasources_datasource_datasets_dataset_features_feature_metadata.md) |
| 9 | `root_data_datasources_datasource_datasets_dataset_features_features` | features | [root_data_datasources_datasource_datasets_dataset_features_features.md](root_data_datasources_datasource_datasets_dataset_features_features.md) |
| 10 | `root_data_datasources_datasource_datasets_dataset_fields_field_field` | field | [root_data_datasources_datasource_datasets_dataset_fields_field_field.md](root_data_datasources_datasource_datasets_dataset_fields_field_field.md) |
| 11 | `root_data_datasources_datasource_datasets_dataset_fields_field_statistic` | statistic | [root_data_datasources_datasource_datasets_dataset_fields_field_statistic.md](root_data_datasources_datasource_datasets_dataset_fields_field_statistic.md) |
| 12 | `root_data_datasources_datasource_datasets_dataset_fields_fields` | fields | [root_data_datasources_datasource_datasets_dataset_fields_fields.md](root_data_datasources_datasource_datasets_dataset_fields_fields.md) |
| 13 | `root_data_datasources_datasource_datasets_dataset_gridValue_gridValue` | gridValue | [root_data_datasources_datasource_datasets_dataset_gridValue_gridValue.md](root_data_datasources_datasource_datasets_dataset_gridValue_gridValue.md) |
| 14 | `root_data_datasources_datasource_datasets_dataset_gridValues_gridValues` | gridValues | [root_data_datasources_datasource_datasets_dataset_gridValues_gridValues.md](root_data_datasources_datasource_datasets_dataset_gridValues_gridValues.md) |
| 15 | `root_data_datasources_datasource_datasets_dataset_imageValue_imageValue` | imageValue | [root_data_datasources_datasource_datasets_dataset_imageValue_imageValue.md](root_data_datasources_datasource_datasets_dataset_imageValue_imageValue.md) |
| 16 | `root_data_datasources_datasource_datasets_dataset_imageValues_imageValues` | imageValues | [root_data_datasources_datasource_datasets_dataset_imageValues_imageValues.md](root_data_datasources_datasource_datasets_dataset_imageValues_imageValues.md) |
| 17 | `root_data_datasources_datasource_datasets_dataset_tilefeature_tilefeature` | tileFeature | [root_data_datasources_datasource_datasets_dataset_tilefeature_tilefeature.md](root_data_datasources_datasource_datasets_dataset_tilefeature_tilefeature.md) |
| 18 | `root_data_datasources_datasource_datasets_datasets` | datasets | [root_data_datasources_datasource_datasets_datasets.md](root_data_datasources_datasource_datasets_datasets.md) |
| 19 | `root_data_datasources_datasource_datasource` | datasource | [root_data_datasources_datasource_datasource.md](root_data_datasources_datasource_datasource.md) |
| 20 | `root_data_datasources_datasources` | datasources | [root_data_datasources_datasources.md](root_data_datasources_datasources.md) |
| 21 | `root_data_featureResults_featureResult` | featureResult | [root_data_featureResults_featureResult.md](root_data_featureResults_featureResult.md) |
| 22 | `root_data_featureResults_featureResults` | featureResults | [root_data_featureResults_featureResults.md](root_data_featureResults_featureResults.md) |

## root/dataHistory - Data History

**2 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_dataHistory_dataHistory` | dataHistory | [root_dataHistory_dataHistory.md](root_dataHistory_dataHistory.md) |
| 2 | `root_dataHistory_datasources_datasources` | datasources | [root_dataHistory_datasources_datasources.md](root_dataHistory_datasources_datasources.md) |

## root/datacatalog - Data Catalog

**6 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_datacatalog_bigdata` | dataCatalog | [root_datacatalog_bigdata.md](root_datacatalog_bigdata.md) |
| 2 | `root_datacatalog_binary_binary` | binary | [root_datacatalog_binary_binary.md](root_datacatalog_binary_binary.md) |
| 3 | `root_datacatalog_relationship_relationship` | relationship | [root_datacatalog_relationship_relationship.md](root_datacatalog_relationship_relationship.md) |
| 4 | `root_datacatalog_sharefile_sharefile` | sharefile | [root_datacatalog_sharefile_sharefile.md](root_datacatalog_sharefile_sharefile.md) |
| 5 | `root_datacatalog_spatiotemporal_realtime` | spatiotemporal | [root_datacatalog_spatiotemporal_realtime.md](root_datacatalog_spatiotemporal_realtime.md) |
| 6 | `root_datacatalog_tiles_tiles` | tiles | [root_datacatalog_tiles_tiles.md](root_datacatalog_tiles_tiles.md) |

## root/dataflow - Data Flow

**3 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_dataflow_broadcast_broadcast` | broadcast | [root_dataflow_broadcast_broadcast.md](root_dataflow_broadcast_broadcast.md) |
| 2 | `root_dataflow_dataflow` | dataflow | [root_dataflow_dataflow.md](root_dataflow_dataflow.md) |
| 3 | `root_dataflow_subscribe_subscribe` | subscribe | [root_dataflow_subscribe_subscribe.md](root_dataflow_subscribe_subscribe.md) |

## root/facilityAnalyst3D - 3D Facility Analysis

**7 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_facilityAnalyst3D_fa3DNetworkDataName_TraceDownResult` | TraceDownResult | [root_facilityAnalyst3D_fa3DNetworkDataName_TraceDownResult.md](root_facilityAnalyst3D_fa3DNetworkDataName_TraceDownResult.md) |
| 2 | `root_facilityAnalyst3D_fa3DNetworkDataName_fa3DNetworkDataName` | fa3DNetworkDataName | [root_facilityAnalyst3D_fa3DNetworkDataName_fa3DNetworkDataName.md](root_facilityAnalyst3D_fa3DNetworkDataName_fa3DNetworkDataName.md) |
| 3 | `root_facilityAnalyst3D_fa3DNetworkDataName_sinks` | sinks | [root_facilityAnalyst3D_fa3DNetworkDataName_sinks.md](root_facilityAnalyst3D_fa3DNetworkDataName_sinks.md) |
| 4 | `root_facilityAnalyst3D_fa3DNetworkDataName_sources` | sources | [root_facilityAnalyst3D_fa3DNetworkDataName_sources.md](root_facilityAnalyst3D_fa3DNetworkDataName_sources.md) |
| 5 | `root_facilityAnalyst3D_fa3DNetworkDataName_traceUpResult` | traceUpResult | [root_facilityAnalyst3D_fa3DNetworkDataName_traceUpResult.md](root_facilityAnalyst3D_fa3DNetworkDataName_traceUpResult.md) |
| 6 | `root_facilityAnalyst3D_fa3DNetworkDataName_upstreamCirticalFaclilities` | upstreamCirticalFaclilities | [root_facilityAnalyst3D_fa3DNetworkDataName_upstreamCirticalFaclilities.md](root_facilityAnalyst3D_fa3DNetworkDataName_upstreamCirticalFaclilities.md) |
| 7 | `root_facilityAnalyst3D_facilityAnalyst3D` | facilityAnalyst3D | [root_facilityAnalyst3D_facilityAnalyst3D.md](root_facilityAnalyst3D_facilityAnalyst3D.md) |

## root/geometry - Geometry Service

**7 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_geometry_area` | area | [root_geometry_area.md](root_geometry_area.md) |
| 2 | `root_geometry_buffer_buffer` | geometryBufferResults | [root_geometry_buffer_buffer.md](root_geometry_buffer_buffer.md) |
| 3 | `root_geometry_coordtransfer` | coordTransfer | [root_geometry_coordtransfer.md](root_geometry_coordtransfer.md) |
| 4 | `root_geometry_distance` | distance | [root_geometry_distance.md](root_geometry_distance.md) |
| 5 | `root_geometry_geometry` | geometry | [root_geometry_geometry.md](root_geometry_geometry.md) |
| 6 | `root_geometry_overlay_geometryOverlayResult` | geometryOverlayResult | [root_geometry_overlay_geometryOverlayResult.md](root_geometry_overlay_geometryOverlayResult.md) |
| 7 | `root_geometry_overlay_geometryOverlayResults` | geometryOverlayResults | [root_geometry_overlay_geometryOverlayResults.md](root_geometry_overlay_geometryOverlayResults.md) |

## root/geoprocessing - Geoprocessing

**5 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_geoprocessing_geoprocessing` | geoprocessing | [root_geoprocessing_geoprocessing.md](root_geoprocessing_geoprocessing.md) |
| 2 | `root_geoprocessing_gpmodeler_internalOnly` | 内部使用接口 | [root_geoprocessing_gpmodeler_internalOnly.md](root_geoprocessing_gpmodeler_internalOnly.md) |
| 3 | `root_geoprocessing_jobs_gpjobs` | jobs | [root_geoprocessing_jobs_gpjobs.md](root_geoprocessing_jobs_gpjobs.md) |
| 4 | `root_geoprocessing_list_gplist` | list | [root_geoprocessing_list_gplist.md](root_geoprocessing_list_gplist.md) |
| 5 | `root_geoprocessing_tool_gptool` | tool | [root_geoprocessing_tool_gptool.md](root_geoprocessing_tool_gptool.md) |

## root/machinelearning - Machine Learning

**25 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_machinelearning_BinaryClassification_binaryClassification` | BinaryClassification | [root_machinelearning_BinaryClassification_binaryClassification.md](root_machinelearning_BinaryClassification_binaryClassification.md) |
| 2 | `root_machinelearning_DecisionTreeClassificationFit_decisionTreeClassificationFit` | DecisionTreeClassificationFit | [root_machinelearning_DecisionTreeClassificationFit_decisionTreeClassificationFit.md](root_machinelearning_DecisionTreeClassificationFit_decisionTreeClassificationFit.md) |
| 3 | `root_machinelearning_DecisionTreeClassificationTransform_decisionTreeClassificationTransform` | DecisionTreeClassificationTransform | [root_machinelearning_DecisionTreeClassificationTransform_decisionTreeClassificationTransform.md](root_machinelearning_DecisionTreeClassificationTransform_decisionTreeClassificationTransform.md) |
| 4 | `root_machinelearning_DecisionTreeRegressionFit_decisionTreeRegressionFit` | DecisionTreeRegressionFit | [root_machinelearning_DecisionTreeRegressionFit_decisionTreeRegressionFit.md](root_machinelearning_DecisionTreeRegressionFit_decisionTreeRegressionFit.md) |
| 5 | `root_machinelearning_DecisionTreeRegressionTransform_decisionTreeRegressionTransform` | DecisionTreeRegressionTransform | [root_machinelearning_DecisionTreeRegressionTransform_decisionTreeRegressionTransform.md](root_machinelearning_DecisionTreeRegressionTransform_decisionTreeRegressionTransform.md) |
| 6 | `root_machinelearning_LandcoverClassification_landcoverClassification` | LandcoverClassification | [root_machinelearning_LandcoverClassification_landcoverClassification.md](root_machinelearning_LandcoverClassification_landcoverClassification.md) |
| 7 | `root_machinelearning_LinearRegressionFit_linearRegressionFit` | LinearRegressionFit | [root_machinelearning_LinearRegressionFit_linearRegressionFit.md](root_machinelearning_LinearRegressionFit_linearRegressionFit.md) |
| 8 | `root_machinelearning_LinearRegressionTransform_linearRegressionTransform` | LinearRegressionTransform | [root_machinelearning_LinearRegressionTransform_linearRegressionTransform.md](root_machinelearning_LinearRegressionTransform_linearRegressionTransform.md) |
| 9 | `root_machinelearning_LinearSVCFit_linearSVCFit` | LinearSVCFit | [root_machinelearning_LinearSVCFit_linearSVCFit.md](root_machinelearning_LinearSVCFit_linearSVCFit.md) |
| 10 | `root_machinelearning_LinearSVCTransform_linearSVCTransform` | LinearSVCTransform | [root_machinelearning_LinearSVCTransform_linearSVCTransform.md](root_machinelearning_LinearSVCTransform_linearSVCTransform.md) |
| 11 | `root_machinelearning_LogisticRegressionFit_logisticRegressionFit` | LogisticRegressionFit | [root_machinelearning_LogisticRegressionFit_logisticRegressionFit.md](root_machinelearning_LogisticRegressionFit_logisticRegressionFit.md) |
| 12 | `root_machinelearning_LogisticRegressionTransform_logisticRegressionTransform` | LogisticRegressionTransform | [root_machinelearning_LogisticRegressionTransform_logisticRegressionTransform.md](root_machinelearning_LogisticRegressionTransform_logisticRegressionTransform.md) |
| 13 | `root_machinelearning_NaiveBayesClassificationFit_naiveBayesClassificationFit` | NaiveBayesClassificationFit | [root_machinelearning_NaiveBayesClassificationFit_naiveBayesClassificationFit.md](root_machinelearning_NaiveBayesClassificationFit_naiveBayesClassificationFit.md) |
| 14 | `root_machinelearning_NaiveBayesClassificationTransform_naiveBayesClassificationTransform` | NaiveBayesClassificationTransform | [root_machinelearning_NaiveBayesClassificationTransform_naiveBayesClassificationTransform.md](root_machinelearning_NaiveBayesClassificationTransform_naiveBayesClassificationTransform.md) |
| 15 | `root_machinelearning_ObjectDetection_objectDetection` | ObjectDetection | [root_machinelearning_ObjectDetection_objectDetection.md](root_machinelearning_ObjectDetection_objectDetection.md) |
| 16 | `root_machinelearning_ObjectExtraction_objectExtraction` | ObjectExtraction | [root_machinelearning_ObjectExtraction_objectExtraction.md](root_machinelearning_ObjectExtraction_objectExtraction.md) |
| 17 | `root_machinelearning_SceneClassification_sceneClassification` | SceneClassification | [root_machinelearning_SceneClassification_sceneClassification.md](root_machinelearning_SceneClassification_sceneClassification.md) |
| 18 | `root_machinelearning_densityclusteranalyst_densityClusterAnalyst` | densityclusteranalyst | [root_machinelearning_densityclusteranalyst_densityClusterAnalyst.md](root_machinelearning_densityclusteranalyst_densityClusterAnalyst.md) |
| 19 | `root_machinelearning_forestbasedclassificationfit_forestBasedClassificationFit` | forestbasedclassificationfit | [root_machinelearning_forestbasedclassificationfit_forestBasedClassificationFit.md](root_machinelearning_forestbasedclassificationfit_forestBasedClassificationFit.md) |
| 20 | `root_machinelearning_forestbasedclassificationtransform_forestBasedClassificationTransform` | forestbasedclassificationtransform | [root_machinelearning_forestbasedclassificationtransform_forestBasedClassificationTransform.md](root_machinelearning_forestbasedclassificationtransform_forestBasedClassificationTransform.md) |
| 21 | `root_machinelearning_forestbasedregressionfit_forestBasedRegressionFit` | forestbasedregressionfit | [root_machinelearning_forestbasedregressionfit_forestBasedRegressionFit.md](root_machinelearning_forestbasedregressionfit_forestBasedRegressionFit.md) |
| 22 | `root_machinelearning_forestbasedregressiontransform_forestBasedRegressionTransform` | forestbasedregressiontransform | [root_machinelearning_forestbasedregressiontransform_forestBasedRegressionTransform.md](root_machinelearning_forestbasedregressiontransform_forestBasedRegressionTransform.md) |
| 23 | `root_machinelearning_generalizedlinearregressionfit_generalizedLinearRegressionFit` | generalizedlinearregressionfit | [root_machinelearning_generalizedlinearregressionfit_generalizedLinearRegressionFit.md](root_machinelearning_generalizedlinearregressionfit_generalizedLinearRegressionFit.md) |
| 24 | `root_machinelearning_generalizedlinearregressiontransform_generalizedLinearregRessionTransform` | generalizedlinearregressiontransform | [root_machinelearning_generalizedlinearregressiontransform_generalizedLinearregRessionTransform.md](root_machinelearning_generalizedlinearregressiontransform_generalizedLinearregRessionTransform.md) |
| 25 | `root_machinelearning_machineLearning` | machineLearning | [root_machinelearning_machineLearning.md](root_machinelearning_machineLearning.md) |

## root/maps - Map Service

**36 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_maps_map_PrjCoordSys` | prjCoordSys | [root_maps_map_PrjCoordSys.md](root_maps_map_PrjCoordSys.md) |
| 2 | `root_maps_map_area` | area | [root_maps_map_area.md](root_maps_map_area.md) |
| 3 | `root_maps_map_chartFeatureInfoSpecs` | chartFeatureInfoSpecs | [root_maps_map_chartFeatureInfoSpecs.md](root_maps_map_chartFeatureInfoSpecs.md) |
| 4 | `root_maps_map_clearCache` | clearCache | [root_maps_map_clearCache.md](root_maps_map_clearCache.md) |
| 5 | `root_maps_map_distance` | distance | [root_maps_map_distance.md](root_maps_map_distance.md) |
| 6 | `root_maps_map_entireImage` | entireImage | [root_maps_map_entireImage.md](root_maps_map_entireImage.md) |
| 7 | `root_maps_map_highlightImage` | highlightImage | [root_maps_map_highlightImage.md](root_maps_map_highlightImage.md) |
| 8 | `root_maps_map_image` | image | [root_maps_map_image.md](root_maps_map_image.md) |
| 9 | `root_maps_map_layers_layer_layer` | layer | [root_maps_map_layers_layer_layer.md](root_maps_map_layers_layer_layer.md) |
| 10 | `root_maps_map_layers_layers` | layers | [root_maps_map_layers_layers.md](root_maps_map_layers_layers.md) |
| 11 | `root_maps_map_map` | map | [root_maps_map_map.md](root_maps_map_map.md) |
| 12 | `root_maps_map_overview` | overview | [root_maps_map_overview.md](root_maps_map_overview.md) |
| 13 | `root_maps_map_prjCoordSys` | prjCoordSys | [root_maps_map_prjCoordSys.md](root_maps_map_prjCoordSys.md) |
| 14 | `root_maps_map_queryResults_queryResult` | queryResult | [root_maps_map_queryResults_queryResult.md](root_maps_map_queryResults_queryResult.md) |
| 15 | `root_maps_map_queryResults_queryResults` | queryResults | [root_maps_map_queryResults_queryResults.md](root_maps_map_queryResults_queryResults.md) |
| 16 | `root_maps_map_symbol` | symbol | [root_maps_map_symbol.md](root_maps_map_symbol.md) |
| 17 | `root_maps_map_tempLayersSet_tempLayersSet` | tempLayersSet | [root_maps_map_tempLayersSet_tempLayersSet.md](root_maps_map_tempLayersSet_tempLayersSet.md) |
| 18 | `root_maps_map_tempLayersSet_tempLayers_tempLayer_legend` | legend | [root_maps_map_tempLayersSet_tempLayers_tempLayer_legend.md](root_maps_map_tempLayersSet_tempLayers_tempLayer_legend.md) |
| 19 | `root_maps_map_tempLayersSet_tempLayers_tempLayer_queryable` | queryable | [root_maps_map_tempLayersSet_tempLayers_tempLayer_queryable.md](root_maps_map_tempLayersSet_tempLayers_tempLayer_queryable.md) |
| 20 | `root_maps_map_tempLayersSet_tempLayers_tempLayer_style` | style | [root_maps_map_tempLayersSet_tempLayers_tempLayer_style.md](root_maps_map_tempLayersSet_tempLayers_tempLayer_style.md) |
| 21 | `root_maps_map_tempLayersSet_tempLayers_tempLayer_tempLayer` | tempLayer | [root_maps_map_tempLayersSet_tempLayers_tempLayer_tempLayer.md](root_maps_map_tempLayersSet_tempLayers_tempLayer_tempLayer.md) |
| 22 | `root_maps_map_tempLayersSet_tempLayers_tempLayer_visible` | visible | [root_maps_map_tempLayersSet_tempLayers_tempLayer_visible.md](root_maps_map_tempLayersSet_tempLayers_tempLayer_visible.md) |
| 23 | `root_maps_map_tempLayersSet_tempLayers_tempLayers` | tempLayers | [root_maps_map_tempLayersSet_tempLayers_tempLayers.md](root_maps_map_tempLayersSet_tempLayers_tempLayers.md) |
| 24 | `root_maps_map_tileFeature_tileFeature` | tileFeature | [root_maps_map_tileFeature_tileFeature.md](root_maps_map_tileFeature_tileFeature.md) |
| 25 | `root_maps_map_tileFeature_vectorStyles_vectorStyle` | vectorStyle | [root_maps_map_tileFeature_vectorStyles_vectorStyle.md](root_maps_map_tileFeature_vectorStyles_vectorStyle.md) |
| 26 | `root_maps_map_tileFeature_vectorStyles_vectorStyles` | vectorstyles | [root_maps_map_tileFeature_vectorStyles_vectorStyles.md](root_maps_map_tileFeature_vectorStyles_vectorStyles.md) |
| 27 | `root_maps_map_tileFeature_vectorStyles_vectorstyles` | vectorstyles | [root_maps_map_tileFeature_vectorStyles_vectorstyles.md](root_maps_map_tileFeature_vectorStyles_vectorstyles.md) |
| 28 | `root_maps_map_tileFeature_vectorSymbols_vectorSymbols` | vectorSymbols | [root_maps_map_tileFeature_vectorSymbols_vectorSymbols.md](root_maps_map_tileFeature_vectorSymbols_vectorSymbols.md) |
| 29 | `root_maps_map_tileImage` | tileImage | [root_maps_map_tileImage.md](root_maps_map_tileImage.md) |
| 30 | `root_maps_map_tilesets_tileset` | tileset | [root_maps_map_tilesets_tileset.md](root_maps_map_tilesets_tileset.md) |
| 31 | `root_maps_map_tilesets_tilesets` | tilesets | [root_maps_map_tilesets_tilesets.md](root_maps_map_tilesets_tilesets.md) |
| 32 | `root_maps_map_trackingLayer_highlightTargetSet` | highlightTargetSet | [root_maps_map_trackingLayer_highlightTargetSet.md](root_maps_map_trackingLayer_highlightTargetSet.md) |
| 33 | `root_maps_map_trackingLayer_highlighttargetset` | highlightTargetSet | [root_maps_map_trackingLayer_highlighttargetset.md](root_maps_map_trackingLayer_highlighttargetset.md) |
| 34 | `root_maps_map_trackingLayer_trackingLayer` | trackingLayer | [root_maps_map_trackingLayer_trackingLayer.md](root_maps_map_trackingLayer_trackingLayer.md) |
| 35 | `root_maps_map_zxyTileImage_zxyTileImage` | zxyTileImage | [root_maps_map_zxyTileImage_zxyTileImage.md](root_maps_map_zxyTileImage_zxyTileImage.md) |
| 36 | `root_maps_maps` | maps | [root_maps_maps.md](root_maps_maps.md) |

## root/networkanalyst - Network Analysis

**18 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_networkanalyst_networkDataName_MTSPPath` | mtspPath | [root_networkanalyst_networkDataName_MTSPPath.md](root_networkanalyst_networkDataName_MTSPPath.md) |
| 2 | `root_networkanalyst_networkDataName_TSPPath` | tspPath | [root_networkanalyst_networkDataName_TSPPath.md](root_networkanalyst_networkDataName_TSPPath.md) |
| 3 | `root_networkanalyst_networkDataName_burstAnalyse` | burstAnalyse | [root_networkanalyst_networkDataName_burstAnalyse.md](root_networkanalyst_networkDataName_burstAnalyse.md) |
| 4 | `root_networkanalyst_networkDataName_closestfacility` | closestFacility | [root_networkanalyst_networkDataName_closestfacility.md](root_networkanalyst_networkDataName_closestfacility.md) |
| 5 | `root_networkanalyst_networkDataName_connectedEdges` | connectedEdges | [root_networkanalyst_networkDataName_connectedEdges.md](root_networkanalyst_networkDataName_connectedEdges.md) |
| 6 | `root_networkanalyst_networkDataName_downstreamcirticalfaclilities` | downstreamCirticalFaclilities | [root_networkanalyst_networkDataName_downstreamcirticalfaclilities.md](root_networkanalyst_networkDataName_downstreamcirticalfaclilities.md) |
| 7 | `root_networkanalyst_networkDataName_edgeWeight` | edgeWeight | [root_networkanalyst_networkDataName_edgeWeight.md](root_networkanalyst_networkDataName_edgeWeight.md) |
| 8 | `root_networkanalyst_networkDataName_location` | location | [root_networkanalyst_networkDataName_location.md](root_networkanalyst_networkDataName_location.md) |
| 9 | `root_networkanalyst_networkDataName_model` | model | [root_networkanalyst_networkDataName_model.md](root_networkanalyst_networkDataName_model.md) |
| 10 | `root_networkanalyst_networkDataName_networkDataName` | networkDataName | [root_networkanalyst_networkDataName_networkDataName.md](root_networkanalyst_networkDataName_networkDataName.md) |
| 11 | `root_networkanalyst_networkDataName_path` | path | [root_networkanalyst_networkDataName_path.md](root_networkanalyst_networkDataName_path.md) |
| 12 | `root_networkanalyst_networkDataName_serviceArea` | serviceArea | [root_networkanalyst_networkDataName_serviceArea.md](root_networkanalyst_networkDataName_serviceArea.md) |
| 13 | `root_networkanalyst_networkDataName_traceDown` | traceDown | [root_networkanalyst_networkDataName_traceDown.md](root_networkanalyst_networkDataName_traceDown.md) |
| 14 | `root_networkanalyst_networkDataName_traceUp` | traceUp | [root_networkanalyst_networkDataName_traceUp.md](root_networkanalyst_networkDataName_traceUp.md) |
| 15 | `root_networkanalyst_networkDataName_turnNodeWeight` | turnNodeWeight | [root_networkanalyst_networkDataName_turnNodeWeight.md](root_networkanalyst_networkDataName_turnNodeWeight.md) |
| 16 | `root_networkanalyst_networkDataName_upstreamcirticalfaclilities` | upstreamCirticalFaclilities | [root_networkanalyst_networkDataName_upstreamcirticalfaclilities.md](root_networkanalyst_networkDataName_upstreamcirticalfaclilities.md) |
| 17 | `root_networkanalyst_networkDataName_weightMatrix` | weightMatrix | [root_networkanalyst_networkDataName_weightMatrix.md](root_networkanalyst_networkDataName_weightMatrix.md) |
| 18 | `root_networkanalyst_networkanalyst` | networkAnalyst | [root_networkanalyst_networkanalyst.md](root_networkanalyst_networkanalyst.md) |

## root/plot - Plotting

**5 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_plot_graphicObject_graphicObject` | graphicObject | [root_plot_graphicObject_graphicObject.md](root_plot_graphicObject_graphicObject.md) |
| 2 | `root_plot_plot` | plot | [root_plot_plot.md](root_plot_plot.md) |
| 3 | `root_plot_smlFileDownload_smlFileDownload` | smlFileDownload | [root_plot_smlFileDownload_smlFileDownload.md](root_plot_smlFileDownload_smlFileDownload.md) |
| 4 | `root_plot_smlInfos_smlInfos` | smlInfos | [root_plot_smlInfos_smlInfos.md](root_plot_smlInfos_smlInfos.md) |
| 5 | `root_plot_symbolLibs_symbolLibs` | symbolLibs | [root_plot_symbolLibs_symbolLibs.md](root_plot_symbolLibs_symbolLibs.md) |

## root/processingjobs - Processing Jobs

**3 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_processingjobs_dataprocessingJobs_dataprocessing` | dataProcessingJobs | [root_processingjobs_dataprocessingJobs_dataprocessing.md](root_processingjobs_dataprocessingJobs_dataprocessing.md) |
| 2 | `root_processingjobs_jobs` | processingJobs | [root_processingjobs_jobs.md](root_processingjobs_jobs.md) |
| 3 | `root_processingjobs_spatialanalystJobs_spatialanalystJobs` | spatialanalystJobs | [root_processingjobs_spatialanalystJobs_spatialanalystJobs.md](root_processingjobs_spatialanalystJobs_spatialanalystJobs.md) |

## root/realspace - 3D/Realspace

**19 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_Realspace_Realspace` | 3D | [root_Realspace_Realspace.md](root_Realspace_Realspace.md) |
| 2 | `root_Realspace_allDataConfigs` | allDataConfigs | [root_Realspace_allDataConfigs.md](root_Realspace_allDataConfigs.md) |
| 3 | `root_Realspace_datas_datas` | datas | [root_Realspace_datas_datas.md](root_Realspace_datas_datas.md) |
| 4 | `root_Realspace_scenes_scenes` | scenes | [root_Realspace_scenes_scenes.md](root_Realspace_scenes_scenes.md) |
| 5 | `root_Realspace_symbols_symbol` | symbols | [root_Realspace_symbols_symbol.md](root_Realspace_symbols_symbol.md) |
| 6 | `root_realspace_allDataConfigs` | allDataConfigs | [root_realspace_allDataConfigs.md](root_realspace_allDataConfigs.md) |
| 7 | `root_realspace_datas_data_clearCache` | clearCache | [root_realspace_datas_data_clearCache.md](root_realspace_datas_data_clearCache.md) |
| 8 | `root_realspace_datas_data_config` | config | [root_realspace_datas_data_config.md](root_realspace_datas_data_config.md) |
| 9 | `root_realspace_datas_data_data` | data | [root_realspace_datas_data_data.md](root_realspace_datas_data_data.md) |
| 10 | `root_realspace_datas_data_modelIndex` | modelIndex | [root_realspace_datas_data_modelIndex.md](root_realspace_datas_data_modelIndex.md) |
| 11 | `root_realspace_datas_data_tileData` | tileData | [root_realspace_datas_data_tileData.md](root_realspace_datas_data_tileData.md) |
| 12 | `root_realspace_datas_data_tileDataVersion` | tileDataVersion | [root_realspace_datas_data_tileDataVersion.md](root_realspace_datas_data_tileDataVersion.md) |
| 13 | `root_realspace_datas_datas` | datas | [root_realspace_datas_datas.md](root_realspace_datas_datas.md) |
| 14 | `root_realspace_realspace` | 3D | [root_realspace_realspace.md](root_realspace_realspace.md) |
| 15 | `root_realspace_scenes_scene_layers_layer` | layer | [root_realspace_scenes_scene_layers_layer.md](root_realspace_scenes_scene_layers_layer.md) |
| 16 | `root_realspace_scenes_scene_layers_layers` | layers | [root_realspace_scenes_scene_layers_layers.md](root_realspace_scenes_scene_layers_layers.md) |
| 17 | `root_realspace_scenes_scene_scene` | scene | [root_realspace_scenes_scene_scene.md](root_realspace_scenes_scene_scene.md) |
| 18 | `root_realspace_scenes_scenes` | scenes | [root_realspace_scenes_scenes.md](root_realspace_scenes_scenes.md) |
| 19 | `root_realspace_symbols_symbol` | symbols | [root_realspace_symbols_symbol.md](root_realspace_symbols_symbol.md) |

## root/spatialanalyst - Spatial Analysis

**54 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_spatialanalyst_datasets_Density_datasetDensityAnalyst` | datasetDensityAnalyst | [root_spatialanalyst_datasets_Density_datasetDensityAnalyst.md](root_spatialanalyst_datasets_Density_datasetDensityAnalyst.md) |
| 2 | `root_spatialanalyst_datasets_Density_kernelDensity` | kernelDensity | [root_spatialanalyst_datasets_Density_kernelDensity.md](root_spatialanalyst_datasets_Density_kernelDensity.md) |
| 3 | `root_spatialanalyst_datasets_RelativePosition3D_RelativePosition3D` | RelativePosition3D | [root_spatialanalyst_datasets_RelativePosition3D_RelativePosition3D.md](root_spatialanalyst_datasets_RelativePosition3D_RelativePosition3D.md) |
| 4 | `root_spatialanalyst_datasets_border_border` | border | [root_spatialanalyst_datasets_border_border.md](root_spatialanalyst_datasets_border_border.md) |
| 5 | `root_spatialanalyst_datasets_border_datasetBorderResult` | datasetBorderResult | [root_spatialanalyst_datasets_border_datasetBorderResult.md](root_spatialanalyst_datasets_border_datasetBorderResult.md) |
| 6 | `root_spatialanalyst_datasets_buffer3D_buffer3D` | buffer3D | [root_spatialanalyst_datasets_buffer3D_buffer3D.md](root_spatialanalyst_datasets_buffer3D_buffer3D.md) |
| 7 | `root_spatialanalyst_datasets_clip_clip` | clip | [root_spatialanalyst_datasets_clip_clip.md](root_spatialanalyst_datasets_clip_clip.md) |
| 8 | `root_spatialanalyst_datasets_clip_datasetclipResult` | datasetClipResult | [root_spatialanalyst_datasets_clip_datasetclipResult.md](root_spatialanalyst_datasets_clip_datasetclipResult.md) |
| 9 | `root_spatialanalyst_datasets_dataset` | dataset | [root_spatialanalyst_datasets_dataset.md](root_spatialanalyst_datasets_dataset.md) |
| 10 | `root_spatialanalyst_datasets_datasetBufferResults_datasetBufferResult` | datasetBufferResult | [root_spatialanalyst_datasets_datasetBufferResults_datasetBufferResult.md](root_spatialanalyst_datasets_datasetBufferResults_datasetBufferResult.md) |
| 11 | `root_spatialanalyst_datasets_datasetBufferResults_datasetBufferResults` | datasetBufferResults | [root_spatialanalyst_datasets_datasetBufferResults_datasetBufferResults.md](root_spatialanalyst_datasets_datasetBufferResults_datasetBufferResults.md) |
| 12 | `root_spatialanalyst_datasets_datasetBufferResults_datasetbufferresult` | datasetBufferResult | [root_spatialanalyst_datasets_datasetBufferResults_datasetbufferresult.md](root_spatialanalyst_datasets_datasetBufferResults_datasetbufferresult.md) |
| 13 | `root_spatialanalyst_datasets_datasetGeorelationResults_datasetGeorelationResult` | datasetGeorelationResult | [root_spatialanalyst_datasets_datasetGeorelationResults_datasetGeorelationResult.md](root_spatialanalyst_datasets_datasetGeorelationResults_datasetGeorelationResult.md) |
| 14 | `root_spatialanalyst_datasets_datasetGeorelationResults_datasetGeorelationResults` | datasetGeorelationResults | [root_spatialanalyst_datasets_datasetGeorelationResults_datasetGeorelationResults.md](root_spatialanalyst_datasets_datasetGeorelationResults_datasetGeorelationResults.md) |
| 15 | `root_spatialanalyst_datasets_datasetIsolineResults_datasetIsolineResult` | datasetIsolineResult | [root_spatialanalyst_datasets_datasetIsolineResults_datasetIsolineResult.md](root_spatialanalyst_datasets_datasetIsolineResults_datasetIsolineResult.md) |
| 16 | `root_spatialanalyst_datasets_datasetIsolineResults_datasetIsolineResults` | datasetIsolineResults | [root_spatialanalyst_datasets_datasetIsolineResults_datasetIsolineResults.md](root_spatialanalyst_datasets_datasetIsolineResults_datasetIsolineResults.md) |
| 17 | `root_spatialanalyst_datasets_datasetIsoregionResults_datasetIsoregionResult` | datasetIsoregionResult | [root_spatialanalyst_datasets_datasetIsoregionResults_datasetIsoregionResult.md](root_spatialanalyst_datasets_datasetIsoregionResults_datasetIsoregionResult.md) |
| 18 | `root_spatialanalyst_datasets_datasetIsoregionResults_datasetIsoregionResults` | datasetIsoregionResults | [root_spatialanalyst_datasets_datasetIsoregionResults_datasetIsoregionResults.md](root_spatialanalyst_datasets_datasetIsoregionResults_datasetIsoregionResults.md) |
| 19 | `root_spatialanalyst_datasets_datasetMinDistanceResults_datasetMinDistanceResult` | datasetMinDistanceResult | [root_spatialanalyst_datasets_datasetMinDistanceResults_datasetMinDistanceResult.md](root_spatialanalyst_datasets_datasetMinDistanceResults_datasetMinDistanceResult.md) |
| 20 | `root_spatialanalyst_datasets_datasetMinDistanceResults_datasetMinDistanceResults` | datasetMinDistanceResults | [root_spatialanalyst_datasets_datasetMinDistanceResults_datasetMinDistanceResults.md](root_spatialanalyst_datasets_datasetMinDistanceResults_datasetMinDistanceResults.md) |
| 21 | `root_spatialanalyst_datasets_datasetOverlayResults_datasetOverlayResult` | datasetOverlayResult | [root_spatialanalyst_datasets_datasetOverlayResults_datasetOverlayResult.md](root_spatialanalyst_datasets_datasetOverlayResults_datasetOverlayResult.md) |
| 22 | `root_spatialanalyst_datasets_datasetOverlayResults_datasetOverlayResults` | datasetOverlayResults | [root_spatialanalyst_datasets_datasetOverlayResults_datasetOverlayResults.md](root_spatialanalyst_datasets_datasetOverlayResults_datasetOverlayResults.md) |
| 23 | `root_spatialanalyst_datasets_datasetOverlayResults_datasetoverlayresults` | datasetOverlayResults | [root_spatialanalyst_datasets_datasetOverlayResults_datasetoverlayresults.md](root_spatialanalyst_datasets_datasetOverlayResults_datasetoverlayresults.md) |
| 24 | `root_spatialanalyst_datasets_datasetThiessenResults_datasetThiessenResult` | datasetThiessenPolygonResult | [root_spatialanalyst_datasets_datasetThiessenResults_datasetThiessenResult.md](root_spatialanalyst_datasets_datasetThiessenResults_datasetThiessenResult.md) |
| 25 | `root_spatialanalyst_datasets_datasetThiessenResults_datasetThiessenResults` | datasetThiessenPolygonResults | [root_spatialanalyst_datasets_datasetThiessenResults_datasetThiessenResults.md](root_spatialanalyst_datasets_datasetThiessenResults_datasetThiessenResults.md) |
| 26 | `root_spatialanalyst_datasets_datasets` | datasets | [root_spatialanalyst_datasets_datasets.md](root_spatialanalyst_datasets_datasets.md) |
| 27 | `root_spatialanalyst_datasets_gridMathAnalyst_gridMathAnalyst` | gridMathAnalyst | [root_spatialanalyst_datasets_gridMathAnalyst_gridMathAnalyst.md](root_spatialanalyst_datasets_gridMathAnalyst_gridMathAnalyst.md) |
| 28 | `root_spatialanalyst_datasets_gridMathAnalyst_gridMathResult` | gridMathResult | [root_spatialanalyst_datasets_gridMathAnalyst_gridMathResult.md](root_spatialanalyst_datasets_gridMathAnalyst_gridMathResult.md) |
| 29 | `root_spatialanalyst_datasets_interpolation_interpolation` | datasetInterpolation | [root_spatialanalyst_datasets_interpolation_interpolation.md](root_spatialanalyst_datasets_interpolation_interpolation.md) |
| 30 | `root_spatialanalyst_datasets_interpolation_interpolationDensity_interpolationDensity` | interpolationDensity | [root_spatialanalyst_datasets_interpolation_interpolationDensity_interpolationDensity.md](root_spatialanalyst_datasets_interpolation_interpolationDensity_interpolationDensity.md) |
| 31 | `root_spatialanalyst_datasets_interpolation_interpolationDensity_interpolationDensityResult` | interpolationDensityResult | [root_spatialanalyst_datasets_interpolation_interpolationDensity_interpolationDensityResult.md](root_spatialanalyst_datasets_interpolation_interpolationDensity_interpolationDensityResult.md) |
| 32 | `root_spatialanalyst_datasets_interpolation_interpolationIDW_interpolationIDW` | interpolationIDW | [root_spatialanalyst_datasets_interpolation_interpolationIDW_interpolationIDW.md](root_spatialanalyst_datasets_interpolation_interpolationIDW_interpolationIDW.md) |
| 33 | `root_spatialanalyst_datasets_interpolation_interpolationIDW_interpolationIDWResult` | interpolationIDWResult | [root_spatialanalyst_datasets_interpolation_interpolationIDW_interpolationIDWResult.md](root_spatialanalyst_datasets_interpolation_interpolationIDW_interpolationIDWResult.md) |
| 34 | `root_spatialanalyst_datasets_interpolation_interpolationKriging_interpolationKriging` | interpolationKriging | [root_spatialanalyst_datasets_interpolation_interpolationKriging_interpolationKriging.md](root_spatialanalyst_datasets_interpolation_interpolationKriging_interpolationKriging.md) |
| 35 | `root_spatialanalyst_datasets_interpolation_interpolationKriging_interpolationKrigingResult` | interpolationKrigingResult | [root_spatialanalyst_datasets_interpolation_interpolationKriging_interpolationKrigingResult.md](root_spatialanalyst_datasets_interpolation_interpolationKriging_interpolationKrigingResult.md) |
| 36 | `root_spatialanalyst_datasets_interpolation_interpolationRBF_interpolationRBF` | interpolationRBF | [root_spatialanalyst_datasets_interpolation_interpolationRBF_interpolationRBF.md](root_spatialanalyst_datasets_interpolation_interpolationRBF_interpolationRBF.md) |
| 37 | `root_spatialanalyst_datasets_interpolation_interpolationRBF_interpolationRBFResult` | interpolationRBFResult | [root_spatialanalyst_datasets_interpolation_interpolationRBF_interpolationRBFResult.md](root_spatialanalyst_datasets_interpolation_interpolationRBF_interpolationRBFResult.md) |
| 38 | `root_spatialanalyst_datasets_linearReferencing_generateSpatialData` | generateSpatialData | [root_spatialanalyst_datasets_linearReferencing_generateSpatialData.md](root_spatialanalyst_datasets_linearReferencing_generateSpatialData.md) |
| 39 | `root_spatialanalyst_datasets_linearReferencing_linearReferencing` | datasetLinearReferencing | [root_spatialanalyst_datasets_linearReferencing_linearReferencing.md](root_spatialanalyst_datasets_linearReferencing_linearReferencing.md) |
| 40 | `root_spatialanalyst_datasets_linearReferencing_spatialdataResult` | spatialDataResult | [root_spatialanalyst_datasets_linearReferencing_spatialdataResult.md](root_spatialanalyst_datasets_linearReferencing_spatialdataResult.md) |
| 41 | `root_spatialanalyst_datasets_planeProjection_datasetPlaneProjectionResults` | planeProjection | [root_spatialanalyst_datasets_planeProjection_datasetPlaneProjectionResults.md](root_spatialanalyst_datasets_planeProjection_datasetPlaneProjectionResults.md) |
| 42 | `root_spatialanalyst_datasets_section_datasetSectionResults` | section | [root_spatialanalyst_datasets_section_datasetSectionResults.md](root_spatialanalyst_datasets_section_datasetSectionResults.md) |
| 43 | `root_spatialanalyst_datasets_shadowVolume_datasetShadowVolumeResults` | shadowVolume | [root_spatialanalyst_datasets_shadowVolume_datasetShadowVolumeResults.md](root_spatialanalyst_datasets_shadowVolume_datasetShadowVolumeResults.md) |
| 44 | `root_spatialanalyst_datasets_sunlight_datasetsunlightResult` | datasetSunlightResult | [root_spatialanalyst_datasets_sunlight_datasetsunlightResult.md](root_spatialanalyst_datasets_sunlight_datasetsunlightResult.md) |
| 45 | `root_spatialanalyst_datasets_sunlight_sunlight` | sunlight | [root_spatialanalyst_datasets_sunlight_sunlight.md](root_spatialanalyst_datasets_sunlight_sunlight.md) |
| 46 | `root_spatialanalyst_datasets_terraincaCalulation_terrainCalculation` | terrainCalculation | [root_spatialanalyst_datasets_terraincaCalulation_terrainCalculation.md](root_spatialanalyst_datasets_terraincaCalulation_terrainCalculation.md) |
| 47 | `root_spatialanalyst_geometry_geometry` | geometry | [root_spatialanalyst_geometry_geometry.md](root_spatialanalyst_geometry_geometry.md) |
| 48 | `root_spatialanalyst_geometry_geometryBufferResults_geometryBufferResult` | geometryBufferResult | [root_spatialanalyst_geometry_geometryBufferResults_geometryBufferResult.md](root_spatialanalyst_geometry_geometryBufferResults_geometryBufferResult.md) |
| 49 | `root_spatialanalyst_geometry_geometryBufferResults_geometryBufferResults` | geometryBufferResults | [root_spatialanalyst_geometry_geometryBufferResults_geometryBufferResults.md](root_spatialanalyst_geometry_geometryBufferResults_geometryBufferResults.md) |
| 50 | `root_spatialanalyst_geometry_geometryIsolineResults_geometryIsolineResult` | geometryIsolineResult | [root_spatialanalyst_geometry_geometryIsolineResults_geometryIsolineResult.md](root_spatialanalyst_geometry_geometryIsolineResults_geometryIsolineResult.md) |
| 51 | `root_spatialanalyst_geometry_geometryIsolineResults_geometryIsolineResults` | geometryIsolineResults | [root_spatialanalyst_geometry_geometryIsolineResults_geometryIsolineResults.md](root_spatialanalyst_geometry_geometryIsolineResults_geometryIsolineResults.md) |
| 52 | `root_spatialanalyst_geometry_geometryIsoregionResults_geometryIsoregionResult` | geometryIsoregionResult | [root_spatialanalyst_geometry_geometryIsoregionResults_geometryIsoregionResult.md](root_spatialanalyst_geometry_geometryIsoregionResults_geometryIsoregionResult.md) |
| 53 | `root_spatialanalyst_geometry_geometryIsoregionResults_geometryIsoregionResults` | geometryIsoregionResults | [root_spatialanalyst_geometry_geometryIsoregionResults_geometryIsoregionResults.md](root_spatialanalyst_geometry_geometryIsoregionResults_geometryIsoregionResults.md) |
| 54 | `root_spatialanalyst_spatialanalyst` | spatialanalyst | [root_spatialanalyst_spatialanalyst.md](root_spatialanalyst_spatialanalyst.md) |

## root/traffictransferanalyst - Traffic Transfer Analysis

**5 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_traffictransferanalyst_trafficTransferAnalyst` | trafficTransferAnalyst | [root_traffictransferanalyst_trafficTransferAnalyst.md](root_traffictransferanalyst_trafficTransferAnalyst.md) |
| 2 | `root_traffictransferanalyst_transfernetwork_stops_stops` | transferStops | [root_traffictransferanalyst_transfernetwork_stops_stops.md](root_traffictransferanalyst_transfernetwork_stops_stops.md) |
| 3 | `root_traffictransferanalyst_transfernetwork_transferNetwork` | transferNetwork | [root_traffictransferanalyst_transfernetwork_transferNetwork.md](root_traffictransferanalyst_transfernetwork_transferNetwork.md) |
| 4 | `root_traffictransferanalyst_transfernetwork_transferPath` | transferPath | [root_traffictransferanalyst_transfernetwork_transferPath.md](root_traffictransferanalyst_transfernetwork_transferPath.md) |
| 5 | `root_traffictransferanalyst_transfernetwork_transferSolutions` | transferSolutions | [root_traffictransferanalyst_transfernetwork_transferSolutions.md](root_traffictransferanalyst_transfernetwork_transferSolutions.md) |

## root/vectortile - Vector Tile

**6 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_vectortile_map_fonts` | fonts | [root_vectortile_map_fonts.md](root_vectortile_map_fonts.md) |
| 2 | `root_vectortile_map_map` | map | [root_vectortile_map_map.md](root_vectortile_map_map.md) |
| 3 | `root_vectortile_map_sprites` | sprites | [root_vectortile_map_sprites.md](root_vectortile_map_sprites.md) |
| 4 | `root_vectortile_map_style` | style | [root_vectortile_map_style.md](root_vectortile_map_style.md) |
| 5 | `root_vectortile_map_tiles` | tiles | [root_vectortile_map_tiles.md](root_vectortile_map_tiles.md) |
| 6 | `root_vectortile_vectortile` | vectorTile | [root_vectortile_vectortile.md](root_vectortile_vectortile.md) |

## root/webprinting - Web Printing

**2 pages**

| # | Original URL Path | Title | Markdown File |
|---|-------------------|-------|---------------|
| 1 | `root_webprinting_v1` | v1 | [root_webprinting_v1.md](root_webprinting_v1.md) |
| 2 | `root_webprinting_webprinting` | webPrinting | [root_webprinting_webprinting.md](root_webprinting_webprinting.md) |

---

*Documentation collected on 2026-06-06 from SuperMap iServer 1201 online help.*