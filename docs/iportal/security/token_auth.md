<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3, user-scalable=yes"/>
  <meta name="version" content="2022.1.0"/>
  <link rel="StyleSheet" href="../../../../template/styles/topic.min.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" type="text/css" href="../../../../template/OnlineHelpFrameiPortal/layout.css"/>
  <link rel="StyleSheet" data-skin="true" href="../../../../template/OnlineHelpFrameiPortal/userstyles.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" href="../../../../template/OnlineHelpFrameiPortal/homeButtom.css" type="text/css"/>
  <link rel="stylesheet" data-skin="true" href="../../../../template/OnlineHelpFrameiPortal/index_Home.css" type="text/css"/>
  
    <link rel="shortcut icon" type="image/png" href="../../../../iportal-icon.png"/>
    
  <script data-relpath="../../../.." src="../../../../template/scripts/csh-redirect.js" type="text/javascript"></script>

  <meta name="template" content="../../../../assets/layouts/SuperMapiServerMain.htt"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Content-Language" content="zh-CN"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <meta name="topic-status" content="Complete"/>
  <meta name="topic-check-list" content="Ran Smart Index"/>
  <title>基于 Token 的认证</title>
  <link rel="StyleSheet" href="../../../../assets/css/SuperMapHelp.css" type="text/css"/>
  <script type="text/javascript" src="../../../../assets/js/shCore.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushBash.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushCpp.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushCSharp.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushCss.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushDelphi.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushDiff.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushGroovy.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushJava.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushJScript.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushPhp.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushPlain.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushPython.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushRuby.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushScala.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushSql.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushVb.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushXml.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/ConfigiServer6R.js">
  </script>
  <meta name="rh-index-keywords" content="基于 Token 的认证,Token认证"/>
<meta name="rh-version" content="2022.1.188"/>
  
  <link rel="stylesheet" type="text/css" href="../../../../assets/css/common_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../../../assets/css/index_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../../../assets/css/homeButtom.css"/>
  <script src="../../../../assets/js/jQuery.js"></script>
  <script type="text/javascript" src="../../../../assets/js/ResourceCenter_Hover.js"></script>
<meta name="rh-version" content="2022.1.188"/></head>

