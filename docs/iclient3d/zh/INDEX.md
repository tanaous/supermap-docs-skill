# SuperMap iClient3D for WebGL/WebGPU - Chinese Documentation Collection

**Source:** http://support.supermap.com.cn:8090/iserver/iClient/for3D/webgl/zh/  
**Collection Date:** 2026-06-07  
**Product Version:** SuperMap iClient3D 12i (2025) WebGL/WebGPU

## Collection Summary

| Category | Count | Description |
|----------|-------|-------------|
| Example HTML pages | 211 | Running demo pages from `zh/examples/webgl/` |
| JSDoc API pages | 717 | Class-level API reference from `zh/docs/Documentation/` |
| Introduction/Guide pages | 3 | Product intro, dev guide, API wrapper |
| Web root pages | 2 | Main index, downloads page |
| CSS files | 8 | Stylesheets for examples and web pages |
| JavaScript files | 18 | Config, localization, template loaders, utilities |
| Template files | 5 | Header, footer, example layout templates |
| JSDoc support files | 3 | CSS, JS, logo image |
| Total HTML files | 941 | All .html files |
| **Total files** | **~970** | All collected files |

## Directory Structure

```
zh/
├── INDEX.md                          # This file
├── introduction/
│   ├── intro_3DWebgl.html            # Product introduction (Chinese)
│   ├── 3DforWebGL.html               # Development guide (Chinese)
│   └── NodesConversionTool.js        # Module diagram support
├── examples/
│   ├── examples.html                 # Example index page (JS-driven listing)
│   ├── config.js                     # Full example listing (categories, names, filenames)
│   ├── webgl/                        # 211 example HTML pages
│   │   ├── *.html                    # Running demo pages
│   │   └── js/
│   │       └── config.js             # Example-specific JS config
│   └── js/
│       ├── common.js                 # Common utilities
│       ├── sidebar.js                # Sidebar navigation builder
│       ├── example.js                # Example page logic
│       ├── engine-example.js         # Engine-specific examples
│       ├── localization.js           # Chinese localization strings
│       ├── include-web.js            # Script loader
│       └── utils.js                  # Template loading utilities
├── css/
│   ├── common.css, header.css, sideBar.css
│   ├── examples.css, engine-examples.css
│   ├── introduction.css, develop.css
├── docs/
│   └── Documentation/
│       ├── index.html                # JSDoc class index (searchable)
│       ├── *.html                    # 716 individual class pages
│       ├── styles/jsdoc-default.css
│       ├── javascript/html5.js
│       └── images/SuperMapLogo.png
├── apis/
│   └── 3dwebgl.html                  # API iframe wrapper → JSDoc
├── component/
│   └── config.js                     # Component-level config
├── js/
│   ├── common.js                     # Shared common JS
│   ├── sidebar.js                    # Sidebar JS
│   └── localization.js               # Chinese localization
├── templates/
│   ├── example.html                  # Example page template
│   ├── header.html                   # Site header template
│   └── footer.html                   # Site footer template
└── web/
    ├── index.html                    # Main product landing page (Chinese)
    ├── downloads/
    │   └── download1.html            # Download page
    ├── img/favicon.ico
    ├── js/include.js                 # Web page script loader
    └── template/
        ├── header.html               # Web header template
        └── footer.html               # Web footer template
```

## Example Categories (from config.js)

The 211 examples are organized into these categories:

| Category (Chinese) | Category (English) | Key | Example Count |
|---------------------|-------------------|-----|---------------|
| 图层 | Layer | `layer` | ~20 |
| 在线底图 | Basemap Online | `online-base-map` | ~5 |
| 场景 | Scene | `Scene` | ~15 |
| 查询 | Query | `search` | ~12 |
| 量算 | Measurement | `measurement` | ~4 |
| 分析 | Analysis | `analysis` | ~25 |
| 飞行 | Fly | `fly` | ~1 |
| KML&模型 | KML And Model | `KMLAndModel` | ~15 |
| 在线绘制 | Drawing Online | `online-draw` | ~10 |
| 可视化 | Visualization | `visualization` | ~40 |
| 立体显示 | Stereo Display | `stereoscopic-show` | ~1 |
| 三维标绘 | 3D Plotting | `3D_plot` | ~12 |

## Key Chinese Page Descriptions

### Product Introduction (`introduction/intro_3DWebgl.html`)
Full Chinese product introduction covering: product overview, download, technical features, module architecture diagram, license (Apache 2.0), and environment configuration requirements for WebGL and WebGPU.

### Development Guide (`introduction/3DforWebGL.html`)
Chinese step-by-step development guide covering: getting the SDK, importing scripts, initializing the 3D globe, adding terrain/imagery/S3M/MVT layers, scene settings (color, bloom, multi-viewport, output), queries (spatial, attribute), measurement, drawing, and 3D spatial analysis (viewshed, shadow, skyline).

### API Reference (`apis/3dwebgl.html`)
Iframe wrapper pointing to the JSDoc-generated API documentation at `docs/Documentation/index.html`. The API docs are language-agnostic (same as English collection).

### Main Landing Page (`web/index.html`)
Product landing page for SuperMap iClient3D 12i (2025) WebGL/WebGPU with navigation to docs, examples, and downloads.

## Notes

- The Chinese API page is an iframe wrapper pointing to `../../docs/Documentation/index.html` (the same JSDoc as the English collection)
- The examples page (`examples/examples.html`) is JavaScript-driven; the actual example listing data is in `examples/config.js` (`exampleConfig` variable)
- Example file names with spaces (e.g., "Particle System_Fire") use `%20` URL encoding
- WebGPU-specific examples are commented out in config.js and are not available on the server
- All content is served from `support.supermap.com.cn:8090` which requires network connectivity
- The English API reference (731 JSDoc classes) was separately collected to `/home/tanaous/supermap-docs/iclient3d/api/`
