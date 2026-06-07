<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3, user-scalable=yes"/>
  <meta name="version" content="2022.1.0"/>
  <link rel="StyleSheet" href="../../template/styles/topic.min.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" type="text/css" href="../../template/OnlineHelpFrameiPortal/layout.css"/>
  <link rel="StyleSheet" data-skin="true" href="../../template/OnlineHelpFrameiPortal/userstyles.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" href="../../template/OnlineHelpFrameiPortal/homeButtom.css" type="text/css"/>
  <link rel="stylesheet" data-skin="true" href="../../template/OnlineHelpFrameiPortal/index_Home.css" type="text/css"/>
  
    <link rel="shortcut icon" type="image/png" href="../../iportal-icon.png"/>
    
  <script data-relpath="../.." src="../../template/scripts/csh-redirect.js" type="text/javascript"></script>

  <meta name="template" content="../../assets/layouts/SuperMapiServerMain.htt"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Content-Language" content="zh-CN"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>示范程序说明</title>
  <link rel="StyleSheet" href="../../assets/css/SuperMapHelp.css" type="text/css"/>
  <script type="text/javascript" src="../../assets/js/shCore.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushBash.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushCpp.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushCSharp.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushCss.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushDelphi.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushDiff.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushGroovy.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushJava.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushJScript.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushPhp.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushPlain.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushPython.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushRuby.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushScala.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushSql.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushVb.js"></script>
  <script type="text/javascript" src="../../assets/js/shBrushXml.js"></script>
  <script type="text/javascript" src="../../assets/js/ConfigiServer6R.js"></script>
  <script type="text/javascript" src="../../assets/js/SMCollapse.js"></script>
<meta name="rh-version" content="2022.1.188"/>
  
  <link rel="stylesheet" type="text/css" href="../../assets/css/common_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../assets/css/index_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../assets/css/homeButtom.css"/>
  <script src="../../assets/js/jQuery.js"></script>
  <script type="text/javascript" src="../../assets/js/ResourceCenter_Hover.js"></script>
<meta name="rh-version" content="2022.1.188"/></head>

