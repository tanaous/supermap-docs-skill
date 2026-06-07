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

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Content-Language" content="zh-CN"/>
  <meta name="template" content="../../../assets/layouts/SuperMapiServerMain.htt"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>GPA模型</title>
  <link rel="StyleSheet" href="../../../assets/css/SuperMapHelp.css" type="text/css"/>
  <script type="text/javascript" src="../../../assets/js/shCore.js">
    //<![CDATA[
    <
    script type = "text/javascript"
    src = "../../../assets/js/shBrushBash.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushCpp.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushCSharp.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushCss.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushDelphi.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushDiff.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushGroovy.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushJava.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushJScript.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushPhp.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushPlain.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushPython.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushRuby.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushScala.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushSql.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushVb.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/shBrushXml.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/ConfigiServer6R.js" / >
      <
      script type = "text/javascript"
    src = "../../../assets/js/SMCollapse.js" / >
    //]]>
  </script>
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
  <p class="myNormal">SuperMap iPortal 提供了处理自动化建模（GPAModelBuilder） WebApp。它是一款可视化构建处理自动化模型的 Web 应用。通过处理自动化工具（以下简称工具）构建处理自动化模型（以下简称模型）并运行，可实现空间数据处理与分析过程的自动化。SuperMap iPortal 作为 GIS 门户软件平台，支持了 GPA 模型资源的保存、查询和分享。通过该 WebApp 您可以：</p>
  <ul class="hcp6">
    <li>可视化拖拽和连接工具</li>
    <li>接入门户中的数据，直接拖拽数据到建模流程中参与运算</li>
    <li>分步运行模型，运行至您所选的工具，以检验处理自动化流程的正确性</li>
    <li>运行整个模型，实现空间数据的自动化处理与分析流程</li>
  </ul>
  <ul class="referenceList">
  </ul>
  <h2>使用入口<strong></strong></h2>
  <ul class="hcp6">
    <li>在“资源中心”页面，点击左侧边栏的 “GPA 模型” 进入 GPA 模型资源页面，右侧点击“创建 GPA 模型”按钮（需登录）进入处理自动化建模 WebApp 页面</li>
    <li>在“应用中心”页面，点击左侧边栏的 “处理自动化建模”，在右侧欢迎页点击“新建”，进入处理自动化建模 WebApp 页面</li>
  </ul>
  <p class="myNormal"><strong>注意</strong>：在使用处理自动化建模之前，需要管理员在 iPortal 的“管理” &gt; “服务器” &gt; “服务器列表” 页面进行<a href="../../iportal_management/addNode.htm#SuperMap_iServer_服务器">添加服务器</a>操作，并指定服务器为<a href="../../iportal_management/Services_hosting/Specify_HostedServer.htm">托管服务器</a>。添加托管服务器完成后，需要管理员配置<a href="../../iportal_management/Services_hosting/Storage_Config.htm#GPA共享存储">GPA共享存储</a>，为数据指定存储路径。</p>
  <ul class="referenceList">
    <li class="referenceList"><a href="gpamodelCreate.htm">创建 GPA 模型</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="gpamodelupload.htm">上传 GPA 模型</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="pulldata.htm">拖拽数据</a></li>
    <li class="referenceList"><a href="gpamodelReuse.htm">复用 GPA 模型</a></li>
    <li class="referenceList"><a href="gpamodelSaveShare.htm">保存、共享 GPA 模型</a></li>
  </ul>
  <p class="referenceList"> </p>
  <p class="referenceList"> </p>
  <p class="myNormal"> </p>
  <p class="myNormal"> </p>
  <p> </p>
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
    gTopicId = "4.2.6"
  
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