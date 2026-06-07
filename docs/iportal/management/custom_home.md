<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3, user-scalable=yes"/>
  <meta name="version" content="2022.1.0"/>
  <link rel="StyleSheet" href="../../../template/styles/topic.min.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" type="text/css" href="../../../template/OnlineHelpFrameiPortal/layout.css"/>
  <link rel="StyleSheet" data-skin="true" href="../../../template/OnlineHelpFrameiPortal/userstyles.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" href="../../../template/OnlineHelpFrameiPortal/homeButtom.css" type="text/css"/>
  <link rel="stylesheet" data-skin="true" href="../../../template/OnlineHelpFrameiPortal/index_Home.css" type="text/css"/>
  
    <link rel="shortcut icon" type="image/png" href="../../../iportal-icon.png"/>
    
  <script data-relpath="../../.." src="../../../template/scripts/csh-redirect.js" type="text/javascript"></script>

  <meta name="template" content="../../../assets/layouts/SuperMapiServerMain.htt"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Content-Language" content="zh-CN"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>首页定制</title>
  <link rel="StyleSheet" href="../../../assets/css/SuperMapHelp.css" type="text/css"/>
<meta name="rh-version" content="2022.1.188"/>
  
  <link rel="stylesheet" type="text/css" href="../../../assets/css/common_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../../assets/css/index_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../../assets/css/homeButtom.css"/>
  <script src="../../../assets/js/jQuery.js"></script>
  <script type="text/javascript" src="../../../assets/js/ResourceCenter_Hover.js"></script>
<meta name="rh-version" content="2022.1.188"/></head>

