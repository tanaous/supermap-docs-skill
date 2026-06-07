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

<meta name="template" content="../../assets/layouts/RESTCommon.htt"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Language" content="zh-CN"/>
<meta name="generator" content="Adobe RoboHelp 2022"/>
<title>基于 Token 访问受保护的 REST 服务资源</title>
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
<p class="myNormal">SuperMap iServer 服务管理器中提供安全模块，通过基于用户身份识别的认证和授权，实现对服务的访问控制。<a class="contentpagehyperlink" href="../../Server_Service_Management/Security.htm#开启服务安全">开启服务安全</a>后，服务就受到了保护，只有授权的角色所对应的用户才能<a class="contentpagehyperlink" href="../../Subject_introduce/Security/config_role/token/accessserviceswithtoken.htm">访问受保护的服务</a>资源。</p>
<p class="myNormal">此外，SuperMap iServer 提供了一种基于 Token（令牌）的用户身份验证机制，使在访问受保护的服务资源时仅需提供 
 Token，而不需要提供用户名和密码。用户凭借合法的用户名和密码即可<a class="contentpagehyperlink" href="../../Subject_introduce/Security/config_role/token/acquiringsupermap_token.htm">获取 
 Token</a>，然后可携带 Token 访问相应的已授权的服务。SuperMap iServer 提供的 GIS 服务（详见<a class="contentpagehyperlink" href="resource_hierarchy.htm">GIS 
 服务资源层次结构</a>）、OGC 服务、服务管理（<a class="contentpagehyperlink" href="Resources_Manager_Architecture.htm">服务管理资源层次结构</a>）和门户（<a class="contentpagehyperlink" href="iPortalArchitecture.htm">门户资源层次结构</a>）的所有资源，均支持通过 Token 来访问，只需在访问时添加“token”参数即可。需要注意的是，访问受保护的服务中的每一个资源时，都要携带“token”参数。</p>
<p class="myNormal">示例：</p>
<ol>
	<li>访问 map-china/rest 服务：</li>
</ol>
<p class="myNormal">http://localhost:8090/iserver/services/map-china/rest.rjson?token=NZkILm9Tl2FGzwK_nUh9krlHOtO0ds83lDoARA85_rMveuTyK0TyGcYV-5rn3wUYE-MSNPlw6wKnewy8jek_JQ..</p>
<ol start="2">
	<li>访问 tileImage 资源获取地图切片：</li>
</ol>
<p class="myNormal">http://localhost:8090/iserver/services/map-china/rest/maps/China/tileImage.png?token=NZkILm9Tl2FGzwK_nUh9krlHOtO0ds83lDoARA85_rMveuTyK0TyGcYV-5rn3wUYE-MSNPlw6wKnewy8jek_JQ..</p>
<ol start="3">
	<li><a class="contentpagehyperlink" href="../../Server_Service_Management/StartaServicebyREST_API.htm">GIS 
	 服务的快速发布（通过 REST API）</a></li>
</ol>
<ol start="4">
	<li>注册服务（通过 REST API）</li>
</ol>
<p class="myNormal">SuperMap iPortal 的 REST API 提供了注册服务的功能，可以通过<a class="contentpagehyperlink" href="Portal/services/services.htm#POST 请求"> 
 services 资源的 POST 请求</a>来实现。</p>
<p class="myNormal">对于门户中所有受保护的资源，通过 REST 方式访问和使用时需要携带验证信息，比如可以在 HTTP 请求头中携带<a class="contentpagehyperlink" href="../../Subject_introduce/Security/config_role/HTTP_Form.htm">Cookie 
 信息</a>，或者可以基于 Token 访问受保护的 REST 服务资源。其中 Cookie 信息可以在登录时获取，而 SuperMap Token 
 可以通过 token 资源<a class="contentpagehyperlink" href="../../Subject_introduce/Security/config_role/token/AcquiringSuperMap_Token.htm">获取</a>。</p>
