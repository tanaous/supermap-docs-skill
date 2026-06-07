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
  <title>使用数据上图 WebApp 创建地图</title>
  <link rel="StyleSheet" href="../../../assets/css/SuperMapHelp.css" type="text/css"/>
  <script type="text/javascript" src="../../../assets/js/shCore.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushBash.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushCpp.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushCSharp.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushCss.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushDelphi.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushDiff.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushGroovy.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushJava.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushJScript.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushPhp.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushPlain.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushPython.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushRuby.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushScala.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushSql.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushVb.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/shBrushXml.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/ConfigiServer6R.js">
  </script>
  <script type="text/javascript" src="../../../assets/js/SMCollapse.js">
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
  <p class="myNormal">数据上图 WebApp 提供了专业的在线制图能力，方便用户在线创建地图并分享给其他用户进行协同编辑。数据上图支持的浏览器情况如下表所示：</p>
  <p class="myNormal" style="text-align: center;"><a name="表1_数据上图支持的浏览器" id="表1_数据上图支持的浏览器"></a>表1 数据上图支持的浏览器</p>
  <table align="center" cellspacing="0" class="iServerTable" width="60.152%">
    <colgroup>
      <col style="width: 176px;"/>
      <col style="width: 542px;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center;">浏览器</td>
        <td style="text-align: center;">支持版本</td>
      </tr>
      <tr class="t2Row">
        <td>IE</td>
        <td>11及以上版本</td>
      </tr>
      <tr class="t1Row">
        <td>Firefox</td>
        <td>51.0及以上版本</td>
      </tr>
      <tr class="t2Row">
        <td>Chrome</td>
        <td>57.0.2987.110及以上版本</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal"> </p>
  <p class="myNormal">登录 iPortal 后，可通过以下方式之一访问数据上图 WebApp 进而创建地图资源（要求用户是“创建者”类型且拥有创建、删除、更新地图权限的角色，如 <span style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-indent: 24px; widows: 2; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline ! important ; float: none;">PORTAL_USER。</span>iPortal 的用户类型及权限划分，详见：<a class="contentpagehyperlink" href="../../iportal_management/Portal_Security/RolesandPermissions.htm">角色、用户类型和权限</a>）：</p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">
      <p><span style="line-height: normal;">在</span>首页点击“数据上图<span style="font-size: 13px; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline ! important ; float: none;">”，开始在线创建地图；</span></p>
    </li>
    <li class="SymbolList1">
      <p><span style="line-height: normal;">在“资源中心”&gt;</span>“地图”页面<span style="line-height: normal;">，点击右侧“创建地图”。</span></p>
    </li>
  </ul>
  <p class="myNormal"> </p>
  <p class="myNormal">在线创建地图的基本流程是<a class="contentpagehyperlink" href="build_map/addBasemap.htm">选择底图</a>、<a class="contentpagehyperlink" href="build_map/addlayer.htm">添加图层</a>、<a class="contentpagehyperlink" href="build_map/modifyLayerstyle.htm">定义图层样式</a>、<a class="contentpagehyperlink" href="build_map/savaandshare.htm">成果输出</a>。您可以根据具体需求添加图层，如：<a class="contentpagehyperlink" href="build_map/addlayer.htm#通过文件添加">通过文件添加</a>、<a class="contentpagehyperlink" href="build_map/addlayer.htm#通过搜索添加">通过搜索添加</a>、<a class="contentpagehyperlink" href="build_map/addlayer.htm#通过_Web_添加">通过 Web 添加</a>，<a class="contentpagehyperlink" href="build_map/addlayer.htm#添加标注图层">添加标注图层</a>直接绘制点、线、面，添加标注 （Marker）。此外，您还可以根据具体需求进行<a class="contentpagehyperlink" href="build_map/layerSetting.htm">图层设置</a>、<a class="contentpagehyperlink" href="build_map/mapSetting.htm">地图设置</a>、<a class="contentpagehyperlink" href="build_map/controlUsing.htm">控件使用</a>、<a class="contentpagehyperlink" href="build_map/dataandservice.htm">属性查询与编辑</a>。在制作地图的过程中请注意随时保存添加的内容，创建完成地图后，请确认保存。</p>
  <p class="myNormal">注：在使用“数据上图”前，门户管理员可以到“管理”<span>&gt;“应用中心配置”&gt;</span>“数据上图”页面，进行<a class="contentpagehyperlink" href="../../iportal_management/Portal_config/mapping_config/mapping_Config.htm">数据上图配置</a>。</p>
  <ul class="referenceList">
    <li class="referenceList" style="color: #000000;"><a href="build_map/addBasemap.htm">选择底图</a></li>
    <li class="referenceList" style="color: #000000;"><a href="build_map/addlayer.htm">添加图层</a></li>
    <li class="referenceList" style="color: #000000;"><a href="build_map/modifyLayerstyle.htm">定义图层样式</a></li>
    <li class="referenceList" style="color: #000000;"><a href="build_map/layerSetting.htm">图层设置</a></li>
    <li class="referenceList" style="color: #000000;"><a href="build_map/mapSetting.htm">地图设置</a></li>
    <li class="referenceList" style="color: #000000;"><a href="build_map/controlUsing.htm">使用控件</a></li>
    <li class="referenceList" style="color: #000000;"><a href="build_map/dataandservice.htm">属性查询与编辑</a></li>
    <li class="referenceList" style="color: #000000;"><a href="build_map/savaandshare.htm">成果输出</a></li>
  </ul>
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
    gTopicId = "4.2.1.1"
  
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