<body class="rh-BODY-wrapper">
  <header class="RH-LAYOUT-HEADER-container" role="banner">
   <div class="enterAllProductsHome only-online" style="display:none"> 
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;../../assets/images/EnterAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;../../assets/images/EnterAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
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
		    <img src="../../assets/images/MoreProducts.svg"/>
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
      <div class="TopNavigation1"><a class="TopNavigationLink" href="../../iP/Install_Uninstal_iportal/install_uninstall.htm">安装</a></div>
      <div class="TopNavigation2"><a class="TopNavigationLink" href="../../iP/iportal_usage/gettingStarted.htm">使用</a></div>
      <div class="TopNavigation3"><a class="TopNavigationLink" href="../../iP/iportal_management/admin_gettingStarted.htm">管理</a></div>
	  <div class="TopNavigation4"><a class="TopNavigationLink" href="../../API\iServer_API_reference.htm">开发</a></div>
    </div>
    <div class="search-placeholder-class" id="search-with-help"></div>
	<div class="home_bottom_bg_topic only-online" style="display:none" id="bottomContainer">
      <div class="dropdown language">
        <div class="flex-row showArea" id="language_switch" onclick="showLanguagePanel()" style="min-width: 85px;">
          <div class="language_text">语言切换</div>
          <img class="home_bottom_dropdown_icon" src="../../assets/images/Expand_Black.svg"/>
        </div>
        <div class="dropdownMenu" id="language_list" style="display: none; text-align: center;">
        </div>
      </div>
      <div class="BannerVerticalLineRight">|</div>
      <div class="dropdown version">
        <div class="flex-row showArea_version" id="version_switch" onclick="showVersionPanel()" style="min-width: 85px; height: 40px;">
          <div class="language_text">版本切换</div>
          <img class="home_bottom_dropdown_icon" src="../../assets/images/Expand_Black.svg"/>
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
  <p class="myNormal">SuperMap iPortal 提供了示范程序帮助您了解如何使用 SuperMap iPortal API 进行开发以及如何基于 SuperMap iPortal 进行定制开发。示范程序位于 %SuperMap iPortal_HOME%\samples\code 目录，在使用时请先运行该目录下的 LibReplace.bat 文件，用于动态替换示范程序中依赖 jar 包的位置为当前产品包所在位置。示范程序的内容描述如下表：</p>
  <table align="center" cellspacing="0" class="iServerTable" width="96%">
    <colgroup>
      <col style="width: 10%;"/>
      <col style="width: 113px;"/>
      <col style="width: 205px;"/>
      <col style="width: 655px;"/>
    </colgroup>
    <tbody>
      <tr class="t1st" style="height: 27px;">
        <td> </td>
        <td style="text-align: center;">目录</td>
        <td style="text-align: center;">Eclipse 工程/RESTAPI 目录</td>
        <td style="text-align: center;">说明</td>
      </tr>
      <tr class="t2Row" style="height: 41px;">
        <td rowspan="3">使用 iPortal API</td>
        <td rowspan="3" style="">UsePortalRESTAPI</td>
        <td>RESTMapManagement</td>
        <td style="">利用 RESTAPI 实现地图操作，包含 getMapDetail.html 1个示例 html 页面，依次实现了查找指定地图、查看地图信息、修改地图信息、共享地图信息功能。请参见<a class="contentpagehyperlink" href="Use_iPortal_RestAPI/MapOpr/GetMapDetail.htm">地图操作</a>。</td>
      </tr>
      <tr class="t1Row" style="height: 41px;">
        <td>RESTGroupManagement</td>
        <td style="">利用 RESTAPI 实现群组操作，包含 groups.html 1个示例 html 页面，依次实现了创建群组、群组共享、邀请用户功能。请参见<a class="contentpagehyperlink" href="Use_iPortal_RestAPI/GroupOpr/createGroup.htm">群组操作</a>。</td>
      </tr>
      <tr class="t2Row" style="height: 41px;">
        <td>RESTDataManagement</td>
        <td style="">利用 RESTAPI 实现数据操作，包含 upload.html 1个示例 html 页面，依次实现了上传数据、共享数据、下载数据功能。请参见<a class="contentpagehyperlink" href="Use_iPortal_RestAPI/DataOpr/uploadData.htm">数据操作</a>。</td>
      </tr>
      <tr class="t1Row" style="height: 27px;">
        <td rowspan="2">
          <p>定制 iPortal 后端</p>
        </td>
        <td rowspan="2" style="">
          <p>CustomPortal</p>
        </td>
        <td rowspan="2">Custom_Portal</td>
        <td style="">使用 Jersey 基于 iPortal 定制开发一个新的资源。请参见：<a class="contentpagehyperlink" href="Custom_iPortal/Back_end_custom/iPortal_custom.htm">案例1—使用 Jersey 基于 iPortal 开发新的资源</a>。</td>
      </tr>
      <tr class="t2Row" style="height: 55px;">
        <td style="">使用 Jersey 基于 iPortal 已有资源扩展新的子资源。请参见：<a class="contentpagehyperlink" href="Custom_iPortal/Back_end_custom/Jersey_extend.htm">案例2—使用 Jersey 基于 iPortal 已有资源扩展子资源</a>。</td>
      </tr>
      <tr class="t1Row" style="height: 55px;">
        <td>
          <p>定制 iPortal 管理</p>
        </td>
        <td style="">
          <p>iportal-admin-ui-extend</p>
        </td>
        <td>/</td>
        <td style="">基于 Vue 组件形式定制 iPortal 后台管理模块，实现了在后台管理中新增嵌入页面和打开新窗口等操作。请参见：<a class="contentpagehyperlink" href="Custom_iPortal/Admin_UI_custom/Admin_custom_via_vue.htm">案例2—以 Vue 组件形式扩展新的管理页面</a></td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal"> </p>
  <p class="myNormal">此外，WebApps 的扩展示范程序位于：</p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">
      <p class="myNormal">数据上图 WebApp：【iPortal 产品包】 /webapps/iportal/WEB-INF/lib/webjar-dataviz-*.jar/META-INF/resources/apps/dataviz/libs/plugins，查看：<a class="contentpagehyperlink" href="Custom_WebApps/DV_ex_process.htm">扩展定制流程</a></p>
    </li>
    <li class="SymbolList1">
      <p class="myNormal">数据洞察 WebApp：【iPortal 产品包】 /webapps/iportal/WEB-INF/lib/webjar-datainsights-*.jar/META-INF/resources/apps/insights/libs/plugins，查看：<a class="contentpagehyperlink" href="Custom_WebApps/DI_ex_process.htm">扩展流程</a></p>
    </li>
    <li class="SymbolList1">
      <p class="myNormal">地图大屏 WebApp：https://github.com/SuperMap/mapdashboard-custom-components，查看：<a class="contentpagehyperlink" href="Custom_WebApps/MD_ex_customComponentGuide.htm">自定义组件开发指南</a></p>
    </li>
  </ul>
  <p class="myNormal"> </p>
  <p class="myNormal"> </p>
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
    <div class="home_bottom_img"><a href="https://www.supermap.com" target="_blank"><img src="../../assets/images/超图logo.png" style="height: 32px;"/> <span class="copyright_text">
          <script>
            //<![CDATA[
            copyright();
            //]]>
          </script>
        </span> </a></div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea" id="language_switch"><img src="../../assets/images/在线服务.svg" style="width: 16px; margin-left: 6px;"/>
      <div class="language_text" style="margin-left: 10px; min-width: 65px;">语言切换</div>
      <img class="home_bottom_dropdown_icon" src="../../assets/images/展开.svg"/>
    </div>
    <div class="dropdownMenu" id="language_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default">简体中文</div>
              <div class="text_switch_default">EN</div-->
    </div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea_version" id="version_switch">
      <div class="language_text" style="margin-left: 25px; min-width: 65px; color: black;">版本切换</div>
      <img class="home_bottom_dropdown_icon" src="../../assets/images/Expand_Black.svg" style="margin-top: 10px"/> <img src="../../assets/images/EnterAllProducts.svg"/>
    </div>
    <div class="dropdownMenu" id="version_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default" >11.1.0</div>-->
    </div>
  </div>
  <div style="display: none">
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;assets/images/ExpandAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;assets/images/hideAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
    <div class="AllProductsHelp" id="AllProductsHelp">
      <div class="DetailProducts1"><a href="http://help.supermap.com/ImageXPro"><img src="../../assets/images/SuperMapImageXPro.svg"/></a></div>
      <div class="DetailProducts2"><a href="http://help.supermap.com/iMaritimeEditor"><img src="../../assets/images/SuperMapiMaritimeEditor.svg"/></a></div>
      <div class="Products"><a href="http://help.supermap.com/Editor/">SuperMap Editor<img src="../../assets/images/Expand_Black.svg"/></a></div>
      <div class="MoreProducts">
        <div><a href="http://help.supermap.com">更多产品帮助</a></div>
        <div style="margin-left: 13px;"><img src="../../assets/images/MoreProducts.svg"/></div>
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

    gRootRelPath = "../.."
    gCommonRootRelPath = "../.."
    gTopicId = "6.0_1"
  
//]]></script>

  <script src="../../template/OnlineHelpFrameiPortal/tocconfig.js"></script>
  <script src="../../template/OnlineHelpFrameiPortal/topicpagefix.js"></script>
  <script src="../../template/OnlineHelpFrameiPortal/env.js"></script>
  <script src="../../whxdata/layoutconfig.js"></script>
  <script src="../../whxdata/brsdata.js"></script>

  
    

            

<script>
  //<![CDATA[
  showOnlyOnlineDom();
  //]]>
</script>

</body></html>