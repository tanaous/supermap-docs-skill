# SuperMap iClient3D for WebGL/WebGPU - Documentation Archive

> **Date Collected:** 2026-06-06
> **Source:** https://iserver.supermap.io/iserver/iClient/for3D/webgl/
> **Total Pages:** 731 API class pages + 4 guides + 1 examples config + 2 topic docs = **738 pages**
> **Total Size:** ~52 MB

---

## Table of Contents

1. [API Reference (731 classes)](#api-reference)
2. [Development Guide](#development-guide)
3. [Introduction & Modules](#introduction--modules)
4. [WebGPU Guide](#webgpu-guide)
5. [Downloads](#downloads)
6. [Examples (229 examples)](#examples)
7. [Topic Documentation](#topic-documentation)
8. [Key Topics Covered](#key-topics-covered)

---

## API Reference

**Location:** `api/`
**Source:** `https://iserver.supermap.io/iserver/iClient/for3D/webgl/en/docs/Documentation/`
**Total classes:** 731
**Format:** JSDoc-generated HTML (JSDoc 3.6.11)

### Complete Class List (731 classes)

#### Scene & Viewer
- `Viewer` - Main 3D globe viewer widget
- `Scene` - 3D scene management
- `Camera` - Camera control and navigation
- `ScreenSpaceCameraController` - Mouse/touch camera control
- `SceneMode` - 2D/2.5D/3D scene mode enum
- `SceneTransforms` - Coordinate transformations
- `Globe` - Globe surface management
- `Fog` - Atmospheric fog settings
- `SkyAtmosphere` - Sky atmosphere rendering
- `SkyBox` - Sky box background
- `Sun` - Sun position and lighting
- `Moon` - Moon position and rendering
- `Context` - WebGL rendering context
- `ContextType` - WebGL vs WebGPU context type
- `FrameRateMonitor` - FPS monitoring
- `PerformanceWatchdog` - Performance monitoring

#### Layer Types
- `S3MTilesLayer` - S3M (Spatial 3D Model) tile layer
- `S3MGroupLayer` - S3M group layer
- `S3MTilesEditor` - S3M tiles editor
- `ImageryLayer` - Imagery overlay layer
- `ImageryLayerCollection` - Collection of imagery layers
- `DynamicLayer3D` - Dynamic 3D layer
- `FieldLayer3D` - 3D field layer
- `VectorTilesLayer` - MVT vector tiles layer
- `VectorTilesMap` - MVT map management
- `VectorTilesMapSetting` - MVT settings
- `InstanceLayer` - Instance-based layer
- `GridLayer` - Grid overlay layer
- `SignLayer` - Sign/marker layer
- `PlottingLayer` - Dynamic plotting layer
- `PlotAnimationLayer` - Plot animation layer
- `PlotLayers` - Plot layers collection
- `EffectLayers` - Effect layers
- `VoxelGridLayer3D` - 3D voxel grid layer
- `I3SLayer` - I3S (Indexed 3D Scene) layer
- `CustomDataSource` - Custom data source
- `CzmlDataSource` - CZML data source
- `GeoJsonDataSource` - GeoJSON data source
- `KmlDataSource` - KML data source
- `DataSource` - Base data source
- `DataSourceCollection` - Data source collection
- `DataSourceDisplay` - Data source display

#### Terrain Providers
- `CesiumTerrainProvider` - Cesium terrain provider
- `SuperMapTerrainProvider` - SuperMap terrain provider
- `SCTTerrainProvider` - SCT terrain provider
- `TerrainProvider` - Base terrain provider
- `TerrainData` - Terrain data interface
- `HeightmapTerrainData` - Heightmap terrain data
- `QuantizedMeshTerrainData` - Quantized mesh terrain data
- `EllipsoidTerrainProvider` - Ellipsoid terrain
- `ArcGISTiledElevationTerrainProvider` - ArcGIS elevation terrain
- `GoogleEarthEnterpriseTerrainProvider` - Google Earth terrain
- `GoogleEarthEnterpriseTerrainData` - Google Earth terrain data
- `VRTheWorldTerrainProvider` - VR The World terrain
- `TiandituTerrainProvider` - Tianditu terrain provider

#### Imagery Providers
- `SuperMapImageryProvider` - SuperMap imagery provider
- `ImageryProvider` - Base imagery provider
- `BingMapsImageryProvider` - Bing Maps imagery
- `TiandituImageryProvider` - Tianditu imagery
- `TiandituAnnotationProvider` - Tianditu annotation
- `ArcGisMapServerImageryProvider` - ArcGIS Map Server imagery
- `SingleTileImageryProvider` - Single tile imagery
- `UrlTemplateImageryProvider` - URL template imagery
- `WebMapServiceImageryProvider` - WMS imagery
- `WebMapTileServiceImageryProvider` - WMTS imagery
- `MapboxImageryProvider` - Mapbox imagery
- `GoogleEarthImageryProvider` - Google Earth imagery
- `GoogleEarthEnterpriseImageryProvider` - Google Earth Enterprise imagery
- `GoogleEarthEnterpriseMapsProvider` - Google Earth Enterprise maps
- `GridImageryProvider` - Grid imagery
- `TileCoordinatesImageryProvider` - Tile coordinates display
- `I3SDataProvider` - I3S data provider
- `TimeDynamicImagery` - Time-dynamic imagery
- `OpenStreetMapImageryProvider` (factory: `createOpenStreetMapImageryProvider`)

#### Camera & Navigation
- `Camera` - Camera class
- `CameraEventAggregator` - Camera event aggregator
- `CameraEventType` - Camera event types
- `ScreenSpaceCameraController` - Screen-space camera control
- `HeadingPitchRange` - Heading/pitch/range offset
- `HeadingPitchRoll` - Heading/pitch/roll orientation
- `MapMode2D` - 2D map mode
- `SceneMode` - Scene mode (2D/Columbus/3D)
- `HomeButton` / `HomeButtonViewModel` - Reset camera to home
- `NavigationHelpButton` / `NavigationHelpButtonViewModel` - Navigation help
- `VRButton` / `VRButtonViewModel` - VR mode button
- `FullscreenButton` / `FullscreenButtonViewModel` - Fullscreen button
- `Geocoder` / `GeocoderViewModel` - Place search/geocoding
- `FlyManager` - Fly management
- `MFlyManager` - Multi-route fly management
- `PipAutomaticRoamManager` - PIP automatic roam
- `QuickPosition` / `QuickPositionManager` - Quick position bookmark
- `RoamState` - Roam state
- `GoAnimation` - Go-to animation
- `FlyInterpolationMode` - Fly interpolation mode
- `MFlyInterpolationMode` - Multi-route fly interpolation
- `MFlyStatus` - Multi-route fly status

#### Spatial Analysis (GPU-based)
- `ViewShed3D` - 3D viewshed analysis
- `MultiViewShed3D` - Multi-point viewshed analysis
- `Sightline` - Sightline/visibility analysis
- `SightLineAnalysis` - Sightline analysis manager
- `Skyline` - Skyline analysis
- `ShadowQueryPoints` - Shadow analysis query
- `ViewDome` - View dome analysis
- `Profile` - Profile/cross-section analysis
- `ShadowWidget` - Shadow visualization widget
- `ShadowType` - Shadow type enum
- `ShadowMode` - Shadow mode enum
- `ViewDomeType` - View dome type enum
- `SunlightAnalysis` - Sunlight analysis
- `SunLightAnalysisMode` - Sunlight analysis mode
- `TerrainSlopeAnalysis` - Terrain slope analysis
- `BuildContourAnalyst` - Build contour analysis
- `SuperMapContourAnalyst` - SuperMap contour analysis
- `FloodAnalysis3D` - 3D flood analysis
- `SpatialQuery3D` - 3D spatial query (GPU)
- `SolidModelsProfile` - Solid models profile
- `Volume` - Volume calculation

#### Measurement
- `MeasureHandler` - Measurement handler (distance, area, height)
- `MeasureWidget` - Measurement widget UI
- `MeasureMode` - Measurement mode enum
- `Measurement` - Measurement utility
- `SlopeSetting` - Slope measurement settings
- `SlopeSettingEnum` - Slope setting enum

#### Drawing & Editing
- `DrawHandler` - Drawing handler (point, line, polygon)
- `DrawGeometryWidget` - Drawing geometry widget
- `DrawMode` - Drawing mode enum
- `EditHandler` - Edit handler
- `ModelEditor` - 3D model editor
- `BoxEditor` - Bounding box editor
- `PlotDrawControl` - Plot draw control
- `PlotEditControl` - Plot edit control
- `PlotEditMode` - Plot edit mode enum

#### Entity API
- `Entity` - Core entity
- `EntityCollection` - Entity collection
- `EntityCluster` - Entity clustering
- `EntityView` - Entity view
- `BillboardGraphics` - Billboard entity graphics
- `BoxGraphics` - Box entity graphics
- `CorridorGraphics` - Corridor entity graphics
- `CylinderGraphics` - Cylinder entity graphics
- `EllipseGraphics` - Ellipse entity graphics
- `EllipsoidGraphics` - Ellipsoid entity graphics
- `LabelGraphics` - Label entity graphics
- `ModelGraphics` - Model (glTF) entity graphics
- `PathGraphics` - Path entity graphics
- `PlaneGraphics` - Plane entity graphics
- `PointGraphics` - Point entity graphics
- `PolygonGraphics` - Polygon entity graphics
- `PolylineGraphics` - Polyline entity graphics
- `PolylineVolumeGraphics` - Polyline volume entity graphics
- `RectangleGraphics` - Rectangle entity graphics
- `WallGraphics` - Wall entity graphics

#### Primitive API
- `Primitive` - Core primitive
- `PrimitiveCollection` - Primitive collection
- `GroundPrimitive` - Ground-clamped primitive
- `GroundPolylinePrimitive` - Ground-clamped polyline
- `ParticleSystem` - Particle system primitive
- `Model` - 3D model (glTF) primitive
- `ModelAnimation` - Model animation
- `ModelAnimationCollection` - Model animation collection
- `ModelAnimationLoop` - Model animation loop
- `ModelMaterial` - Model material
- `ModelMesh` - Model mesh
- `ModelNode` - Model node
- `BillboardCollection` - Billboard collection
- `LabelCollection` - Label collection
- `PointPrimitiveCollection` - Point primitive collection
- `PolylineCollection` - Polyline collection
- `Cesium3DTileset` - 3D Tiles tileset
- `Cesium3DTile` - Single 3D tile
- `Cesium3DTileStyle` - 3D Tiles style
- `Cesium3DTilesInspector` / `Cesium3DTilesInspectorViewModel` - 3D Tiles inspector
- `CloudBox` - Volumetric cloud box
- `VolumetricClouds` - Volumetric clouds
- `VolumetricCloudsQuality` - Cloud quality enum
- `ViewportQuad` - Viewport quad primitive
- `DebugCameraPrimitive` - Debug camera visualization
- `DebugModelMatrixPrimitive` - Debug model matrix

#### Geometry & Math
- `Cartesian2`, `Cartesian3`, `Cartesian4` - Cartesian coordinates
- `Cartographic` - Geographic coordinates (longitude, latitude, height)
- `Rectangle` - Geographic rectangle
- `Quaternion` - Quaternion math
- `Matrix2`, `Matrix3`, `Matrix4` - Matrix math
- `Color` - Color class
- `Math` - Math utilities
- `Ellipsoid` - Ellipsoid model
- `EllipsoidGeodesic` - Geodesic on ellipsoid
- `EllipsoidTangentPlane` - Tangent plane
- `BoundingSphere` - Bounding sphere
- `BoundingRectangle` - Bounding rectangle
- `OrientedBoundingBox` - Oriented bounding box
- `AxisAlignedBoundingBox` - Axis-aligned bounding box
- `CullingVolume` - View frustum culling
- `Occluder` - Occlusion culling
- `Plane` - Plane math
- `Ray` - Ray math
- `Spherical` - Spherical coordinates
- `Intersect` - Intersection tests
- `Intersections2D` - 2D intersection tests
- `IntersectionTests` - Intersection tests
- `Transforms` - Coordinate transform utilities
- `TranslationRotationScale` - TRS transform

#### Geometry Primitives (for Primitive API)
- `BoxGeometry`, `BoxOutlineGeometry`
- `CircleGeometry`, `CircleOutlineGeometry`
- `CorridorGeometry`, `CorridorOutlineGeometry`
- `CylinderGeometry`, `CylinderOutlineGeometry`
- `EllipseGeometry`, `EllipseOutlineGeometry`
- `EllipsoidGeometry`, `EllipsoidOutlineGeometry`
- `FrustumGeometry`, `FrustumOutlineGeometry`
- `PolygonGeometry`, `PolygonOutlineGeometry`
- `PolylineGeometry`, `SimplePolylineGeometry`
- `PolylineVolumeGeometry`, `PolylineVolumeOutlineGeometry`
- `RectangleGeometry`, `RectangleOutlineGeometry`
- `SphereGeometry`, `SphereOutlineGeometry`
- `WallGeometry`, `WallOutlineGeometry`

#### Geometry Updaters (for Entity dynamic geometry)
- `BoxGeometryUpdater`, `CylinderGeometryUpdater`, `CorridorGeometryUpdater`
- `EllipseGeometryUpdater`, `EllipsoidGeometryUpdater`
- `PolygonGeometryUpdater`, `PolylineGeometryUpdater`
- `PolylineVolumeGeometryUpdater`, `RectangleGeometryUpdater`, `WallGeometryUpdater`
- `DynamicGeometryUpdater` - Base dynamic geometry updater

#### Visualizers (Entity-to-Primitive bridge)
- `BillboardVisualizer`, `LabelVisualizer`, `ModelVisualizer`
- `PointVisualizer`, `PathVisualizer`, `GeometryVisualizer`
- `Visualizer` - Base visualizer

#### Appearance & Material
- `Appearance` - Base appearance
- `MaterialAppearance` - Material-based appearance
- `EllipsoidSurfaceAppearance` - Ellipsoid surface appearance
- `PerInstanceColorAppearance` - Per-instance color
- `PolylineMaterialAppearance` - Polyline material appearance
- `PolylineColorAppearance` - Polyline color appearance
- `DebugAppearance` - Debug appearance
- `Material` - Material definition
- `MaterialProperty` - Material property (time-varying)
- `ColorMaterialProperty` - Solid color material
- `CheckerboardMaterialProperty` - Checkerboard material
- `StripeMaterialProperty` - Stripe material
- `GridMaterialProperty` - Grid material
- `ImageMaterialProperty` - Image texture material
- `PolylineArrowMaterialProperty` - Arrow polyline material
- `PolylineDashMaterialProperty` - Dashed polyline material
- `PolylineDynamicMaterialProperty` - Dynamic polyline material
- `PolylineGlowMaterialProperty` - Glow polyline material
- `PolylineOutlineMaterialProperty` - Outline polyline material
- `PolylineTrailMaterialProperty` - Trail polyline material
- `CompositeMaterialProperty` - Composite material

#### Lighting & Shadows
- `LightSource` - Base light source
- `DirectionalLight` - Directional/parallel light
- `PointLight` - Point light
- `SpotLight` - Spotlight
- `SunLight` - Sun light source
- `HemisphereLight` - Hemisphere ambient light
- `LightSourceType` - Light source type enum
- `ShadowMap` - Shadow map management

#### Effects
- `BloomEffect` - Bloom glow effect
- `S3MBloomEffect` - S3M-specific bloom
- `ScanEffect` - Scan line effect
- `ScanEffectMode` - Scan effect mode enum
- `GroundEffect` - Ground effect
- `TrajectoryEffect` - Trajectory effect
- `S3MPolylineEffect` - S3M polyline effect
- `DepthOfFieldEffect` - Depth of field effect
- `LineRelationEffect` - Line relation effect
- `ParticleVelocityFieldEffect` - Particle velocity field
- `ColorCorrection` - Color correction (saturation, brightness, contrast, hue)
- `PostProcessStage` - Post-process stage
- `PostProcessStageCollection` - Post-process stage collection

#### 3D Plotting (Military/Defense)
- `Plotting` - Core plotting module
- `GeoGraphicObject` - Geographic graphic object
- `GeoBillboard` - Billboard plot object
- `GeoBox` - Box plot object
- `GeoCircle3D` - 3D circle plot
- `GeoCone` - Cone plot object
- `GeoCylinder` - Cylinder plot object
- `GeoEllipsoid` - Ellipsoid plot object
- `GeoLine3D` - 3D line plot
- `GeoModel3D` - 3D model plot
- `GeoPoint3D` - 3D point plot
- `GeoPolyline` - Polyline plot
- `GeoRegion3D` - 3D region plot
- `GeoSphere` - Sphere plot object
- `PlotPoint3D` - Plot 3D point
- `PlotRadarBase` - Radar plot base
- `PlotCustomRadar` - Custom radar
- `PlotMechanicalRadar` - Mechanical radar
- `PlotParameterRadar` - Parameter radar
- `PlotPieRadar` - Pie radar
- `PlotScanRadar` - Scan radar
- `PlotRotateRadar` - Rotate radar
- `PlotWarningRadar` - Warning radar
- `PlotRadarManager` - Radar manager
- `PlotFlyManager` - Plot fly manager
- `PlotEventManager` - Plot event manager
- `PlotMapManager` - Plot map manager
- `PlotGeoEffectBase` - Plot geo effect base
- `PlotGeoEffectToolKit` - Plot geo effect toolkit
- `PlotUtilityTools` - Plot utility tools
- `PlotDrawControl` - Plot draw control
- `PlotEditControl` - Plot edit control
- `PlotEditMode` - Plot edit mode

#### S3M Layer Features
- `S3MInstance` - S3M instance object
- `S3MInstanceCollection` - S3M instance collection
- `S3MCompressType` - S3M compression type
- `S3MPixelFormat` - S3M pixel format
- `S3MFieldType` - S3M field type
- `S3MCategoryFieldInfo` - S3M category field info
- `S3MTilesLabelStyle` - S3M label style
- `HypsometricSetting` - Hypsometric/tinting settings
- `HypsometricSettingEnum` - Hypsometric setting enum
- `ClipBuild` - Clipping build
- `ClippingPlane` - Clipping plane
- `ClippingType` - Clipping type enum
- `ClipPlaneMode` - Clip plane mode
- `TSClipPlane` - TS clip plane
- `FlattenRegion` - Flatten region
- `ModifyRegionMode` - Modify region mode
- `Facade` - Facade rendering
- `Style3D` - 3D style
- `ColorBlendMode` - Color blend mode
- `MixColorType` - Mix color type
- `WireFrameType` - Wireframe type
- `ColorModulationInfo` - Color modulation info
- `InstancedType` - Instanced type enum
- `PBRMaterialType` - PBR material type
- `RANGEMODE` - Range mode for sub-object filtering
- `LoadingPriorityMode` - Loading priority mode
- `CategoryVisibleMode` - Category visibility mode

#### Query & Selection
- `SpatialQuery3D` - 3D spatial query
- `RectQueryHandler` - Rectangle query handler
- `BIMInfoClickQueryHandler` - BIM info click query
- `SelectionIndicator` / `SelectionIndicatorViewModel` - Selection indicator
- `InfoBox` / `InfoBoxViewModel` - Information popup box

#### Widgets
- `BaseLayerPicker` / `BaseLayerPickerViewModel` - Base layer picker
- `SceneModePicker` / `SceneModePickerViewModel` - Scene mode picker
- `ProjectionPicker` / `ProjectionPickerViewModel` - Projection picker
- `Timeline` - Timeline widget
- `Clock` / `ClockViewModel` - Clock/time control
- `Animation` / `AnimationViewModel` - Animation widget
- `ToggleButtonViewModel` - Toggle button
- `Fullscreen` - Fullscreen management
- `LayerListWidget` - Layer list widget
- `MeasureWidget` - Measurement widget
- `ShadowWidget` - Shadow widget
- `ReactiveWidget` / `ReactiveWidgetUI` - Reactive widget base
- `BasemapWidget` - Basemap widget
- `DrawGeometryWidget` - Draw geometry widget
- `CreditDisplay` - Credit/attribution display

#### Properties (Time-varying values)
- `Property` - Base property
- `ConstantProperty` - Constant value property
- `CallbackProperty` - Callback-based property
- `SampledProperty` - Time-sampled property
- `CompositeProperty` - Composite/multi-phase property
- `ReferenceProperty` - Reference to another property
- `PositionProperty` - Position property
- `ConstantPositionProperty` - Constant position
- `SampledPositionProperty` - Sampled position
- `CompositePositionProperty` - Composite position
- `TimeIntervalCollectionPositionProperty` - Time interval position
- `VelocityOrientationProperty` - Velocity-based orientation
- `VelocityVectorProperty` - Velocity vector
- `NodeTransformationProperty` - Node transformation
- `PropertyArray` - Property array
- `PositionPropertyArray` - Position property array
- `PropertyBag` - Property bag

#### Time & Animation
- `JulianDate` - Julian date
- `GregorianDate` - Gregorian date
- `TimeInterval` - Time interval
- `TimeIntervalCollection` - Time interval collection
- `Clock` - Clock
- `ClockRange` - Clock range enum
- `ClockStep` - Clock step enum
- `TimeStandard` - Time standard enum
- `Iso8601` - ISO 8601 date format
- `Animation` - Animation widget
- `DataSourceClock` - Data source clock settings

#### Projection & Tiling
- `GeographicProjection` - Geographic/WGS84 projection
- `WebMercatorProjection` - Web Mercator projection
- `GeographicTilingScheme` - Geographic tiling scheme
- `WebMercatorTilingScheme` - Web Mercator tiling scheme
- `TilingScheme` - Base tiling scheme
- `MapProjection` - Map projection
- `CustomProjection` - Custom projection
- `ProjectionName` - Projection name enum
- `ProjectionImage` - Projection image/video placement

#### Multi-Viewport
- `MultiViewportMode` - Multi-viewport mode enum

#### WebGL/GPU Infrastructure
- `Buffer` - WebGL buffer
- `VertexArray` - Vertex array object
- `VertexArrayFacade` - Vertex array facade
- `Texture` - Texture
- `CubeMap` / `CubeMapFace` - Cube map texture
- `DDSTexture` / `DDSTextureManager` - DDS texture
- `Framebuffer` - Framebuffer
- `RenderState` - Render state
- `BlendingState` - Blending state
- `BlendEquation` - Blend equation enum
- `BlendFunction` - Blend function enum
- `BlendOption` - Blend option enum
- `CullFace` - Cull face enum
- `DepthFunction` - Depth function enum
- `StencilFunction` - Stencil function enum
- `StencilOperation` - Stencil operation enum
- `PassState` - Pass state
- `ClearCommand` - Clear command
- `Command` - Render command
- `ComputeCommand` - Compute command
- `ShaderProgram` - Shader program
- `ShaderSource` - Shader source
- `ShaderCache` - Shader cache
- `UniformState` - Uniform state
- `VertexFormat` - Vertex format
- `ComponentDatatype` - Component data type enum
- `IndexDatatype` - Index data type enum
- `PrimitiveType` - Primitive type enum
- `PixelFormat` - Pixel format enum
- `TextureWrap` - Texture wrap enum
- `WindingOrder` - Winding order enum
- `WebGLConstants` - WebGL constants
- `ContextLimits` - Context limits
- `BufferManager` - Buffer manager
- `MemoryManager` - Memory manager

#### Utility Functions
- `defined`, `clone`, `combine`, `defaultValue`
- `createGuid`, `isArray`, `isLeapYear`
- `binarySearch`, `mergeSort`, `subdivideArray`
- `pointInsideTriangle`, `barycentricCoordinates`
- `getAbsoluteUri`, `getBaseUri`, `getExtensionFromUri`, `getFilenameFromUri`
- `objectToQuery`, `queryToObject`, `formatError`
- `getTimestamp`, `getImagePixels`
- `destroyObject`, `freezeRenderState`
- `createCommand`, `requestAnimationFrame`, `cancelAnimationFrame`
- `sampleTerrain`, `sampleTerrainMostDetailed`
- `loadArrayBuffer`, `loadBlob`, `loadCRN`, `loadCubeMap`, `loadImage`, `loadImageViaBlob`
- `loadJson`, `loadJsonp`, `loadKTX`, `loadText`, `loadWithXhr`, `loadXML`

#### Data Structures
- `AssociativeArray` - Associative array
- `Queue` - Queue data structure

#### Events & Input
- `Event` - Custom event
- `EventHelper` - Event helper
- `ScreenSpaceEventHandler` - Screen-space event handler
- `ScreenSpaceEventType` - Screen-space event type enum
- `KeyboardEventModifier` - Keyboard modifier enum

#### Resource Loading
- `Resource` - Resource loading
- `Request` - HTTP request
- `RequestScheduler` - Request scheduler
- `PackingRequest` - Packing request
- `RequestErrorEvent` - Request error event
- `RequestState` - Request state enum
- `RequestType` - Request type enum
- `TrustedServers` - Trusted server list
- `DefaultProxy` - Default proxy settings
- `throttleRequestByServer` - Throttle requests
- `Credit` - Credit/attribution

#### 3D Tiles & I3S
- `Cesium3DTileset` - 3D Tiles tileset
- `Cesium3DTile` - 3D tile
- `Cesium3DTileStyle` - 3D Tiles style
- `Cesium3DTilesInspector` - 3D Tiles inspector
- `I3SDataProvider` - I3S data provider
- `I3SLayer` - I3S layer
- `I3SFeature` - I3S feature
- `I3SField` - I3S field
- `I3SGeometry` - I3S geometry
- `I3SNode.AttributeFilter` - I3S attribute filter
- `I3SStatistics` - I3S statistics
- `I3SSublayer` - I3S sublayer
- `I3SSymbology` - I3S symbology

#### Point Cloud
- `PointCloudShading` - Point cloud shading
- `PointCloudClassificationInfo` - Point cloud classification info

#### Symbols & Markers
- `SymbolAnnotation` - Symbol annotation
- `SymbolDot` - Symbol dot
- `SymbolLib` - Symbol library
- `SymbolLibManager` - Symbol library manager
- `SymbolStyle` - Symbol style
- `SymbolTextStyle` - Symbol text style
- `SymbolType` - Symbol type enum
- `PinBuilder` - Pin/marker builder

#### Sign Layer
- `SignEffectType` - Sign effect type enum
- `SignParmMode` - Sign parameter mode enum
- `SignRenderMode` - Sign render mode enum

#### Other
- `AnalysisTool` - Analysis tool base
- `BaseMapEnums` - Base map enums
- `BingMapsApi` - Bing Maps API key
- `BingMapsStyle` - Bing Maps style enum
- `BingMapsGeocoderService` - Bing geocoder
- `CartographicGeocoderService` - Cartographic geocoder
- `GeocoderService` - Geocoder service base
- `GoogleEarthEnterpriseMetadata` - Google Earth metadata
- `LabelStyle` - Label style
- `FillStyle` / `FillGradientMode` - Fill style enums
- `ClassificationType` - Classification type
- `ColorGradientType` / `ColorStyle` / `ColorTable` / `ColorTransferFunction` - Color utilities
- `ConditionsExpression` - Condition expression
- `ConfigData` / `configManager` - Configuration management
- `CornerType` - Corner type enum
- `DistanceDisplayCondition` - Distance display condition
- `DistanceDisplayConditionGeometryInstanceAttribute` - Distance display geometry instance attribute
- `DotMode` - Dot mode enum
- `EasingFunction` - Easing function
- `Expression` - Expression evaluator
- `ExtrapolationType` - Extrapolation type enum
- `Feature` / `FeatureDataset` - Feature detection
- `FlowDirectionDisplayMode` - Flow direction display mode
- `ClampMode` - Clamp mode enum
- `ControlMode` - Control mode enum

#### Enumerations & Constants
- `ArcType` - Arc type enum
- `BingMapsStyle` - Bing Maps style
- `BillboardMode` - Billboard mode
- `BlendEquation` - Blend equation
- `BlendFunction` - Blend function
- `BlendOption` - Blend option
- `CameraEventType` - Camera event types
- `CategoryVisibleMode` - Category visibility mode
- `ClassificationType` - Classification type
- `ClipPlaneMode` - Clip plane mode
- `ClippingType` - Clipping type
- `ClockRange` - Clock range
- `ClockStep` - Clock step
- `ColorBlendMode` - Color blend mode
- `ComponentDatatype` - Component data type
- `ContextType` - Context type (WebGL/WebGPU)
- `CornerType` - Corner type
- `CredentialType` - Credential type
- `CubeMapFace` - Cube map face
- `CullFace` - Cull face
- `DepthFunction` - Depth function
- `DotMode` - Dot mode
- `DrawMode` - Draw mode
- `FillGradientMode` - Fill gradient mode
- `FillStyle` - Fill style
- `HorizontalOrigin` - Horizontal origin
- `IndexDatatype` - Index data type
- `KeyboardEventModifier` - Keyboard modifier
- `LoadingPriorityMode` - Load priority mode
- `MixColorType` - Mix color type
- `MultiViewportMode` - Multi-viewport mode
- `ParticleMode` - Particle mode
- `PBRMaterialType` - PBR material type
- `PixelFormat` - Pixel format
- `PrimitiveType` - Primitive type
- `RANGEMODE` - Range mode
- `RequestState` - Request state
- `RequestType` - Request type
- `RotateDirection` - Rotate direction
- `RotationOrigin` - Rotation origin
- `ScanEffectMode` - Scan effect mode
- `SceneMode` - Scene mode (2D/2.5D/3D)
- `ScreenSpaceEventType` - Screen space event type
- `ShadowMode` - Shadow mode
- `ShadowType` - Shadow type
- `StencilFunction` / `StencilOperation` - Stencil enums
- `TextureWrap` - Texture wrap
- `TimeStandard` - Time standard
- `VerticalOrigin` - Vertical origin
- `ViewDomeType` - View dome type
- `WindingOrder` - Winding order
- `WireFrameType` - Wireframe type

#### Vehicles/Routes
- `Route` - Route
- `RouteCollection` - Route collection
- `RouteStop` - Route stop
- `MRoute` - Multi-route
- `MRouteCollection` - Multi-route collection
- `MRouteStop` - Multi-route stop

#### Additional
- `AssociativeArray` - Associative array
- `BaseParticleSystem` - Base particle system
- `BuildingDoors` - Building doors
- `CatmullRomSpline` - Catmull-Rom spline
- `HermiteSpline` - Hermite spline
- `LinearSpline` - Linear spline
- `QuaternionSpline` - Quaternion spline
- `Spline` - Base spline
- `CubicRealPolynomial` / `QuadraticRealPolynomial` / `QuarticRealPolynomial` - Polynomial math
- `LagrangePolynomialApproximation` / `HermitePolynomialApproximation` / `LinearApproximation` - Approximation
- `InterpolationAlgorithm` / `InterpolationType` - Interpolation
- `LeapSecond` - Leap second data
- `Packable` / `PackableForInterpolation` - Serialization
- `PiecewiseFunction` - Piecewise function
- `Simon1994PlanetaryPositions` - Planetary positions
- `TridiagonalSystemSolver` - Tridiagonal system solver
- `UnderGlobe` - Under-globe rendering
- `ViewShedAnalysis` - Viewshed analysis config
- `WaterMode` / `WaterParameter` / `WaterbodySize` / `WaveStrength` - Water effects
- `VideoSynchronizer` - Video synchronization
- `SMAA` - SMAA antialiasing
- `FeatureDetection` - Feature detection
- `DeveloperError` / `RuntimeError` - Error types
- `getFeatureInfoFormat` - Get feature info format

---

## Development Guide

**Location:** `guides/dev-guide-en.html` (50 KB)
**Source:** `https://iserver.supermap.io/iserver/iClient/for3D/webgl/en/web/introduction/3DforWebGL.html`

### Structure:
1. **Prepare** - Download SDK, Import files (SuperMap3D.js, CSS, dependencies)
2. **Create 3D Scene** - Initialize 3D globe with `new SuperMap3D.Viewer('container')`, set map style (Bing, Tianditu, local images)
3. **Add Layers** - Terrain (SuperMapTerrainProvider, isSct), Imagery (SuperMapImageryProvider), S3M (scene.open / addS3MTilesLayerByScp), MVT (addVectorTilesMap)
4. **Scene Settings** - Color correction (saturation, brightness, contrast, hue), bloom/floodlight effects, multi-viewport (6 modes), scene output/screenshot
5. **Query** - Spatial location query (pickPosition), GPU spatial query (SpatialQuery3D with GeoCone/GeoBox/GeoCylinder/GeoEllipsoid/GeoSphere), attribute query (SQL via SuperMap.REST)
6. **Measurement** - Distance, area, height (MeasureHandler with MeasureMode)
7. **Drawing** - Real-time point/line/polygon drawing (DrawHandler with DrawMode)
8. **3D Spatial Analysis** - Sightline/visibility analysis, Viewshed analysis, Shadow analysis, Skyline analysis (with height-limit bodies)

---

## Introduction & Modules

**Location:** `guides/intro-modules-en.html` (25 KB)
**Source:** `https://iserver.supermap.io/iserver/iClient/for3D/webgl/en/web/introduction/intro_3DWebgl.html`

### Key Features:
- **SuperMap iServer Services:** Map, Data, Measurement, Query, Spatial relationship, Thematic map, Dynamic Plotting, Spatial analysis
- **Other Services:** SuperMap Cloud, OGC (WMS/WFS/WMTS/KML), Third-party (Tianditu)
- **Compatibility:** jQuery 1.6+, SuperMap iClient for JavaScript, proj4js.js

### GPU-Based Modules:
| Module | Description |
|--------|-------------|
| ViewShed3D | 3D Viewshed Analysis |
| ShadowQueryPoints | Shadow Analysis |
| Sightline | Visibility Analysis |
| Skyline | Skyline Analysis |
| ViewDome | Viewdome Analysis |
| Profile | Profile Analysis |
| Globe_SlopeSetting | Terrain Slope and Aspect Analysis |
| S3MTilesLayer_hypsometricSetting | Layer Tinting |
| SpatialQuery3D | 3D Spatial Query |
| DirectionalLight | Parallel Light Source |
| ParticleSystem | Particle System |
| SpotLight | Spotlight |
| PointLight | Point Light |
| Scene_bloomEffect | Ambient Light/Bloom |
| Scene_hdrEnabled | HDR Toggle |
| Scene_scanEffect | Scan Line Effect |
| DynamicLayer3D | Dynamic Layer |
| Globe_setPBRMaterial | Terrain PBR Material |
| CloudBox | Stratus Clouds |
| SkyBox | Skybox |
| ProjectionImage | Video Placement |
| S3MTilesLayer_setPBRMaterial | PBR Material |

### System Requirements:
- **WebGL:** Chrome 90+, Firefox 85+, Opera 95+, Safari 150+, Edge 100+ (Windows/Linux/macOS)
- **WebGPU:** Chrome 113+, Opera 99+, Edge 113+ (Windows 10/11, Linux, macOS); no mobile support yet
- **Hardware:** Core i7 9700+, 16GB+ RAM, GTX 1650/4GB+ (recommended)

---

## WebGPU Guide

**Location:** `guides/HowToUseWebGPU.html` (8.2 KB)
**Source:** `https://iserver.supermap.io/iserver/iClient/for3D/webgl/en/examples/TopicDOC/HowToUseWebGPU.html`

### Migration Steps (WebGL -> WebGPU):
1. **File imports** - Same as WebGL; include `SuperMap3D.js`
2. **Enable WebGPU** - Add `contextOptions: { contextType: SuperMap3D.ContextType.WebGPU }` to Viewer constructor
3. **Async initialization** - Wrap scene setup in `viewer.scenePromise.then(function(scene) { ... })`
4. **Resolution scale** - Set `viewer.resolutionScale = window.devicePixelRatio`
5. **Same API** - All other APIs (terrain, imagery, camera, layers) work identically

---

## Downloads

**Location:** `guides/downloads.html` (9.6 KB)
**Source:** `https://iserver.supermap.io/iserver/iClient/for3D/webgl/en/web/downloads/download1.html`

Package structure:
- `docs/Documentation` - API class reference
- `Build/SuperMap3D/SuperMap3D.js` - Main library
- `Build/SuperMap3D/Widgets/widgets.css` - Default CSS
- `examples/webgl` - WebGL example pages
- `examples/component` - Vue component examples
- Includes S3M tool package, S3M to 3D-Tiles converter

---

## Examples

**Location:** `examples/config.js` (72 KB)
**Source:** `https://iserver.supermap.io/iserver/iClient/for3D/webgl/en/examples/webgl/config.js`

**Total:** 229 examples across 30 categories

### Categories:
1. **Layer** - General layer management
2. **Terrain** - Terrain loading and display
3. **Imagery** - Imagery layers (time-dynamic, color adjustment, 2D overlay, token auth, multi-subdomain)
4. **S3M (Spatial 3D Model)** - Oblique photogrammetry, water effects, CBD, BIM, vector, point cloud, instance, various effects
5. **Vector** - Vector data display
6. **Map (Basemap Online)** - Online basemaps
7. **Data** - Data services
8. **Spatial Analysis** - Server-side spatial analysis
9. **Distributed Analysis** - Distributed processing
10. **Scene** - Scene configuration and management
11. **Flat Scene** - 2D/planar scenes
12. **Camera Controller** - Camera manipulation
13. **Post Effects** - Post-processing effects
14. **Screen Split** - Multi-viewport split screen
15. **Scene Output** - Scene screenshot/export
16. **Layer Structure** - Layer hierarchy/management
17. **View** - View management
18. **Query** - Spatial & attribute queries
19. **Measurement** - Distance, area, height measurement
20. **Analysis** - GPU spatial analysis (viewshed, skyline, shadow, sightline, etc.)
21. **Fly** - Fly-through/roam animations
22. **KML and Model** - KML data and 3D models
23. **Geometry Object** - Geometry primitives
24. **Visualization** - Data visualization (heatmap, etc.)
25. **Echarts Map** - ECharts integration
26. **MapV Map** - MapV integration
27. **Particle** - Particle effects
28. **Polarized Stereo** - Stereo 3D rendering
29. **3D Plotting** - Military/defense plotting
30. **Plotting** - Dynamic plotting

---

## Topic Documentation

**Location:** `topic-docs/`
**Source:** `https://iserver.supermap.io/iserver/iClient/for3D/webgl/en/examples/TopicDOC/`

- `HowToUseWebGPU.html` (8.2 KB) - Complete WebGPU migration guide
- `AboutS3MTiles.html` - S3M tiles overview (JS-rendered, shell only)
- Other topic doc pages are JavaScript-rendered; full content not available via curl

---

## Key Topics Covered

### Scene/Viewer Initialization
- `Viewer` constructor with options (terrain, imagery, shadows, contextOptions for WebGPU)
- `scene.open()` for full scene loading from iServer
- `scene.addS3MTilesLayerByScp()` for selective S3M layer loading
- `scenePromise` for async WebGPU initialization

### Layer Types
- **S3MTilesLayer** - S3M 3D tiles (oblique, BIM, point cloud, vector, instance)
- **ImageryLayer** - Raster imagery overlays
- **VectorTilesLayer/Map** - MVT vector tiles
- **DynamicLayer3D** - Dynamic/animated layers
- **FieldLayer3D** - 3D field visualization
- **VoxelGridLayer3D** - Voxel grid
- **InstanceLayer** - GPU-instanced layers
- **Cesium3DTileset** - 3D Tiles (OGC standard)

### Camera & Navigation
- Perspective and orthographic frustums
- `camera.lookAt()`, `camera.setView()`, `camera.flyTo()`
- `HeadingPitchRange/Roll` for orientation
- Screen-space camera controller
- Fly management (FlyManager, MFlyManager, RoamState)

### Spatial Query
- **SpatialQuery3D** - GPU-accelerated spatial query with GeoCone, GeoBox, GeoCylinder, GeoEllipsoid, GeoSphere
- **RectQueryHandler** - Rectangle-based query
- **pickPosition()** - Screen-to-world coordinate query
- **BIMInfoClickQueryHandler** - BIM model click query
- Attribute query via SuperMap.REST SQL services

### Measurements
- **MeasureHandler** - Distance, area, height (terrain and S3M)
- **MeasureWidget** - UI widget for measurements
- **MeasureMode** - Distance, Area, Height, GroundDistance, GroundArea

### 3D Spatial Analysis (all GPU-accelerated)
- **ViewShed3D** - Viewshed/visibility analysis with visible/invisible area coloring
- **Sightline** - Line-of-sight between two points
- **ShadowQueryPoints** - Shadow rate calculation over time periods
- **Skyline** - Skyline extraction with 2D profile and height-limit bodies
- **ViewDome** - View dome analysis
- **Profile** - Cross-section/profile analysis
- **SunlightAnalysis** - Sunlight exposure analysis
- **TerrainSlopeAnalysis** - Slope and aspect analysis
- **FloodAnalysis3D** - Flood inundation analysis
- **BuildContourAnalyst** - Contour analysis
- **Volume** - Volume calculation

### Drawing & Editing
- **DrawHandler** - Point, Line, Polygon, Polyline drawing
- **DrawMode** - Point, Line, Polyline, Polygon modes
- **S3MTilesEditor** - S3M tiles editing
- **ModelEditor** - 3D model editing
- **EditHandler** - Editing operations
- **PlotDrawControl/PlotEditControl** - Plotting draw/edit

### Effects & Post-Processing
- **BloomEffect** - Bloom/glow with threshold and intensity
- **ScanEffect** - Scan line visualization
- **ColorCorrection** - Saturation, brightness, contrast, hue
- **DepthOfFieldEffect** - Depth of field
- **HDR** - High Dynamic Range rendering
- **SMAA** - Subpixel Morphological Antialiasing
- **TrajectoryEffect, GroundEffect, LineRelationEffect** - Special effects
- **S3MPolylineEffect, S3MBloomEffect** - S3M-specific effects
- **ParticleSystem** - Particle effects

### Lighting
- **DirectionalLight** - Parallel/directional light
- **PointLight** - Omnidirectional point light
- **SpotLight** - Cone spotlight
- **SunLight** - Physically-based sun
- **HemisphereLight** - Ambient hemisphere light
- **ShadowMap** - Shadow mapping
- **scene.addLightSource()** - Dynamic light source management

### Entity & Primitive APIs
- **Entity API** (high-level): Entity, EntityCollection, 15+ Graphics types (Billboard, Box, Corridor, Cylinder, Ellipse, Ellipsoid, Label, Model, Path, Plane, Point, Polygon, Polyline, PolylineVolume, Rectangle, Wall)
- **Primitive API** (low-level): Primitive, PrimitiveCollection, GroundPrimitive, 25+ Geometry types
- **Appearance/Material**: MaterialAppearance, PerInstanceColorAppearance, 10+ MaterialProperty types
- **Properties**: Time-varying values (ConstantProperty, CallbackProperty, SampledProperty, etc.)

### DataSource & Data Loading
- **CzmlDataSource** - CZML time-dynamic data
- **GeoJsonDataSource** - GeoJSON data
- **KmlDataSource** - KML/KMZ data
- **CustomDataSource** - Custom data loading
- **DataSourceCollection** - Multi-source management

### S3M Layer Advanced Features
- Layer tinting/hypsometric coloring (HypsometricSetting)
- Clipping planes (ClippingPlane, TSClipPlane, ClipBuild)
- Model explosion/displacement (setObjsTranslate, setBatchObjsTranslate)
- Selection highlighting (selectedColor, setSelection)
- Instance objects (S3MInstance, S3MInstanceCollection)
- PBR materials (setPBRMaterial)
- Visibility by category (CategoryVisibleMode)
- Loading priority (LoadingPriorityMode)
- Range-based filtering (RANGEMODE)
- Wireframe display (WireFrameType)

### WebGPU Specifics
- `ContextType.WebGPU` for context options
- `scenePromise` for async initialization
- `resolutionScale` for HiDPI
- Chrome 113+, Edge 113+, Opera 99+ required
- No mobile device support currently
- Same API as WebGL for all other features

### Vue Component Development
- Component-based development with Vue framework
- Viewer component for 3D globe container
- WebGL Vue components in `examples/component` path

---

## File Inventory

| Directory | Files | Size | Description |
|-----------|-------|------|-------------|
| `api/` | 734 files | 52 MB | Complete API class reference (JSDoc HTML) |
| `guides/` | 4 files | 93 KB | Dev guide, intro, downloads, WebGPU guide |
| `examples/` | 1 file | 72 KB | Example configuration (229 examples) |
| `topic-docs/` | 3 files | 9 KB | Topic docs (mostly JS-rendered shells) |
| **TOTAL** | **738 files** | **~52 MB** | |

---

## Notes
- The official API documentation is hosted at `https://iserver.supermap.io/iserver/iClient/for3D/webgl/`
- `support.supermap.com.cn:8090` was unreachable during collection
- Topic documentation pages are JavaScript-rendered and could not be fully downloaded
- Chinese-language API docs are available at the same paths under the `/zh/` prefix
- Documentation generated by JSDoc 3.6.11
- iClient3D 2023+ supports both WebGL and WebGPU with a unified API
- S3M (Spatial 3D Model) is SuperMap's open 3D data specification
- Product is licensed under Apache License 2.0
- GitHub: https://github.com/SuperMap/iClient3D-for-WebGL-Sample-Code
