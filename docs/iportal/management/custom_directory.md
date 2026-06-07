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
  <title>自定义目录配置</title>
  <link rel="StyleSheet" href="../../../assets/css/SuperMapHelp.css" type="text/css"/>
  <script type="text/javascript" src="../../../assets/js/shCore.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushBash.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushCpp.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushCSharp.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushCss.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushDelphi.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushDiff.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushGroovy.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushJava.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushJScript.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushPhp.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushPlain.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushPython.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushRuby.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushScala.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushSql.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushVb.js"></script>
  <script type="text/javascript" src="../../../assets/js/shBrushXml.js"></script>
  <script type="text/javascript" src="../../../assets/js/ConfigiServer6R.js"></script>
  <script type="text/javascript" src="../../../assets/js/SMCollapse.js"></script>
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
  <p class="myNormal">在实际的业务应用中，用户单位对地图、服务、场景、数据、洞察、项目、GPA模型、3D设计等资源的分类展示往往是多种多样的，如按照年份、区域、业务类型等等，因此，单一的按照资源的来源、类型进行分类已无法满足实际业务需求。</p>
  <p class="myNormal">基于此，SuperMap iPortal 提供了自定义资源目录配置功能，即允许管理员为某类资源新建一个或多个目录结构树，将门户中的地图、服务、场景、数据、洞察、项目、GPA模型、3D设计等资源添加到指定的目录结构树中的某个具体目录文件夹下。资源目录配置完成后，在“首页”&gt;“资源中心”&gt;“地图/服务/场景/数据/洞察/项目/GPA模型/3D设计”资源列表页面左侧过滤器面板会依次列出管理员配置的资源目录结构树。您也可通过<a class="contentpagehyperlink" href="../customPortal/customResourceCenter.htm">过滤器定制功能</a>调整新添加的目录分类过滤器的显示次序，或隐藏显示。</p>
  <h2>开启/禁用自定义目录</h2>
  <p class="myNormal">自定义目录功能默认未开启，管理员可以通过以下两种方式开启/禁用自定义目录：</p>
  <ol class="ListInParagraph" style="list-style: decimal;">
    <li class="ListInParagraph">以管理员身份登录门户首页，依次点击“管理”&gt;“资源中心配置”&gt;“目录管理”，进入目录管理页面，当前页面提供了“地图”、“服务”、“场景”、“数据”、“洞察”、“项目”、“GPA模型”、“3D设计”资源的自定义目录配置项，您可以根据实际业务需求，在页面左上角点击启用/禁用开关，控制是否启用您配置的自定义目录。</li>
    <li class="ListInParagraph">在【SuperMap iPortal 安装目录】\webapps\iportal\WEB-INF 文件夹下的 iportal.xml 配置文件中，通过 &lt;customDirectorySetting&gt; 子节点元素来设置启用/禁用自定义目录，具体请参见：<a class="contentpagehyperlink" href="../../Install_Uninstal_iportal/iPortal_config.htm">iPortal 配置文件说明</a>。</li>
  </ol>
  <p class="myNormal">完成启用自定义目录功能的配置后，“首页”&gt;“资源中心”&gt;“地图/服务/场景/数据/洞察/项目/GPA模型/3D设计”资源列表页面左侧过滤器面板会依次列出管理员配置的自定义目录结构树，或点击资源进入资源详情页查看关联目录信息。通过<a class="contentpagehyperlink" href="../customPortal/customResourceCenter.htm">过滤器定制功能</a>可调整新添加的目录分类过滤器的显示次序，或隐藏显示。</p>
  <p class="myNormal">完成启用“服务”资源自定义目录功能的配置后，“首页”&gt;“资源中心”&gt;“服务”&gt;“注册服务”页面会出现“指定服务存放目录”选项，门户用户可以将<a class="contentpagehyperlink" href="../../iportal_usage/add_resource/service.htm#registerService">注册的服务</a>添加到自定义目录中。</p>
  <h2>自定义目录设置</h2>
  <p class="myNormal">以管理员身份登录门户首页，依次点击“管理”&gt;“资源中心配置”&gt;“目录管理”，进入目录管理页面。使用自定义目录的一般流程是：一、选择资源类型，如：地图/服务/场景/数据/洞察/项目/GPA模型/3D设计，二、选中或新建一个根目录，在此根目录下创建一级或多级目录，三、进入某个新建的具体目录文件夹下，将资源添加到该目录中。下面<span style="font-variant-ligatures: normal; font-variant-caps: normal; 
	 orphans: 2; text-indent: 24px; widows: 2; -webkit-text-stroke-width: 0px; 
	 background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; 
	 display: inline	 ! important ; float: none;">以“自定义地图目录”为例，</span> 详细介绍各项操作。</p>
  <h3>添加根目录</h3>
  <p class="myNormal">每种资源类型支持创建一个或多个根目录。系统默认为每种资源类型创建了“默认目录”的根目录。点击“地图”选项卡，点击<img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/addBtn.PNG" style="border: none;"/>按钮，在新建根目录弹出中输入根目录名称，点击确定，即可创建一个根目录。根目录创建完后，即可添加目录、资源。</p>
  <h3><a id="renameRootDir"></a>重命名根目录</h3>
  <p class="myNormal">根目录支持重命名操作。鼠标移动到要操作的根目录名称上，点击右侧出现的<img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/moreBtn.png" style="border: none;"/>，选择“重命名”操作，根目录名称即进入编辑状态，完成编辑后，鼠标点击任意空白位置即可退出编辑操作。</p>
  <h3>删除根目录</h3>
  <p class="myNormal">根目录支持删除操作。鼠标移动到要操作的根目录名称上，点击右侧出现的<img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/moreBtn.png" style="border: none;"/>，选择“删除”操作，在删除弹窗中选择是否同时将该目录树中分配的资源也从门户中删除，选择完成后点击“确定”，完成删除操作。注意：若选择同时将目录中的资源从门户中删除，此资源会被永久删除，不可恢复。请慎重操作。</p>
  <h3>添加目录</h3>
  <p class="myNormal">创建根目录后，即可为创建的根目录添加一级或多级目录，从而完成自定义目录结构树的创建。点击“地图”选项卡，选择要创建目录的根目录（系统会默认选择“默认目录”），点击“添加目录”按钮，输入目录名称，完成一级目录的创建。您可创建多个一级目录，也可点击创建好的一级目录进入该目录中，点击“添加目录”，继续添加子目录。支持无限级目录嵌套。</p>
  <h3><a id="searchRootDir"></a>查询目录</h3>
  <p class="myNormal">在目录管理页面，点击目录名右侧的<img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/searchBtn.PNG" style="border: none;"/>出现搜索框，输入要查询的目录关键字，点击查找的目录名称即可跳转到所选目录页面。</p>
  <h3>添加资源</h3>
  <p class="myNormal">支持在创建好的目录下添加资源。鼠标移动到要操作的目录名称上，点击右侧的“添加资源”按钮，会弹出可以添加到该目录下的所有地图列表信息，您还可以在搜索框中输入地图标题的关键字，查询想要添加的地图，然后勾选地图标题前面的复选框（支持多选），点击“确定”按钮即可。注：同一个资源支持被添加到不同的目录结构树中，但同一个目录结构树中，同一个资源只能被添加一次。</p>
  <h3>移动目录及资源</h3>
  <p class="myNormal">目录或资源支持移动到所属目录结构树下的指定目录中。在某一个目录级别，勾选当前目录下需要移动的目录或资源前面的复选框，然后点击“移动至”按钮，在“移动至”弹窗中，选择目标目录名称，点击“确定”按钮，即可完成目录和资源的移动。</p>
  <p class="myNormal"><span style="font-weight: bold;">注意</span>：移动目录时，会将目录下的全部内容（资源和子目录）一起移动。</p>
  <h3>重命名目录</h3>
  <p class="myNormal">支持重命名目录名称。鼠标移动到需要重命名的目录名称条目上，点击出现的<img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/editBtn.png" style="border: none;"/>按钮，目录名称即进入编辑状态，完成编辑后，鼠标点击任意空白位置即可退出编辑操作。</p>
  <h3>删除目录及资源</h3>
  <p class="myNormal">支持删除目录及目录下的资源。在某一个目录级别，勾选当前目录下需要删除的目录或资源前面的复选框，点击“删除”按钮，在删除弹窗中选择是否同时将该目录树中分配的资源也从门户中删除，选择完成后点击“确定”，完成删除操作。注意：若选择同时将目录中的资源从门户中删除，此资源会被永久删除，不可恢复。请慎重操作。</p>
  <h3>调整目录顺序</h3>
  <p class="myNormal">支持目录的上下移动，调整目录顺序。将鼠标移动至单条目录记录上，会显示向上移动和向下移动的箭头。例如想把第二个目录向上移动到第一条目录的位置， 点击第二条目录中的向上移动箭头，此时，第二个目录上移，位置变成了第一个，之前的第一个目录的位置变成了第二个，然后点击<img alt="" border="0" src="../../../assets/images/iP/iportal_management/yes.png" style="border: none;"/>确认按钮，即完成了目录的顺序调整，也可以点击<img alt="" border="0" src="../../../assets/images/iP/iportal_management/no.png" style="border: none;"/>取消按钮，取消本次的目录移动。</p>
  <h2>导入第三方服务目录</h2>
  <p class="myNormal">iPortal 支持导入第三方的服务目录及资源，方便您直接将已有应用系统中的服务目录及服务资源导入 iPortal 中。导入的第三方服务目录需遵循<a class="contentpagehyperlink" href="#导入第三方服务目录规范">导入第三方服务目录规范</a>，具体导入操作如下：</p>
  <p class="myNormal">以管理员身份登录门户“首页”&gt;“管理”&gt;“资源中心配置”&gt;“目录管理”页面，点击左侧面板的“服务”，系统会自动选中提供的“默认目录”，您也可以点击<img alt="" border="0" src="../../../assets/images/iP/iportal_management/img/addBtn.PNG" style="border: none;"/>按钮创建一个新的根目录，然后在页面上方点击“导入目录“，在弹窗中输入第三方服务目录地址，即根目录（Root Catalog）的 url，具体请参见：<a class="contentpagehyperlink" href="#根目录_Root_Catalog_">根目录（Root Catalog）</a>。</p>
  <h3><a id="导入第三方服务目录规范"></a>导入第三方服务目录规范</h3>
  <p class="myNormal">导入的服务目录需遵循本规范。本规范主要参考了 <a class="contentpagehyperlink" href="https://stacspec.org/">SpatioTemporal Asset Catalog</a> 中的 <a class="contentpagehyperlink" href="https://github.com/radiantearth/stac-spec/blob/master/catalog-spec/catalog-spec.md">STAC Catalog</a> 和 <a class="contentpagehyperlink" href="https://github.com/radiantearth/stac-spec/blob/master/item-spec/item-spec.md">STAC Item</a>。其中 Catalog 用于描述一个目录，Item 用于描述一个资源项(如：服务资源)。</p>
  <h4><a id="根目录_Root_Catalog_"></a>根目录（Root Catalog）</h4>
  <p class="myNormal">iPortal 导入第三方的服务目录时，要求第三方必须且只需提供一个能够获得根目录（Root Catalog）的 url，通过该 Root Catalog，iPortal 可以检索到第三方的所有子目录（Child Catalog）以及 Catalog 下的资源项（Item）。Root Catalog 本身不会被同步到 iPortal，它只作为一个检索 Child Catalog 和 Item 的入口。</p>
  <p class="myNormal">要求能够返回本规范中描述的 Root Catalog 的 json 格式数据，示例如下：</p>
  <p class="myCodeP">{</p>
  <p class="myCodeP">    &quot;id&quot;: &quot;Root_Catalog&quot;,</p>
  <p class="myCodeP">    &quot;title&quot;: &quot;Root Catalog&quot;,</p>
  <p class="myCodeP">    &quot;description&quot;: &quot;Root Catalog&quot;,</p>
  <p class="myCodeP">    &quot;links&quot;: [</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;self&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;root&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;child&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/RailwayCatalog.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;child&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/Highway.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;child&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/Other.json&quot;</p>
  <p class="myCodeP">        }</p>
  <p class="myCodeP">    ]</p>
  <p class="myCodeP">}</p>
  <p class="myNormal">json 表述结构如下：</p>
  <table align="center" cellspacing="0" class="iServerTable" style="left: 0px; top: 1617px; width: 1024px;" width="1471">
    <colgroup>
      <col style="width: 180px;"/>
      <col style="width: 229px;"/>
      <col style="width: 924px;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center">字段</td>
        <td style="text-align: center">类型</td>
        <td style="text-align: center;">描述</td>
      </tr>
      <tr class="t2Row">
        <td style="">id</td>
        <td>String</td>
        <td>【必选参数】 根目录ID，也是目录名称。</td>
      </tr>
      <tr class="t1Row">
        <td style="">title</td>
        <td>String</td>
        <td>【可选参数】 根目录标题。</td>
      </tr>
      <tr class="t2Row">
        <td style="">description</td>
        <td>String</td>
        <td>【可选参数】 根目录描述信息。</td>
      </tr>
      <tr class="t1Row">
        <td style="">links</td>
        <td>[<a href="#Link_Object1">Link Object</a>]</td>
        <td>【必选参数】 当前目录与链接内容的关联关系列表。</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal"><a id="Link_Object1"></a><span style="font-weight: bold;">Link Object</span></p>
  <p class="myNormal">该对象描述了当前目录与链接内容的关联关系列表，由以下字段组成：</p>
  <table align="center" cellspacing="0" class="iServerTable" style="left: 0px; top: 1617px; width: 1038px;" width="1471">
    <colgroup>
      <col style="width: 103px;"/>
      <col style="width: 18px;"/>
      <col style="width: 713px;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center;">字段</td>
        <td style="text-align: center;">类型</td>
        <td style="text-align: center;">描述</td>
      </tr>
      <tr class="t2Row">
        <td>rel</td>
        <td style="">String</td>
        <td>【必选参数】 表示当前目录与链接内容的关联关系。rel 的取值包括：self（自身）、root（根目录）、parent（父级目录）、child（子级目录）、item（该目录下的数据项）。</td>
      </tr>
      <tr class="t1Row">
        <td>href</td>
        <td style="">String</td>
        <td>【必选参数】 表示链接的 url。此 url 的设计不做要求，建议按目录层级设计。</td>
      </tr>
    </tbody>
  </table>
  <h4>子目录（Child Catalog）</h4>
  <p class="myNormal">如果有子目录，要求能够返回本规范中描述的子目录（Child Catalog）的 json 格式数据，示例如下：</p>
  <p class="myCodeP">{</p>
  <p class="myCodeP">    &quot;id&quot;: &quot;铁路&quot;,</p>
  <p class="myCodeP">    &quot;title&quot;: &quot;铁路&quot;,</p>
  <p class="myCodeP">    &quot;description&quot;: &quot;铁路目录描述&quot;,</p>
  <p class="myCodeP">    &quot;links&quot;: [</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;self&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/RailwayCatalog.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;parent&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;root&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;child&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/RailwayCatalog/2019.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;child&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/RailwayCatalog/2018.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;item&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/RailwayCatalog/item1.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;item&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/RailwayCatalog/item2.json&quot;</p>
  <p class="myCodeP">        }</p>
  <p class="myCodeP">    ]</p>
  <p class="myCodeP">}</p>
  <p class="myNormal">json 表述结构如下：</p>
  <table align="center" cellspacing="0" class="iServerTable" style="left: 0px; top: 1617px; width: 1064px;" width="1471">
    <colgroup>
      <col style="width: 20.962%;"/>
      <col style="width: 20.962%;"/>
      <col style="width: 58.076%;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center">字段</td>
        <td style="text-align: center">类型</td>
        <td style="text-align: center">描述</td>
      </tr>
      <tr class="t2Row">
        <td>id</td>
        <td>String</td>
        <td style="">【必选参数】 子目录ID，也是目录名称。</td>
      </tr>
      <tr class="t1Row">
        <td>title</td>
        <td>String</td>
        <td style="">【可选参数】 子目录标题。</td>
      </tr>
      <tr class="t2Row">
        <td>description</td>
        <td>String</td>
        <td style="">【可选参数】 子目录描述信息。</td>
      </tr>
      <tr class="t1Row">
        <td>links</td>
        <td>[<a href="#Link_Object2">Link Object</a>]</td>
        <td style="">【必选参数】 当前目录与链接内容的关联关系列表。</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal"><a id="Link_Object2"></a><span style="font-weight: bold;">Link Object</span></p>
  <p class="myNormal">该对象描述了当前目录与链接内容的关联关系列表，由以下字段组成：</p>
  <table align="center" cellspacing="0" class="iServerTable" style="left: 0px; top: 1617px; width: 1065px;" width="1471">
    <colgroup>
      <col style="width: 20.962%;"/>
      <col style="width: 20.962%;"/>
      <col style="width: 58.076%;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center">字段</td>
        <td style="text-align: center">类型</td>
        <td style="text-align: center">描述</td>
      </tr>
      <tr class="t2Row">
        <td>rel</td>
        <td>String</td>
        <td>【必选参数】 表示当前目录与链接内容的关联关系。rel 的取值包括：self（自身）、root（根目录）、parent（父级目录）、child（子级目录）、item（该目录下的数据项）。</td>
      </tr>
      <tr class="t1Row">
        <td>href</td>
        <td>String</td>
        <td>【必选参数】 表示链接的 url。此 url 的设计不做要求，建议按目录层级设计。</td>
      </tr>
    </tbody>
  </table>
  <h4>资源项（Item）</h4>
  <p class="myNormal">如果有资源项（服务资源），要求能够返回本规范中描述的资源项（Item）的 json 格式数据，示例如下：</p>
  <p class="myCodeP">{</p>
  <p class="myCodeP">    &quot;id&quot;: &quot;4b4e9e27-bef2-4a84-865a-f1dfd08f507e&quot;,</p>
  <p class="myCodeP">    &quot;type&quot;: &quot;SERVICE&quot;,</p>
  <p class="myCodeP">    &quot;properties&quot;: {</p>
  <p class="myCodeP">        &quot;title&quot;: &quot;map-china400&quot;,</p>
  <p class="myCodeP">        &quot;subtype&quot;: &quot;WMS&quot;,</p>
  <p class="myCodeP">        &quot;version&quot;: &quot;1.1.1&quot;,</p>
  <p class="myCodeP">        &quot;description&quot;: &quot;map-china400 description&quot;,</p>
  <p class="myCodeP">        &quot;tags&quot;: [</p>
  <p class="myCodeP">            &quot;tag1&quot;,</p>
  <p class="myCodeP">            &quot;tag2&quot;</p>
  <p class="myCodeP">        ],</p>
  <p class="myCodeP">        &quot;created&quot;: 1575508370562,</p>
  <p class="myCodeP">        &quot;updated&quot;: 1575508370566</p>
  <p class="myCodeP">    },</p>
  <p class="myCodeP">    &quot;assets&quot;: {</p>
  <p class="myCodeP">        &quot;thumbnail&quot;: {</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://rdc.ispeco.com:8080/iserver/services/map-china400/wms111/entireImage.png&quot;,</p>
  <p class="myCodeP">            &quot;type&quot;: &quot;image/png&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        &quot;metadata&quot;: {</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://rdc.ispeco.com:8080/iserver/services/map-china400/wms111&quot;,</p>
  <p class="myCodeP">            &quot;type&quot;: &quot;application/xml&quot;</p>
  <p class="myCodeP">        }</p>
  <p class="myCodeP">    },</p>
  <p class="myCodeP">    &quot;links&quot;: [</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;self&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/RailwayCatalog/item1.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;parent&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog/RailwayCatalog.json&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        {</p>
  <p class="myCodeP">            &quot;rel&quot;: &quot;root&quot;,</p>
  <p class="myCodeP">            &quot;href&quot;: &quot;http://{server}/catalog.json&quot;</p>
  <p class="myCodeP">        }</p>
  <p class="myCodeP">    ]</p>
  <p class="myCodeP">}</p>
  <p class="myNormal">json 表述结构如下：</p>
  <table align="center" cellspacing="0" class="iServerTable" style="left: 0px; top: 1617px; width: 1113px;" width="1471">
    <colgroup>
      <col style="width: 156px;"/>
      <col style="width: 209px;"/>
      <col style="width: 58.076%;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center">字段</td>
        <td style="text-align: center">类型</td>
        <td style="text-align: center">描述</td>
      </tr>
      <tr class="t2Row">
        <td>id</td>
        <td>String</td>
        <td style="">【必选参数】 资源项 ID。</td>
      </tr>
      <tr class="t1Row">
        <td>type</td>
        <td>String</td>
        <td style="">【必选参数】 资源项类型，固定值：SERVICE。</td>
      </tr>
      <tr class="t2Row">
        <td>properties</td>
        <td><a class="contentpagehyperlink" href="#Properties_Object">Properties Object</a></td>
        <td style="">【必选参数】 资源项的基本属性信息列表。</td>
      </tr>
      <tr class="t1Row">
        <td>assets</td>
        <td><a class="contentpagehyperlink" href="#Assets_Object">Assets Object</a></td>
        <td style="">【必选参数】 资源项的资产列表。</td>
      </tr>
      <tr class="t2Row">
        <td>links</td>
        <td>[<a href="#Link_Object">Link Object</a>]</td>
        <td style="">【必选参数】 当前目录与链接内容的关联关系列表。</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal" style="font-weight: bold;"><a id="Properties_Object"></a>Properties Object</p>
  <p class="myNormal">该对象描述了资源项的基本属性信息列表，由以下字段组成：</p>
  <table align="center" cellspacing="0" class="iServerTable" style="left: 0px; top: 1617px; width: 1104px;" width="1471">
    <colgroup>
      <col style="width: 158px;"/>
      <col style="width: 203px;"/>
      <col style="width: 58.076%;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center">字段</td>
        <td style="text-align: center">类型</td>
        <td style="text-align: center">描述</td>
      </tr>
      <tr class="t2Row">
        <td>title</td>
        <td>String</td>
        <td style="">【必选参数】 资源项名称。</td>
      </tr>
      <tr class="t1Row">
        <td>subtype</td>
        <td>String</td>
        <td style="">【必选参数】 资源项子类型，例如：WMS、WMTS等。</td>
      </tr>
      <tr class="t2Row">
        <td>version</td>
        <td>String</td>
        <td style="">【必选参数】 资源项版本号，例如：WMS 服务的1.3.0。</td>
      </tr>
      <tr class="t1Row">
        <td>description</td>
        <td>String</td>
        <td style="">【可选参数】 资源项描述信息。</td>
      </tr>
      <tr class="t2Row">
        <td>tags</td>
        <td>List&lt;String&gt;</td>
        <td style="">【可选参数】 资源项的标签列表。</td>
      </tr>
      <tr class="t1Row">
        <td>created</td>
        <td>Long</td>
        <td style="">【必选参数】 资源项的创建时间。</td>
      </tr>
      <tr class="t2Row">
        <td>updated</td>
        <td>
          <p>Long</p>
        </td>
        <td style="">【必选参数】 资源项的更新时间。</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal"> </p>
  <p class="myNormal"><a id="Assets_Object"></a><span style="font-weight: bold;">Assets Object</span></p>
  <p class="myNormal">该对象描述了资源项的资产列表，由以下字段组成：</p>
  <table align="center" cellspacing="0" class="iServerTable" style="left: 0px; top: 1617px; width: 1094px;" width="1471">
    <colgroup>
      <col style="width: 161px;"/>
      <col style="width: 196px;"/>
      <col style="width: 58.076%;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center">字段</td>
        <td style="text-align: center">类型</td>
        <td style="text-align: center">描述</td>
      </tr>
      <tr class="t2Row">
        <td style="">thumbnai</td>
        <td style="">String</td>
        <td style="">【必选参数】 资源项的缩略图。</td>
      </tr>
      <tr class="t1Row">
        <td style="">metadata</td>
        <td style="">Metadata</td>
        <td style="">【必选参数】 资源项的元数据信息。</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal"><a id="Link_Object"></a><span style="font-weight: bold;">Link Object</span></p>
  <p class="myNormal">该对象描述了当前目录与链接内容的关联关系列表，由以下字段组成：</p>
  <table align="center" cellspacing="0" class="iServerTable" style="left: 0px; top: 1617px; width: 1091px;" width="1471">
    <colgroup>
      <col style="width: 146px;"/>
      <col style="width: 209px;"/>
      <col style="width: 58.076%;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center">字段</td>
        <td style="text-align: center">类型</td>
        <td style="text-align: center">描述</td>
      </tr>
      <tr class="t2Row">
        <td style="">rel</td>
        <td style="">String</td>
        <td>【必选参数】 表示当前目录与链接内容的关联关系。rel 的取值包括：self（自身）、root（根目录）、parent（父级目录）、child（子级目录）、item（该目录下的数据项）。</td>
      </tr>
      <tr class="t1Row">
        <td style="">href</td>
        <td style="">String</td>
        <td>【必选参数】 表示链接的 url。此 url 的设计不做要求，建议按目录层级设计。</td>
      </tr>
    </tbody>
  </table>
  <h3 class="myNormal">第三方服务目录同步</h3>
  <p class="myNormal">导入服务目录成功后，若后续第三方服务目录的地址或内容发生了变更，并希望将变更同步至 iPortal 中，iPortal 为您提供了服务目录一键同步功能。</p>
  <p class="myNormal">在首次导入服务目录后，“导入目录”按钮将被替换为“同步目录”按钮，如果服务目录的内容发生了变更，您可以直接点击“同步目录”，实现 iPortal 服务目录与第三方服务目录的同步；若服务目录的地址发生了变更，您可以点击“同步目录”右侧的编辑按钮，更新第三方服务目录地址并完成同步。</p>
  <p> </p>
  <p> </p>
  <p> </p>
  <p> </p>
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
    gTopicId = "5.1.6_5"
  
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