<body class="rh-BODY-wrapper">
  <header class="RH-LAYOUT-HEADER-container" role="banner">
   <div class="enterAllProductsHome only-online" style="display:none"> 
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;../../../assets/images/EnterAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;../../../assets/images/EnterAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
    <div class="AllProductsHelp" id="AllProductsHelp" style="display: none;">
      <div class="DetailProducts1"><a class="MoreProductsLink" href="https://help.supermap.com/iServer">SuperMap iServer</a></div>
      <div class="DetailProducts2"><a class="MoreProductsLink" href="https://help.supermap.com/iEdge">SuperMap iEdge</a></div>
	  <div class="DetailProducts3"><a class="MoreProductsLink" href="https://help.supermap.com/iManager/zh/">SuperMap iManager</a></div>
	  <div class="DetailProducts4"><a class="MoreProductsLink" href="https://help.supermap.com/iManager_K8S/zh/">SuperMap iManager for Kubernetes</a></div>
	  <div class="DetailProducts5"><a class="MoreProductsLink" href="https://iclient.supermap.io/">SuperMap iClient Javascript</a></div>
	  <div class="DetailProducts6"><a class="MoreProductsLink" href="https://doc.supermapol.com/zh-hans/">SuperMap Online</a></div>
      <div class="MoreProducts">
        <div>
		  <a class="MoreProductsLink" href="https://help.supermap.com">更多产品帮助</a>
		</div>
        <div style="margin-left: 13px;">
		  <a class="MoreProductsLink" href="https://help.supermap.com">
		    <img src="../../../assets/images/MoreProducts.svg"/>
		  </a>
		</div>
      </div>
    </div>
   </div>
   <div class="BannerVerticalLineLeft only-online" style="display:none">|</div>
    <div class="RH-LAYOUT-HEADER-logo-box  ">
      <div class="RH-LAYOUT-HEADER-logo" id="logo-holder"></div>
    </div>
    <div class="TopicTopNavigation">
      <div class="TopNavigation1"><a class="TopNavigationLink" href="../../../iP/Install_Uninstal_iportal/install_uninstall.htm">安装</a></div>
      <div class="TopNavigation2"><a class="TopNavigationLink" href="../../../iP/iportal_usage/gettingStarted.htm">使用</a></div>
      <div class="TopNavigation3"><a class="TopNavigationLink" href="../../../iP/iportal_management/admin_gettingStarted.htm">管理</a></div>
	  <div class="TopNavigation4"><a class="TopNavigationLink" href="../../../API\iServer_API_reference.htm">开发</a></div>
    </div>
    <div class="search-placeholder-class" id="search-with-help"></div>
	<div class="home_bottom_bg_topic only-online" style="display:none" id="bottomContainer">
      <div class="dropdown language">
        <div class="flex-row showArea" id="language_switch" onclick="showLanguagePanel()" style="min-width: 85px;">
          <div class="language_text">语言切换</div>
          <img class="home_bottom_dropdown_icon" src="../../../assets/images/Expand_Black.svg"/>
        </div>
        <div class="dropdownMenu" id="language_list" style="display: none; text-align: center;">
        </div>
      </div>
      <div class="BannerVerticalLineRight">|</div>
      <div class="dropdown version">
        <div class="flex-row showArea_version" id="version_switch" onclick="showVersionPanel()" style="min-width: 85px; height: 40px;">
          <div class="language_text">版本切换</div>
          <img class="home_bottom_dropdown_icon" src="../../../assets/images/Expand_Black.svg"/>
        </div>
        <div class="dropdownMenu1" id="version_list" style="display:none; text-align: center;">
        </div>
      </div>
    </div>
    <div class="RH-LAYOUT-HEADERMENU-container" id="header-menu"></div>
  </header>
  <main role="main" class="RH-LAYOUT-BODY-container">
    <div class="RH-LAYOUT-SEARCHRESULTS" id="rh-searchresults"></div>
    <div class="RH-LAYOUT-LEFTPANEL-container" id="rh-leftpanel"></div>
    <div class="rh-layout-BODY-main" id="rh-layout-main">
      <div class="RH-LAYOUT-TOOLBAR-toolbar-box" id="rh-toolbar" style="z-index: 1; top: 249px;"></div>
      <div class="rh-layout-BODY-body">
        <div class="RH-LAYOUT-CENTERPANEL-container">
          <div class="rh-layout-selectdetails" id="rh-selectdetails"></div>
          <div class="RH-LAYOUT-CENTERPANEL-topic-box" id="rh-topic">
  <p class="myNormal">iPortal 首页的头部（header）、内容（body）、底部（footer）均支持可视化定制。其中头部和底部作用于门户全站。</p>
  <p class="myNormal" style="text-align: center;"><img height="731" src="../../../assets/images/iP/iportal_management/img/homepage2025.png" width="613"/></p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">头部（header）：支持修改门户 Logo、站点名称、导航栏模式、控制在线帮助的显示与隐藏，这些内容的修改均在定制功能的常规内容面板进行。其中导航栏模式除默认模式外，支持天地图风格的导航栏。导航栏各项内容的增减、移动等修改在导航栏的编辑面板进行。</li>
  </ul>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">内容（body）：页面内容的主体区。首页内容区支持添加横幅、快捷链接、资源卡片、地图、内联框架等 13 种组件。这些组件支持以拖拽或单击的方式添加到编辑区，且组件采用了行布局。添加到编辑区的组件支持编辑组件属性和所在行的设置。详见本节布局和组件的介绍。</li>
    <li class="SymbolList1">底部（footer）：支持切换 footer 样式、显示或隐藏语言切换功能、修改版权信息等；不同样式的 footer，可编辑的内容也将有所不同，详见本节 footer 介绍 。若将导航栏模式设置为天地图风格，footer 也将采用天地图风格模式。</li>
  </ul>
  <p class="myNormal"> </p>
  <p class="myNormal">以管理员身份登录 iPortal 后，进入“首页”&gt;“管理”&gt;“站点配置”&gt;“站点定制”，点击“首页定制”链接，或直接访问 http://&lt;server&gt;:&lt;port&gt;/iportal/web-ui/home/edit，即可进入首页编辑界面。此时，首页内容均以编辑状态展示，您可所见即所得地移动、编辑、删除组件。点击左侧的齿轮图标，展开的侧边栏面板支持首页国际化定制、开启预览、常规内容设置、及从布局构建器添加组件到右侧编辑区、恢复默认设置和保存。完成首页定制并确认保存后，您可以点击页面左上角的门户 Logo，退出首页定制模式。注意您在进行首页定制时，首页国际化定制默认选中的是中文，即<span style="font-weight: bold;">默认是定制中文环境下的首页内容。</span>下面详细介绍各项设置。</p>
  <ul class="referenceList">
    <li class="referenceList"><a class="contentpagehyperlink" href="#generalSettings">常规内容</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="#navigationBar">导航栏</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="#layout_components">布局和组件</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="#footer">Footer</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="#multi-lang">国际化</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="#save_preview">保存和预览</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="#restore">恢复默认设置</a></li>
  </ul>
  <h2><a id="generalSettings"></a>常规内容</h2>
  <p class="myNormal">在首页编辑界面，点击左上角的齿轮，在展开的侧边栏中点击“常规内容”设置如下各项内容。设置完成后点击下方的“确定”按钮，界面右侧编辑面板即会更新修改项。也可点击侧边栏右上角的全局保存按钮进行保存。</p>
  <h3>门户Logo</h3>
  <p class="myNormal">iPortal 提供了默认 Logo，你可以通过“上传Logo”进行更改，图片要求 gif、png 或 jpg 格式，图片大小建议为 43px*43px。如果您更换 Logo 后，还想换回 iPortal 的默认Logo，点击“使用默认 Logo”按钮即可。</p>
  <h3>站点名称</h3>
  <p class="myNormal">定制门户的站点名称，如：地理信息共享平台，显示在“门户Logo”右侧。也可为空。</p>
  <h3 class="myNormal">标签页图标</h3>
  <p class="myNormal">iPortal 提供了默认标签页图标，你可以通过点击默认图标进行更改，图片要求png 或 jpg 格式，图片大小建议为 32px*32px。</p>
  <h3 class="myNormal">标签页名称</h3>
  <p class="myNormal">定制门户的标签页名称，如：用户管理，显示在“标签页图标”右侧。如果您更换标签页名称后，还想换回 iPortal 的默认标签页名称，设置标签页名称为空即可。</p>
  <h3>导航栏模式</h3>
  <p class="myNormal">提供了默认和天地图两种模式。切换为天地图模式，点击“确定”生效后，门户站点的 header 和 footer 均切换为天地图风格，此时在右侧界面编辑区可对 footer 组件可视化地编辑。</p>
  <h3 class="myNormal">语言切换</h3>
  <p class="myNormal">开启或关闭语言切换，以控制站点头部右侧是否显示语言切换组件。</p>
  <h3>帮助文档</h3>
  <p class="myNormal">勾选或取消勾选“帮助文档”复选框，以控制站点头部右侧是否显示帮助文档链接。支持更改帮助文档路径</p>
  <h2><a id="navigationBar"></a>导航栏</h2>
  <p class="myNormal">在常规内容中，您可更改导航栏的模式。在界面编辑区支持编辑导航栏的内容。鼠标移动至导航栏组件，点击“编辑组件”按钮，打开导航栏编辑对话框，支持如下操作：</p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">显示与隐藏：可以控制导航栏中一级和二级栏目的显示与隐藏</li>
    <li class="SymbolList1">拖动：可以进行同级和跨级间的拖动，调整先后顺序。</li>
    <li class="SymbolList1">添加：可以添加一级栏目，也可以为一级栏目添加二级栏目，添加时，需输入栏目名称和栏目的链接地址（链接地址需以 http、https 开头）</li>
    <li class="SymbolList1">启用内嵌网页模式：新添加的一级、二级栏目可以选择是否启用内嵌网页模式，默认是不启用状态。启用内嵌网页模式后，您新添加的网页页面会与 iPortal 共用内置导航栏。例如：您新添加一个”一张图“一级栏目，启用内嵌网页模式后保存，在导航栏中点击”一张图“栏目，显示的”一张图“页面会默认使用 iPortal 的导航栏</li>
    <li class="SymbolList1">删除：支持删除新添加的一级、二级栏目，系统默认提供的栏目不支持删除</li>
    <li class="SymbolList1">修改：新添加的一级、二级栏目支持修改栏目名称和链接地址，系统默认的一级、二级栏目只支持修改栏目名称</li>
  </ul>
  <p class="myNormal">设置好后点击“保存”按钮，即可生效。</p>
  <p class="myNormal">使用导航栏编辑能方便地集成项目自定义的栏目，如<a class="contentpagehyperlink" href="../Portal_config/demo1_custom.htm">示例：自定义添加“开发中心”导航栏</a>。</p>
  <p class="myNormal"><strong>注意</strong>：管理员默认可见全部导航栏目，如需修改，可在 iPortal 顶部导航栏 “管理” &gt; “站点配置” &gt; “站点定制页”中，打开“导航设置”标签页，勾选最下方的“对管理员生效”，将导航栏的显示 / 隐藏设置同时也作用于管理员角色。</p>
  <h2><a id="layout_components"></a>布局和组件</h2>
  <h3>布局设置</h3>
  <p class="myNormal">组件添加到右侧编辑区后，您可对该组件所在行进行12栅格布局，即1行按照12等分的原则进行划分。下面简单介绍下栅格布局的原理：</p>
  <ul class="SymbolList1">
    <li class="SymbolList1">通过行在水平方向建立一组列</li>
    <li class="SymbolList1">组件放置在列内</li>
    <li class="SymbolList1">栅格系统中的列是指1到12的值来表示其跨越的范围。例如，三个等宽的列可使用4,4,4</li>
    <li class="SymbolList1">一行中列的总和必须等于12</li>
  </ul>
  <p class="myNormal" style="font-weight: bold;">具体操作：</p>
  <p class="myNormal">在右侧编辑区，鼠标悬停在具体组件所在行，会显示“编辑行”按钮，点击“编辑行”按钮，左侧会展开该组件所在行的布局构建器，即可进行布局设置。系统提供<span style="font-weight: bold;">自适应</span>和<span style="font-weight: bold;">自定义</span>两种对齐方式，默认使用<span style="font-weight: bold;">自适应</span>对齐方式，即一行中组件与组件是等宽对齐的。您也可以选择<span style="font-weight: bold;">自定义</span>对齐方式，手动调整组件在一行中跨越的范围，即在“栅格布局”选项中，输入数值，以英文逗号（,）隔开，数值总和必须等于12，数值个数与组件数相等，一行中最多允许添加六个组件。</p>
  <p class="myNormal">您还可以调整当前行与下一行的间距、当前行背景色（默认未打开）、设置行内组件以固定大小居中显示（默认行内组件随屏幕大小拉伸并居中显示）。</p>
  <h3><a id="component"></a>组件</h3>
  <p class="myNormal">在首页编辑界面，点击左上角的齿轮，在展开的侧边栏中点击“布局构建器”，可看到门户提供的组件，支持以单击或拖拽的方式添加至右侧编辑区，单行最多允许添加6个组件。添加到右侧编辑区中的组件默认使用了行布局，您将鼠标悬停在组件所在的行进行行布局设置；鼠标悬停在组件上，会显示编辑、删除和拖拽组件按钮，您可以编辑组件、移除组件、拖动组件调整布局。每行中多个组件之间可以左右互换位置，行与行之间可以上下互换位置。</p>
  <h4>横幅</h4>
  <p class="myNormal">该组件包含一张背景图，支持修改背景图上的标题、副标题、按钮文字及超链接。若标题、或描述、按钮文字等为空，横幅组件仅会显示背景图。</p>
  <h4 class="myNormal">卡片轮播</h4>
  <p class="myNormal">该组件可设置一组轮播的卡片，每张卡片由背景图片与字幕组成。支持设置组件的高度、播放方式、指示箭头与指示点等，还可对每张卡片单独设置背景图片、超链接、字幕内容以及布局样式。</p>
  <h4>快捷链接</h4>
  <p class="myNormal">该组件包含图标、标题、描述和超链接。支持修改默认的图标、标题文字、描述内容和超链接地址。</p>
  <h4>快捷链接 2</h4>
  <p class="myNormal">功能及操作同上述快捷链接组件。仅使用了不同的排版风格。</p>
  <h4 class="myNormal">快捷链接 3</h4>
  <p class="myNormal">该组件包含图标、背景图片、标题、描述和超链接。支持修改默认的图标、背景图片、标题文字、描述内容和超链接地址。</p>
  <h4>资源卡片</h4>
  <p class="myNormal">热门资源组件，含标题、资源类别和各类资源的缩略图。支持修改标题文字、改变各类资源缩略图的排列方式，也支持显示或隐藏某类资源。</p>
  <h4>资源卡片 2</h4>
  <p class="myNormal">功能及操作同上述资源卡片组件。仅使用了不同的排版风格。</p>
  <h4>地图</h4>
  <p class="myNormal">地图组件允许添加天地图或门户中公开且可查看的地图，默认添加了天地图。添加地图方式：鼠标在地图组件上点击“编辑组件”，在左侧地图设置面板，选择要添加的地图类型、地图id、天地图密钥（如果门户地图使用了天地图作为底图，或选择的地图类型是天地图需填写）、组件高度、地图中心点的经纬度及地图级别。 注意：iPortal 默认提供了一个临时的天地图密钥，但是建议您单独申请一个用于实际生产环境中的正式密钥。</p>
  <h4>图标列表</h4>
  <p class="myNormal">默认包含六个列表项，每项包含图标及标题，且支持点击。您可增加或删除列表项，但最多能添加六项内容。每项内容支持上传新图标、修改标题文字和超链接地址。</p>
  <h4>内联框架</h4>
  <p class="myNormal">您可通过内联框架 iframe 方式内嵌第三方应用。支持修改该组件的高度和超链接地址。</p>
  <h4>标题</h4>
  <p class="myNormal">用于在门户首页添加文本标题和文本链接信息。支持修改标题文字、链接文本和超链接地址。</p>
  <h4>图片列表</h4>
  <p class="myNormal">默认是一个包含四张图片的列表组件。支持更改图片、图片的超链接，添加、删除图片。</p>
  <h4>图标内容</h4>
  <p class="myNormal">默认是一行两列，共三行内容的组件。每项包含图标、标题、描述及超链接。支持修改各项内容、添加新的列表项、删除列表项。添加新列表项后，组件按一行两列将新列表项添加到底部。</p>
  <h4>文本块</h4>
  <p class="myNormal">该组件包含文本标题、按钮及超链接。支持修改文本标题、按钮文字和超链接地址；支持修改文本块的样式，包括自定义文本块的尺寸和背景色，标题和按钮文字的颜色、字体和大小。</p>
  <h4>文本列表</h4>
  <p class="myNormal">该组件包含五列文本，每列包含标题、超链接和子文本项。支持修改组件的背景图、显示或隐藏每列文本、修改父列表和子列表项的标题和超链接地址。</p>
  <h4>新闻</h4>
  <p class="myNormal">该组件可设置标题名称、链接文本、超链接、新闻行数、新闻排序方式（最新、最多访问）和组件高度。当新闻行数所占的高度超过组件高度时，新闻条目自动以滚动方式显示。</p>
  <h4 class="myNormal">文本</h4>
  <p class="myNormal">用于在首页中添加一段文本。支持修改文本的字体、字号、粗细、字形、对齐方式、行高、缩进、颜色等，支持为文本添加超链接。</p>
  <h4>视频</h4>
  <p class="myNormal">用于在首页中添加一段视频，支持设置视频的尺寸、播放方式、是否静音等，还可为视频添加控制条。</p>
  <h4>柱状图</h4>
  <p class="myNormal">用于在首页中添加一幅柱状图，提供的柱状图类型有常规柱状图、正方体柱状图、长方体柱状图、圆柱体柱状图，支持设置柱状图x轴、y轴的颜色、轴线、刻度、网格和标签等，支持设置图表内容的颜色、标签、高度、背景和内边距等。</p>
  <h4>条形图</h4>
  <p class="myNormal">用于在首页中添加一幅条形图，支持设置条形图x轴、y轴的颜色、轴线、刻度、网格和标签等，支持设置图表内容的颜色、标签、高度、背景和内边距等。</p>
  <h2><a id="footer"></a>Footer</h2>
  <p class="myNormal">iPortal 提供了数套不同样式的 footer，可在左侧边栏的 Footer 样式选项卡中进行切换，不同样式的 footer 具有不同的设置项，可用于搭建各种风格的门户站点。</p>
  <h4 class="myNormal">默认样式</h4>
  <p class="myNormal">iPortal 默认 footer 采用单行布局模式，适合较为简洁的门户站点搭建。</p>
  <p class="myNormal" style="text-align: center;"><img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/homePage_defaultFooter.png" style="border: none;"/></p>
  <p class="myNormal">本样式设置项包括：</p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">语言切换：控制是否显示语言切换组件</li>
    <li class="SymbolList1">版权信息：网站的版权信息文本</li>
    <li class="SymbolList1">文本链接：带有超链接的文本，由标题名和链接地址组成</li>
  </ul>
  <h4 class="myNormal">样式1</h4>
  <p class="myNormal">本样式设置项包括：内容宽度、Logo、二维码、下拉列表、文本链接、联系信息、备案信息、语言切换、版权信息等。切换到本样式后，可在右侧界面编辑区将鼠标悬停在 footer 所在位置，点击浮现的编辑按钮，对 footer 进行可视化的编辑。</p>
  <p class="myNormal" style="text-align: center;"><img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/homePage_footer1.png" style="border: none;"/></p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">内容宽度：footer 整体内容宽度</li>
    <li class="SymbolList1">语言切换：控制是否显示语言切换组件</li>
    <li class="SymbolList1">Logo：Logo 图片，您可通过上传改变 Logo，上传图片要求 png 或 jpg 格式，大小建议为 72px*72px</li>
    <li class="SymbolList1">二维码：二维码列表，可添加最多 2 个二维码，支持对每项分别设置二维码图片和标题名</li>
    <li class="SymbolList1">下拉列表：由超链接组成的下拉列表，可添加最多 5 个一级列表项，每个一级列表项下支持添加最多 7 个子列表项，子列表项由标题名和链接地址组成</li>
    <li class="SymbolList1">文本链接：带有超链接的文本，最多支持添加 6 个文本链接，每项由标题名和链接地址组成</li>
    <li class="SymbolList1">联系信息：联系方式集合，最多支持添加 4 个联系方式，每个联系方式由联系项、具体联系方式和链接地址组成</li>
    <li class="SymbolList1">版权信息：网站的版权信息文本</li>
    <li class="SymbolList1">备案信息：网站备案信息集合，最多支持添加 3 条备案信息，每项由标题名与和链接地址组成</li>
  </ul>
  <h4 class="myNormal">样式2</h4>
  <p class="myNormal">本样式设置项包括：内容宽度、二维码、网站列表、联系信息、备案信息、语言切换、版权信息等。切换到本样式后，可在右侧界面编辑区将鼠标悬停在 footer 所在位置，点击浮现的编辑按钮，对 footer 进行可视化的编辑。</p>
  <p class="myNormal" style="text-align: center;"><img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/homePage_footer2.png" style="border: none;"/></p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">内容宽度：footer 整体内容宽度</li>
    <li class="SymbolList1">语言切换：控制是否显示语言切换组件</li>
    <li class="SymbolList1">二维码：二维码列表，可添加最多 2 个二维码，支持对每项分别设置二维码图片和标题名</li>
    <li class="SymbolList1">网站列表：由超链接组成的文本列表，可添加最多 5 个一级列表项，每个一级列表项下支持添加最多 7 个子列表项，子列表项由标题名和链接地址组成</li>
    <li class="SymbolList1">联系信息：联系方式集合，最多支持添加 4 个联系方式，每个联系方式由联系项、具体联系方式和链接地址组成</li>
    <li class="SymbolList1">版权信息：网站的版权信息文本</li>
    <li class="SymbolList1">备案信息：网站备案信息集合，最多支持添加 3 条备案信息，每项由标题名与和链接地址组成</li>
  </ul>
  <h4 class="myNormal">样式3</h4>
  <p class="myNormal">本样式为天地图风格，将导航栏模式切换为天地图样式后，footer 将随之自动切换为天地图样式且无法更换为其他样式。在右侧界面编辑区将鼠标悬停在 footer 所在位置，点击浮现的编辑按钮，可对天地图 footer 的内容进行可视化的编辑。</p>
  <p class="myNormal" style="text-align: center;"><img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/homePage_tiandituFooter.png" style="border: none;"/></p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">背景图片：网站 Logo ，您可通过上传图片改变 Logo</li>
    <li class="SymbolList1">联系信息：带有超链接的文本，最多支持添加 6 个联系信息，每项由标题名和链接地址组成</li>
    <li class="SymbolList1">版权信息：网站备案信息集合，最多支持添加 6 条版权信息，每项由标题名与和链接地址组成</li>
  </ul>
  <h2><a id="multi-lang"></a>国际化</h2>
  <p class="myNormal">iPortal 默认支持中/英版的首页站点定制。默认首页定制选择的国际化定制语言选项是中文，您可切换为英文定制英文首页。若您有其他语言的定制需求，可先为门户站点进行<a class="contentpagehyperlink" href="../Portal_config/multiLanguage.htm">多语言配置</a>，配置完成重启 iPortal 后，首页编辑页面左侧边栏“首页国际化定制”下拉列表会列出新添加语言选项，选择要定制的站点语言，即可开始定制。<span style="font-weight: bold;">注意</span>：定制不同语言环境下的首页时，内容区（body）的组件是共用的，即在英文环境定制时删除了某个组件，中文环境首页也会删掉这个组件。不同语言环境下首页的头部（header）、底部（footer）中的内容项可以不一致。</p>
  <h2 class="myNormal"><a id="save_preview"></a>保存和预览</h2>
  <p class="myNormal">首页定制完成后，可打开左侧面板的预览开关进行预览，点击面板右上角的“保存”按钮可进行保存发布。建议您在进行每个组件的编辑后，及时保存。注意：预览状态下不允许添加编辑、删除组件。</p>
  <h2 class="myNormal"><a id="restore"></a>恢复默认设置</h2>
  <p class="myNormal">若您对定制效果不满意，希望恢复到 iPortal 默认站点模板时，可点击左侧面板右上角的“恢复默认设置”按钮，将首页还原至 iPortal 的默认状态。需要注意的是，还原默认设置后，您先前所做的所有更改均会丢失，建议您慎重操作。</p>
  <p> </p>

