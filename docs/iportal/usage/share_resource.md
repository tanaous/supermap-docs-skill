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
  <meta name="topic-check-list" content="Ran Smart Index"/>
  <meta name="topic-status" content="Complete"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>共享资源入门</title>
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
  <p class="myNormal">SuperMap iPortal 提供了资源共享功能，您可在首次增加资源时进行共享设置，也可在“资源中心”&gt;“我的资源”对已创建的资源修改共享设置。此外，具有资源管理权限的管理员可以管理门户所有用户的资源，修改资源的共享设置，具体请详见：<a class="contentpagehyperlink" href="../../iportal_management/resourceManag.htm">资源管理</a>。</p>
  <p class="myNormal">iPortal 中资源的共享范围包括：私有、公开（公开检索/查看/编辑）、指定人（可指定部门、群组和用户检索/查看/编辑）。其中指定人（指定部门、群组和用户）支持管理员在 <a class="contentpagehyperlink" href="../../Install_Uninstal_iportal/iPortal_config.htm#6.__shareSetting_">iportal.xml</a> 配置文件中进行配置，例如：管理员未开启共享到部门，则您在进行共享设置时，在指定人选项中看不到添加具体部门这项设置。</p>
  <ul style="list-style: disc;">
    <li class="SymbolList1"><span style="font-weight: bold;">私有</span>：未开启共享时，资源是私有状态。此时，仅资源的创建者和有管理权限的管理员可查看/编辑/删除资源、查看/编辑资源详情、更改共享设置。</li>
    <li class="SymbolList1"><span style="font-weight: bold;">公开检索</span>：所有用户（包括匿名用户）可检索资源并查看资源详情，但不能查看资源。被共享人若要查看资源，需进行<a class="contentpagehyperlink" href="../apply%26authorizeResource.htm">资源授权申请</a>。</li>
    <li class="SymbolList2">为资源设置公开检索权限时，支持给指定部门/群组/用户设置查看权限。</li>
    <li class="SymbolList1"><span style="font-weight: bold;">公开查看/下载</span>：所有用户（包括匿名用户）可查看资源及详情。</li>
    <li class="SymbolList2">若资源是<a class="contentpagehyperlink" href="../add_resource/data.htm#uploadData">托管数据</a>，支持设置公开下载。</li>
    <li class="SymbolList2">若资源是 Notebook，用户只能查看资源和详情，不能运行 Notebook 代码（需编辑权限）。</li>
    <li class="SymbolList2">若资源是地图、洞察、场景、大屏、应用、Notebook，公开查看同时支持开启编辑权限给指定的部门/群组/用户。例如：一幅精美的地貌晕染图所有人都能浏览，但是背后只有一个专业团队进行编辑创作。</li>
    <li class="SymbolList1"><span style="font-weight: bold;">公开编辑</span>：所有用户（仅登录用户）可编辑资源及详情。支持的资源：地图、洞察、场景、大屏、应用、Notebook。</li>
    <li class="SymbolList1"><span style="font-weight: bold;">仅指定人检索/查看/编辑/下载</span>：</li>
    <li class="SymbolList2">指定人可以是部门、群组、或具体用户。可以指定检索、查看、编辑（支持资源：地图、洞察、场景、大屏、应用、Notebook）、下载（支持资源：<a class="contentpagehyperlink" href="../add_resource/data.htm#uploadData">托管数据</a>）权限。</li>
    <li class="SymbolList2">选择“仅指定人”时，仅指定的部门/群组/用户可在“资源中心”&gt;“公开”/“分享与我”中查看相应权限的共享资源。</li>
    <li class="SymbolList2">指定部门选项，需管理员启用<a class="contentpagehyperlink" href="../../iportal_management/Portal_Security/organiz_struc_set.htm">组织结构</a>（默认禁用状态），并在 <a class="contentpagehyperlink" href="../../Install_Uninstal_iportal/iPortal_config.htm#6.__shareSetting_">iportal.xml</a> 配置文件中打开共享到部门的配置项（默认未打开）。</li>
    <li class="SymbolList2">指定群组选项，要求您已加入至少一个群组（可以是群组创建者或是群组成员），且拥有贡献资源的权限。即该项配置只会列出您有权限贡献资源的群组。关于群组的创建、加入与使用，详见：<a class="contentpagehyperlink" href="../groups_usage/group_get_start.htm">群组</a>。同时，也需管理员在 <a class="contentpagehyperlink" href="../../Install_Uninstal_iportal/iPortal_config.htm#6.__shareSetting_">iportal.xml</a> 配置文件中打开共享到群组的配置项（默认已打开）。</li>
    <li class="SymbolList2">指定用户选项，需管理员在 <a class="contentpagehyperlink" href="../../Install_Uninstal_iportal/iPortal_config.htm#6.__shareSetting_">iportal.xml</a> 配置文件中打开共享到指定用户的配置项（默认已打开）。管理员也可在  <a class="contentpagehyperlink" href="../../Install_Uninstal_iportal/iPortal_config.htm#6.__shareSetting_">iportal.xml</a> 配置文件中配置在共享给指定用户时，是否列出所有用户。如果门户用户数量较多，管理员还可以在<a class="contentpagehyperlink" href="../../Install_Uninstal_iportal/iPortal_config.htm#27._securitySetting_"> iportal.xml</a> 配置文件中将用户名搜索模式设置为模糊匹配，以提高查找效率。</li>
    <li class="SymbolList2">若为服务资源设置“仅指定人查看”权限，还可更细粒度地限定共享的<a class="contentpagehyperlink" href="share_serviceResource.htm#restrictExtent">空间范围</a>。</li>
  </ul>
  <p class="myNormal">为资源设置完共享权限后，相应用户即可从“资源中心”&gt;“公开”/“分享与我”/“我的组织”/“我的群组”查看到共享的资源。未开启共享的私有资源仅能从“我的资源”查看到。</p>
  <p class="myNormal"><span style="font-weight: bold;">注意</span>：如果您的地图、洞察、大屏和应用资源中包含与该资源共享方式不一致的关联资源，您在进行共享设置时还需要选择是否同步更新这些资源的共享权限。</p>
  <p class="myNormal"> </p>
  <ul class="referenceList">
    <li class="referenceList"><span><a class="contentpagehyperlink" href="share_dataResource.htm" style="text-decoration: underline; ">共享数据</a></span></li>
    <li class="referenceList"><span><a class="contentpagehyperlink" href="share_serviceResource.htm" style="text-decoration: underline; ">共享服务</a></span></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="shareMap.htm">共享地图</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="shareScene.htm">共享场景</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="shareMD.htm">共享大屏</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="shareBuilderX.htm">共享应用</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="shareInsights.htm">共享洞察</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="shareProjects.htm">共享项目</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="shareNotebook.htm">共享 Notebook</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="shareGPAModel.htm">共享GPA模型</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="share3dDesign.htm">共享3D设计</a></li>
  </ul>
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
    gTopicId = "4.4"
  
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