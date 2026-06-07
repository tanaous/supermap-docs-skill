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
  <title>底图配置</title>
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
  <p class="myNormal">iPortal 支持对服务预览以及内置 WebApps 所使用的底图进行统一管理与配置，以管理员身份登录门户首页，<span>依次点击“管理”&gt;“应用中心配置”&gt;“底图配置”</span>，可以对门户的默认底图进行以下配置：</p>
  <h2 class="myNormal"><a id="添加默认底图"></a>添加默认底图</h2>
  <p class="myNormal">iPortal 默认内置中国暗色地图作为缺省底图，在底图配置页面，选择“添加底图”选项卡，管理员可以通过以下方式添加新的默认底图：</p>
  <ol class="ListInParagraph" style="list-style: decimal;">
    <li class="ListInParagraph" style="font-weight: bold;">添加互联网地图作为默认底图</li>
  </ol>
  <p class="myNormal">iPortal 支持选择主流的互联网地图作为默认底图，管理员点击“添加底图”按钮，在下拉菜单中选择“互联网底图”，在弹出的对话框中，勾选想要作为默认底图的互联网地图名称前的复选框，然后点击“确定”按钮，即可将该地图添加到默认底图列表中。目前支持添加：天地图、谷歌地图、百度地图、腾讯地图、日本地理院地图、OpenStreetMap 作为底图。其中添加天地图、谷歌地图、百度地图、腾讯地图时需配置相应密钥，具体请参考：<a class="contentpagehyperlink" href="#配置密钥">配置密钥</a>。</p>
  <ol class="ListInParagraph" start="2" style="list-style: decimal;">
    <li class="ListInParagraph" style="font-weight: bold;">添加地图服务作为默认底图</li>
  </ol>
  <p class="myNormal">iPortal 支持将指定的地图服务配置为默认底图， 管理员点击“添加底图”按钮，在下拉菜单中选择“地图服务”，可以选择 iPortal 资源中心中已有的地图服务或输入地图服务地址进行添加：</p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">从资源中心添加底图：支持将资源中心中公开的 REST 地图服务、WMS 服务、WMTS 服务添加为默认底图，可以通过输入地图名称的关键字符来查找您想要的地图，然后勾选地图名称前的复选框，点击“确定”按钮后，该地图就添加到默认底图列表里了。</li>
    <li class="SymbolList1">通过 URL 添加：支持通过输入SuperMap iServer REST 地图服务、REST 矢量瓦片服务、OGC WMTS 服务、OGC WMS 服务、xyzTile 瓦片服务的服务地址将其添加为底图。<span>如果您使用矢量瓦片服务作为底图，在输入服务地址后还需要勾选“使用矢量瓦片”选项。</span></li>
  </ul>
  <h2>删除默认底图</h2>
  <p class="myNormal">系统内置的中国暗色地图默认底图以及新添加的默认底图均支持删除，您可以勾选底图名称前面的复选框（可多选），或通过”全选/反选/不选“按钮选择待删除的底图，然后点击“删除”按钮，将选中的底图从默认底图列表中移除。</p>
  <h2 class="myNormal">编辑默认底图</h2>
  <p class="myNormal">默认底图列表会列出当前门户中已添加的所有默认底图，但这些底图不一定适用于所有的 WebApps，管理员可以更细粒度地指定某幅底图为哪些 WebApps 所用。点击单个底图右侧的编辑按钮，可以勾选是否将当前底图配置给指定的 WebApp，点击保存后生效。配置完成后，可以在<a class="contentpagehyperlink" href="mapping_config/default_map_setting.htm">数据上图配置</a>、<a class="contentpagehyperlink" href="iDataInsights_config/baseMap.htm">数据洞察配置</a>、<a class="contentpagehyperlink" href="mapstudio_config/ms_basemap.htm">地图工作室配置</a>中详细查看每个 WebApp 所配置的底图。</p>
  <p class="myNormal">WebApp支持的互联网底图和地图服务如下表：</p>
  <table align="center" cellspacing="0" class="iServerTable" style="left: 0px; top: 549px;" width="1094">
    <colgroup>
      <col style="width: 142px;"/>
      <col style="width: 388px;"/>
      <col style="width: 173px;"/>
      <col style="width: 197px;"/>
    </colgroup>
    <tbody>
      <tr class="t1st" style="height: 37px;">
        <td rowspan="2" style="">WebApp名称</td>
        <td rowspan="2">互联网底图</td>
        <td colspan="2" style="">
          <p>地图服务</p>
        </td>
      </tr>
      <tr class="t2Row" style="height: 37px;">
        <td>
          <p style="font-weight: bold;">服务类型</p>
        </td>
        <td style="">
          <p><span style="font-weight: bold;">坐标系</span></p>
        </td>
      </tr>
      <tr class="t1Row" style="height: 32px;">
        <td style="">服务预览/数据上图</td>
        <td>天地图、谷歌地图、百度地图、日本地理院地图、OpenStreetMap、必应地图</td>
        <td>REST、WMS、WMTS</td>
        <td style="">所有坐标系</td>
      </tr>
      <tr class="t1Row" style="height: 32px;">
        <td style="">数据洞察</td>
        <td>天地图、谷歌地图、OpenStreetMap、必应地图</td>
        <td>REST</td>
        <td style="">3857、4326、4490</td>
      </tr>
      <tr class="t1Row" style="height: 32px;">
        <td style="">
          <p>地图工作室</p>
        </td>
        <td>天地图、谷歌地图、谷歌中国地图、必应地图、OpenStreetMap</td>
        <td>REST、WMS、WMTS、xyzTile</td>
        <td style="">所有坐标系</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal" style="font-weight: bold;"><span style="font-weight: bold;">注意：</span></p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">若底图不适用于WebApp，请对照表格检查互联网地图或地图服务的服务类型、坐标系</li>
    <li class="SymbolList1">地图工作室的WMTS服务除了与坐标系有关，还与比例尺、分辨率有关</li>
  </ul>
  <h2 class="myNormal"><a id="配置密钥"></a>配置密钥</h2>
  <p class="myNormal">添加互联网底图时，天地图、谷歌地图、百度地图、腾讯地图需要分别配置对应的密钥 Key 才能添加为默认底图。管理员可以在底图配置页面，选择“密钥配置”选项卡，填写在各互联网地图官网上申请的开发者密钥 Key ，校验通过并保存后，方可在“添加底图”选项卡中添加相对应的互联网地图。</p>
  <p class="myNormal"> </p>
  <p class="myNormal"> </p>
  <p class="myNormal"> </p>

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
    gTopicId = "5.1.6_2"
  
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