</div>
          <!--div class="RH-LAYOUT-BRS-container" id="rh-brs"></div-->
        </div>
        <div class="RH-LAYOUT-RIGHTPANEL-container" id="rh-rightpanel"></div>
      </div>
    </div>
  </main>
  <footer role="contentinfo" class="RH-LAYOUT-FOOTER-container" id="rh-footer">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <div class="home_bottom_bg" id="bottomContainer">
    <div class="home_bottom_img"><a href="https://www.supermap.com" target="_blank"><img src="../../../assets/images/超图logo.png" style="height: 32px;"/> <span class="copyright_text">
          <script>
            //<![CDATA[
            copyright();
            //]]>
          </script>
        </span> </a></div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea" id="language_switch"><img src="../../../assets/images/在线服务.svg" style="width: 16px; margin-left: 6px;"/>
      <div class="language_text" style="margin-left: 10px; min-width: 65px;">语言切换</div>
      <img class="home_bottom_dropdown_icon" src="../../../assets/images/展开.svg"/>
    </div>
    <div class="dropdownMenu" id="language_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default">简体中文</div>
              <div class="text_switch_default">EN</div-->
    </div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea_version" id="version_switch">
      <div class="language_text" style="margin-left: 25px; min-width: 65px; color: black;">版本切换</div>
      <img class="home_bottom_dropdown_icon" src="../../../assets/images/Expand_Black.svg" style="margin-top: 10px"/> <img src="../../../assets/images/EnterAllProducts.svg"/>
    </div>
    <div class="dropdownMenu" id="version_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default" >11.1.0</div>-->
    </div>
  </div>
  <div style="display: none">
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;assets/images/ExpandAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;assets/images/hideAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
    <div class="AllProductsHelp" id="AllProductsHelp">
      <div class="DetailProducts1"><a href="http://help.supermap.com/ImageXPro"><img src="../../../assets/images/SuperMapImageXPro.svg"/></a></div>
      <div class="DetailProducts2"><a href="http://help.supermap.com/iMaritimeEditor"><img src="../../../assets/images/SuperMapiMaritimeEditor.svg"/></a></div>
      <div class="Products"><a href="http://help.supermap.com/Editor/">SuperMap Editor<img src="../../../assets/images/Expand_Black.svg"/></a></div>
      <div class="MoreProducts">
        <div><a href="http://help.supermap.com">更多产品帮助</a></div>
        <div style="margin-left: 13px;"><img src="../../../assets/images/MoreProducts.svg"/></div>
      </div>
    </div>
  </div>
  <script>
    //<![CDATA[
    initView();
    showAllProductsHelp();
    hideAllProductsHelp();
    //]]>
  </script>

</footer>
  <script type="text/javascript">//<![CDATA[

    gRootRelPath = "../../.."
    gCommonRootRelPath = "../../.."
    gTopicId = "5.2.0_1"
  
//]]></script>

  <script src="../../../template/OnlineHelpFrameiPortal/tocconfig.js"></script>
  <script src="../../../template/OnlineHelpFrameiPortal/topicpagefix.js"></script>
  <script src="../../../template/OnlineHelpFrameiPortal/env.js"></script>
  <script src="../../../whxdata/layoutconfig.js"></script>
  <script src="../../../whxdata/brsdata.js"></script>

  
    

            

<script>
  //<![CDATA[
  showOnlyOnlineDom();
  //]]>
</script>

</body></html>