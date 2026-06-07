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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>管理资源层次结构</title>
<link rel="stylesheet" type="text/css" href="../../assets/css/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="../../assets/css/css/hTree.css"/>
<script type="text/javascript" src="../../assets/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../../assets/js/hTree.js"></script>
<script type="text/javascript" src="../../assets/js/resourceManagerTree.js"></script>
<meta name="rh-index-keywords" content="TspPath:服务管理资源层次结构"/><meta name="rh-version" content="2022.1.188"/>
  
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
   