<p class="myNormal">通过 services 资源注册单个服务，不需要提供用户名和密码，仅需携带令牌 token=9jD451OhUlsDSJkJe9Wb34AkFS5k8I6FMy2UriguJkS2X-qXofeME0gSDTgW6003REFso7YhS3E5TNdzUoQWXg..。</p>
<p class="myNormal">对 services 资源发送 POST 请求：</p>
<p class="myCodeP">http://localhost:8090/iportal/web/services.rjson?token=9jD451OhUlsDSJkJe9Wb34AkFS5k8I6FMy2UriguJkS2X-qXofeME0gSDTgW6003REFso7YhS3E5TNdzUoQWXg..</p>
<p class="myNormal">注册一个 SuperMap REST 服务，传入 rjson 请求体如下：</p>
<p class="myCodeP">{</p>
<p class="myCodeP">    &quot;type&quot;: &quot;SUPERMAP_REST&quot;,</p>
<p class="myCodeP">    &quot;tags&quot;: [</p>
<p class="myCodeP">        &quot;China&quot;</p>
<p class="myCodeP">    ],</p>
<p class="myCodeP">    &quot;authorizeSetting&quot;: 
 [</p>
<p class="myCodeP">        {</p>
<p class="myCodeP">            &quot;entityName&quot;: 
 &quot;GUEST&quot;,</p>
<p class="myCodeP">            &quot;entityType&quot;: 
 &quot;USER&quot;,</p>
<p class="myCodeP">            &quot;permissionType&quot;: 
 &quot;READ&quot;</p>
<p class="myCodeP">        }</p>
<p class="myCodeP">    ],</p>
<p class="myCodeP">    &quot;metadata&quot;: {</p>
<p class="myCodeP">        &quot;mdContact&quot;: 
 {</p>
<p class="myCodeP">            &quot;rpIndName&quot;: 
 &quot;&quot;,</p>
<p class="myCodeP">            &quot;rpOrgName&quot;: 
 &quot;&quot;,</p>
<p class="myCodeP">            &quot;rpPosName&quot;: 
 &quot;&quot;,</p>
<p class="myCodeP">            &quot;rpCntInfo&quot;: 
 {</p>
<p class="myCodeP">                &quot;cntAddress&quot;: 
 {</p>
<p class="myCodeP">                    &quot;delPoint&quot;: 
 &quot;&quot;,</p>
<p class="myCodeP">                    &quot;city&quot;: 
 &quot;&quot;,</p>
<p class="myCodeP">                    &quot;adminArea&quot;: 
 &quot;&quot;,</p>
<p class="myCodeP">                    &quot;postCode&quot;: 
 &quot;&quot;,</p>
<p class="myCodeP">                    &quot;country&quot;: 
 &quot;&quot;,</p>
<p class="myCodeP">                    &quot;eMailAdd&quot;: 
 &quot;&quot;</p>
<p class="myCodeP">                },</p>
<p class="myCodeP">                &quot;voiceNum&quot;: 
 &quot;&quot;,</p>
<p class="myCodeP">                &quot;faxNum&quot;: 
 &quot;&quot;</p>
<p class="myCodeP">            }</p>
<p class="myCodeP">        },</p>
<p class="myCodeP">        &quot;dataIdInfo&quot;: 
 {</p>
<p class="myCodeP">            &quot;dataIdent&quot;: 
 {</p>
<p class="myCodeP">                &quot;idCitation&quot;: 
 {</p>
<p class="myCodeP">                    &quot;resTitle&quot;: 
 &quot;map&quot;</p>
<p class="myCodeP">                },</p>
<p class="myCodeP">                &quot;idAbs&quot;: 
 &quot;&quot;</p>
<p class="myCodeP">            }</p>
<p class="myCodeP">        },</p>
<p class="myCodeP">        &quot;distInfo&quot;: 
 {</p>
<p class="myCodeP">            &quot;onLineSrc&quot;: 
 {</p>
<p class="myCodeP">                &quot;linkage&quot;: 
 &quot;http://192.168.112.217:8090/iserver/services/map-china/rest&quot;</p>
<p class="myCodeP">            }</p>
<p class="myCodeP">        }</p>
<p class="myCodeP">    }</p>
<p class="myCodeP">}</p>
<p class="myNormal">其中：</p>
<ul style="list-style: circle;" class="SymbolList2">
	<li class="SymbolList2">type：必选参数，需要注册的服务的类型。目前支持用户申请注册 SuperMap REST 
	 服务、OGC 服务（WMS、WMTS、WFS、WCS、WPS）、ArcGIS REST 服务以及其他类型的服务。</li>
	<li class="SymbolList2">tags：必选参数，需要注册的服务的标签。</li>
	<li class="SymbolList2">authorizeSetting：必选参数，需要注册的服务的权限类型，包括：DELETE（只有服务注册者可查看/编辑/删除）、READ（所有人可查看或者指定用户可查看）。</li>
	<li class="SymbolList2">metadata：需要注册的服务的元信息，其中 &quot;resTitle&quot; 
	 服务名称和 &quot;linkage&quot; 服务地址为必选参数。</li>
</ul>
<p class="myNormal">上述 POST 请求发送后，服务端返回注册的服务如下所示：</p>
<p class="myCodeP">{</p>
<p class="myCodeP">    &quot;newResourceID&quot;: &quot;115&quot;,</p>
<p class="myCodeP">    &quot;newResourceLocation&quot;: 
 &quot;http://localhost:8090/iportal/web/services/115&quot;,</p>
<p class="myCodeP">    &quot;succeed&quot;: true</p>
<p class="myCodeP">}</p>
<p class="myNormal">即为申请注册的服务的 ID 和服务地址，此时还需要管理员的审核，审核通过后才能注册到 iPortal 
 中。关于管理员的服务审核资源可以访问 <a class="contentpagehyperlink" href="Portal/services/servicesCheckStatus.htm">servicesCheckStatus 
 资源</a>。</p>
<p class="myNormal">用户可以通过 REST API 以多种表述格式申请 Token，详见 <a class="contentpagehyperlink" href="root/tokens.htm">tokens</a> 
 资源。</p>
<p class="myNormal"> </p>


<p><br/></p></div>
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
    gTopicId = "8.2.1_1"
  
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