<body class="rh-BODY-wrapper">
  <header class="RH-LAYOUT-HEADER-container" role="banner">
   <div class="enterAllProductsHome only-online" style="display:none"> 
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;../../../../assets/images/EnterAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;../../../../assets/images/EnterAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
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
		    <img src="../../../../assets/images/MoreProducts.svg"/>
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
      <div class="TopNavigation1"><a class="TopNavigationLink" href="../../../../iP/Install_Uninstal_iportal/install_uninstall.htm">安装</a></div>
      <div class="TopNavigation2"><a class="TopNavigationLink" href="../../../../iP/iportal_usage/gettingStarted.htm">使用</a></div>
      <div class="TopNavigation3"><a class="TopNavigationLink" href="../../../../iP/iportal_management/admin_gettingStarted.htm">管理</a></div>
	  <div class="TopNavigation4"><a class="TopNavigationLink" href="../../../../API\iServer_API_reference.htm">开发</a></div>
    </div>
    <div class="search-placeholder-class" id="search-with-help"></div>
	<div class="home_bottom_bg_topic only-online" style="display:none" id="bottomContainer">
      <div class="dropdown language">
        <div class="flex-row showArea" id="language_switch" onclick="showLanguagePanel()" style="min-width: 85px;">
          <div class="language_text">语言切换</div>
          <img class="home_bottom_dropdown_icon" src="../../../../assets/images/Expand_Black.svg"/>
        </div>
        <div class="dropdownMenu" id="language_list" style="display: none; text-align: center;">
        </div>
      </div>
      <div class="BannerVerticalLineRight">|</div>
      <div class="dropdown version">
        <div class="flex-row showArea_version" id="version_switch" onclick="showVersionPanel()" style="min-width: 85px; height: 40px;">
          <div class="language_text">版本切换</div>
          <img class="home_bottom_dropdown_icon" src="../../../../assets/images/Expand_Black.svg"/>
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
  <p class="myNormal">SuperMap iServer 提供了一种基于 Token（令牌）的用户身份验证机制，使用户在访问受保护的服务资源时仅需提供 Token，而不需要提供用户名和密码。Token 是包含用户名、有效期和某些专有信息并通过<a class="contentpagehyperlink" href="TonkenConfig.htm">共享密钥</a>加密的信息字符串。用户向 SuperMap iServer 申请 Token 时需要提供用户名和密码，服务端验证通过后会将相应的 Token 返回给用户。</p>
  <p class="myNormal">用户访问受保护的服务时，如通过 REST、Web Application 等方式，只需要提供正确的 Token 就可以访问相关服务资源。对于通过 Web Application 访问 GIS 服务的用户来说，这种认证方式可以有效避免服务器的用户账户泄露。目前，SuperMap iServer 服务列表（http://localhost:8090/iserver/services）中的所有服务类型均支持基于 Token 的认证，包括各个 REST 服务模块、OGC 服务等。</p>
  <p class="myNormal">对于已经<a class="contentpagehyperlink" href="../authorization.htm">授权访问服务</a>的用户，获取和使用 Token 的总体流程：</p>
  <ol class="ListInParagraph" style="list-style: decimal;">
    <li class="ListInParagraph">用户凭借自身的账户申请和获取 Token，详见<a class="contentpagehyperlink" href="AcquiringSuperMap_Token.htm">获取 Token</a>。</li>
    <li class="ListInParagraph">携带已获取的 Token 访问受保护的 iServer 服务和相关资源，详见<a class="contentpagehyperlink" href="accessServicesWithToken.htm">访问受保护的服务资源</a>。SuperMap iServer 提供的 GIS 服务（详见<a class="contentpagehyperlink" href="../../../../mergedProjects/SuperMapiServerRESTAPI/resource_hierarchy.htm">GIS 服务资源层次结构</a>）和服务管理的所有资源（详见<a class="contentpagehyperlink" href="../../../../mergedProjects/SuperMapiServerRESTAPI/Resources_Manager_Architecture.htm">服务管理资源层次结构</a>），均支持通过 Token 来访问。</li>
  </ol>
  <p class="myNormal">Token 的生成除了需要<a class="contentpagehyperlink" href="AcquiringSuperMap_Token.htm">获取 Token</a>时用户输入的信息外，还需要服务器端指定的加密密钥。系统管理员可以对生成 Token 的共享密钥进行配置，详细请参考<a class="contentpagehyperlink" href="TonkenConfig.htm">配置 Token 共享密钥</a>。</p>
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
    <div class="home_bottom_img"><a href="https://www.supermap.com" target="_blank"><img src="../../../../assets/images/超图logo.png" style="height: 32px;"/> <span class="copyright_text">
          <script>
            //<![CDATA[
            copyright();
            //]]>
          </script>
        </span> </a></div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea" id="language_switch"><img src="../../../../assets/images/在线服务.svg" style="width: 16px; margin-left: 6px;"/>
      <div class="language_text" style="margin-left: 10px; min-width: 65px;">语言切换</div>
      <img class="home_bottom_dropdown_icon" src="../../../../assets/images/展开.svg"/>
    </div>
    <div class="dropdownMenu" id="language_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default">简体中文</div>
              <div class="text_switch_default">EN</div-->
    </div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea_version" id="version_switch">
      <div class="language_text" style="margin-left: 25px; min-width: 65px; color: black;">版本切换</div>
      <img class="home_bottom_dropdown_icon" src="../../../../assets/images/Expand_Black.svg" style="margin-top: 10px"/> <img src="../../../../assets/images/EnterAllProducts.svg"/>
    </div>
    <div class="dropdownMenu" id="version_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default" >11.1.0</div>-->
    </div>
  </div>
  <div style="display: none">
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;assets/images/ExpandAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;assets/images/hideAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
    <div class="AllProductsHelp" id="AllProductsHelp">
      <div class="DetailProducts1"><a href="http://help.supermap.com/ImageXPro"><img src="../../../../assets/images/SuperMapImageXPro.svg"/></a></div>
      <div class="DetailProducts2"><a href="http://help.supermap.com/iMaritimeEditor"><img src="../../../../assets/images/SuperMapiMaritimeEditor.svg"/></a></div>
      <div class="Products"><a href="http://help.supermap.com/Editor/">SuperMap Editor<img src="../../../../assets/images/Expand_Black.svg"/></a></div>
      <div class="MoreProducts">
        <div><a href="http://help.supermap.com">更多产品帮助</a></div>
        <div style="margin-left: 13px;"><img src="../../../../assets/images/MoreProducts.svg"/></div>
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

    gRootRelPath = "../../../.."
    gCommonRootRelPath = "../../../.."
    gTopicId = "1.1.1.2.1"
  
//]]></script>

  <script src="../../../../template/OnlineHelpFrameiPortal/tocconfig.js"></script>
  <script src="../../../../template/OnlineHelpFrameiPortal/topicpagefix.js"></script>
  <script src="../../../../template/OnlineHelpFrameiPortal/env.js"></script>
  <script src="../../../../whxdata/layoutconfig.js"></script>
  <script src="../../../../whxdata/brsdata.js"></script>

  
    

            

<script>
  //<![CDATA[
  showOnlyOnlineDom();
  //]]>
</script>

</body></html>