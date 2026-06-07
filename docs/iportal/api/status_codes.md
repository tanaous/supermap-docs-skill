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
  <meta name="topic-check-list" content="Ran Smart Index"/>
  <meta name="topic-status" content="Complete"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>状态码列表及说明</title>
  <link rel="StyleSheet" href="../../assets/css/SuperMapHelp.css" type="text/css"/>
  <meta name="rh-index-keywords" content="状态码列表及说明"/>
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
  <p class="myNormal">客户端向 SuperMap iServer 服务器发送 HTTP 请求时，SuperMap iServer 服务器会根据请求的类型返回响应结果，通过响应结果中的状态码，客户端可以得知请求的处理情况。例如：是否成功、出错的原因，等等。</p>
  <p class="myNormal">HTTP 协议定义了各个状态码代表的意义，官方定义有41种状态码，分5类，如下：</p>
  <ul class="supportList" style="list-style: disc;">
    <li class="supportList">1xx：信息性——收到请求，继续处理</li>
    <li class="supportList">2xx：成功性——成功收到、理解并接受行动</li>
    <li class="supportList">3xx：重定向——必须采取进一步行动来完成请求</li>
    <li class="supportList">4xx：客户端错误——请求包含错误语法或不能完成</li>
    <li class="supportList">5xx：服务器错误——服务器没有成功完成显然有效的请求</li>
  </ul>
  <p class="myNormal">SuperMap iServer 主要用到其中的2xx 系列、4xx 系列和5xx 系列，各个状态码的含义如下表所示：</p>
  <table align="center" cellspacing="0" class="iServerTable" width="90%">
    <colgroup>
      <col style="width: 20%;"/>
      <col style="width: 80%;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center">
          <p>状态码值</p>
        </td>
        
        <td style="text-align: center">
          <p>含义</p>
        </td>
      </tr>
      <tr class="t2Row">
        <td>
          <p style="text-align: center;">200</p>
        </td>
        <td>
          <p>表示服务器成功执行了客户端的 HTTP 请求。</p>
          <p>如果请求的类型是 GET 说明获取资源成功，是 PUT 说明修改资源成功，是 DELETE 说明删除资源成功，是 HEAD 说明获取资源的元数据成功。</p>
        </td>
      </tr>
      <tr class="t1Row">
        <td>
          <p style="text-align: center;">201</p>
        </td>
        <td>
          <p>表示服务器按客户端的请求成功创建了一个新资源。对应的请求类型是 POST 或 PUT。</p>
          <p>注意，这时返回的信息中会包含 Location 报头，指向新创建资源的规范 URI。</p>
        </td>
      </tr>
      <tr class="t2Row">
        <td>
          <p style="text-align: center;">303</p>
        </td>
        <td>
          <p>表示服务器将客户端的请求重定向到另一个 URI，要完成请求必须进行进一步操作。</p>
          <p>例如，在访问 image 资源时，redirect 参数为 true（默认值）则表示重定向图片，URI 如下：</p>
          <p style="text-indent: 36px;">http://supermapiserver:8090/iserver/services/map-world/rest/maps/World Map/image.png?center={&quot;x&quot;:103,&quot;y&quot;:34}&amp;scale=0.00000002&amp;<span style="font-weight: bold;">redirect=true</span></p>
          <p>HTTP 响应的状态码为 303，并重定向到图片地址。</p>
        </td>
      </tr>
      <tr class="t1Row">
        <td>
          <p style="text-align: center;">400</p>
        </td>
        <td>
          <p>表示客户端的请求参数不合法或没有表达足够的信息。</p>
          <p style="font-style: normal;">例如，对 layers 资源执行 POST 操作创建一个新的图层，即 layer 资源，但如果没有在请求体里给出创建新图层必须的参数，即图层的描述信息，这时就会得到响应码400。</p>
        </td>
      </tr>
      <tr class="t2Row">
        <td>
          <p style="text-align: center;">401</p>
        </td>
        <td>
          <p>表示因为安全的原因，导致对资源的操作没有完成。</p>
          <p style="font-style: normal;">例如，删除数据集，可以对 dataset 资源执行 DELETE 请求（包含参数），URI 如下：</p>
          <p style="margin-left: 40px; font-style: normal;">http://supermapiserver:8090/iserver/services/data-world/rest/data/datasources/name/World/datasets/name/Countries.rjson</p>
          <p style="margin-left: 0px;">而创建新图层需要管理员权限，假设某个客户端没有这个权限，当它执行以上请求时，就会得到响应码401。</p>
        </td>
      </tr>
      <tr class="t1Row">
        <td>
          <p style="text-align: center;">404</p>
        </td>
        <td>
          <p>表示客户端请求的资源不存在，即 URI 无效。</p>
          <p style="font-style: normal;">例如，在获取名为 World 的 map 资源时，对如下 URI 执行 GET 请求：</p>
          <p style="margin-left: 40px; font-style: normal;">http://supermapiserver:8090/iserver/services/components-rest/rest/maps/World.json</p>
          <p style="font-style: normal;">正常返回响应码200，说明成功获取资源；但当服务器（server）里根本没有名为 World 的 map 资源时，就会返回响应码404，表示资源无效。</p>
        </td>
      </tr>
      <tr class="t2Row">
        <td>
          <p style="text-align: center;">405</p>
        </td>
        <td>
          <p>表明资源不支持该操作。</p>
          <p style="font-style: normal;">例如：对 maps 资源执行 PUT 和 DELETE 请求会得到响应码405，表示 maps 资源对 PUT 和 DELETE 不支持。</p>
        </td>
      </tr>
      <tr class="t1Row">
        <td>
          <p style="text-align: center;">406</p>
        </td>
        <td>
          <p>表示资源不支持客户端请求的表述格式（参见 SuperMap iServer REST API 输出格式介绍）。</p>
          <p style="font-style: normal;">例如，在获取 maps 资源时，对如下 URI 执行 GET 请求：</p>
          <p style="margin-left: 40px; font-style: normal;">http://supermapiserver:8090/iserver/services/components-rest/rest/maps.bmp</p>
          <p style="font-style: normal;">因为 maps 不是图片资源，所以不支持 BMP 的表述格式，这时就会得到响应码406。</p>
        </td>
      </tr>
      <tr class="t2Row">
        <td>
          <p style="text-align: center;">500</p>
        </td>
        <td>
          <p>表示服务器端发生非预期情况，导致请求没有完成。</p>
        </td>
      </tr>
    </tbody>
  </table>
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
    gTopicId = "8.2.0_3"
  
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