<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3, user-scalable=yes"/>
  <meta name="version" content="2022.1.0"/>
  <link rel="StyleSheet" href="../template/styles/topic.min.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" type="text/css" href="../template/OnlineHelpTemplate/layout.css"/>
  <link rel="StyleSheet" data-skin="true" href="../template/OnlineHelpTemplate/userstyles.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" href="../template/OnlineHelpTemplate/homeButtom.css" type="text/css"/>
  <link rel="stylesheet" data-skin="true" href="../template/OnlineHelpTemplate/common_Home.css" type="text/css"/>
  <link rel="stylesheet" data-skin="true" href="../template/OnlineHelpTemplate/index_Home.css" type="text/css"/>
  
    <link rel="shortcut icon" type="image/svg+xml" href="../AIAssistantLogo.svg"/>
    
  <script data-relpath=".." src="../template/scripts/csh-redirect.js" type="text/javascript"></script>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>工具集管理</title>
  <meta name="topic-status" content="Draft"/>
  <link rel="stylesheet" type="text/css" href="../assets/css/default.css"/>
  <meta http-equiv="Content-Language" content="zh-CN"/>
  <link rel="stylesheet" type="text/css" href="../SuperMapHelp.css"/>
  <script type="text/javascript" src="../SuperMapHelpCode.js" charset="utf-8"></script>
  <link rel="stylesheet" type="text/css" href="../SuperMapHelpCode.css"/>
<meta name="rh-version" content="2022.1.188"/>
  
  
  <link rel="stylesheet" type="text/css" href="../assets/css/common_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../assets/css/index_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../assets/css/homeButtom.css"/>
  <script src="../assets/js/jQuery.js"></script>
  <script type="text/javascript" src="../assets/js/ResourceCenter_Hover.js"></script>
<meta name="rh-version" content="2022.1.188"/></head>

<body class="rh-BODY-wrapper">
	<header class="RH-LAYOUT-HEADER-container" role="banner">
		
    
		<div class="BannerVerticalLineLeftTopic">|</div>
		<div class="RH-LAYOUT-HEADER-logo-box  ">
      <div class="RH-LAYOUT-HEADER-logo" id="logo-holder"></div>
    </div>
    <div class="TopicTopNavigation">
      <div class="TopNavigation1"><a class="TopNavigationLink" href="../Introduction\Introduction.htm">入门</a></div>
	   <div class="TopNavigation2"><a class="TopNavigationLink" href="../Development\Deployment.htm">部署</a></div>
      <div class="TopNavigation3"><a class="TopNavigationLink" href="../FunctionDocument\FunctionDocument.htm">使用</a></div>
	  <div class="TopNavigation3"><a class="TopNavigationLink" href="../Management\overview.htm">管理</a></div>
    </div>
    <div class="search-placeholder-class" id="search-with-help"></div>
      <div class="home_bottom_bg_topic" id="bottomContainer">
    <div class="RH-LAYOUT-HEADERMENU-container" id="header-menu"></div>
  </div></header>
  <main role="main" class="RH-LAYOUT-BODY-container">
    <div class="RH-LAYOUT-SEARCHRESULTS" id="rh-searchresults"></div>
    <div class="RH-LAYOUT-LEFTPANEL-container" id="rh-leftpanel"></div>
    <div class="rh-layout-BODY-main" id="rh-layout-main">
      <div class="RH-LAYOUT-TOOLBAR-toolbar-box" id="rh-toolbar" style="z-index: 1; top: 249px;"></div>
      <div class="rh-layout-BODY-body">
        <div class="RH-LAYOUT-CENTERPANEL-container">
          <div class="rh-layout-selectdetails" id="rh-selectdetails"></div>
          <div class="RH-LAYOUT-CENTERPANEL-topic-box" id="rh-topic">
  <div class="logoStyle">
    <div class="topicTitle">
      <font face="微软雅黑">工具集管理</font>
    </div>
  </div>
  <p>工具集是工具的集合，一个工具集内可以包含一个或多个工具（API）</p>
  <p>SuperMap iPortal AI助理内置了多种类别的GIS工具集，包括地图可视化、大数据分析、三维分析、数据转换等。使用这些工具集，可以通过对话形式轻松完成多样的GIS任务处理。</p>
  <p>如果AI助理内置的工具集不能满足您的业务需求，您还可以添加自定义工具集来集成需要使用的工具API。</p>
  <h2>工具与工具集</h2>
  <p>每个工具集可添加多个工具，同一个工具集内的不同工具必须使用相同的域名。工具集中的每个工具都是一个独立的 API。AI助理调用工具集时，实际上是调用工具集中的某个工具，也就是调用某个 API。</p>
  <h2>添加工具集</h2>
  <p>以管理员身份登录AI助理，点击<img height="25" src="Image/Workhouse.png" width="29"/>按钮进入工作台，依次点击“工具集管理”&gt;“工具集”&gt;“新增工具集”，依次填写以下内容：</p>
  <ul class="Disc">
    <li>工具集名称：填写工具集名称；</li>
    <li>工具集描述：填写工具集描述，建议输入工具集的主要功能和使用场景，帮助大模型更好的理解；</li>
    <li>工具集地址：输入工具集的访问地址，例如：<span>http://ai-copilot-server-service:2715；</span></li>
    <li>是否包含工具（API）描述文档：如果工具集提供了工具(API）描述文档，可选择上传，自动添加工具。支持上传使用OpenAPI，Swagger集合协议的YAML文件；</li>
    <li>Header列表：<span>HTTP请求头列表是客户端程序和服务器在每个HTTP请求和响应中发送和接收的字符串列表，可按需添加；</span></li>
    <li>是否携带token：工具集是否需携带token访问，如需携带token，则需设置token的放置位置（Header、Query、Header自动获取、Query自动获取），并输入token值。</li>
  </ul>
  <p>填写完成后，点击“保存”按钮即可。</p>
  <h2>管理工具集</h2>
  <h3>查看工具集</h3>
  <p><span>在工具集管理页面，以列表形式展示工具集内容。支持查看工具集名称、描述、地址、包含的工具数量、创建时间等信息。</span></p>
  <h3>检索工具集</h3>
  <p><span>在工具集管理页面，通过在搜索框中输入工具集名称来检索。</span></p>
  <h3>启用/停用工具集</h3>
  <p>在工具集管理页面，管理员可选择是否启用工具集，停用工具集将导致工具集中的所有工具都无法调用。</p>
  <h3>修改工具集</h3>
  <p><span>在工具集管理页面，点击对应工具集条目后的“修改”按钮，可在对话框中对工具集的<span>名称、描述、地址等信息进行修改。</span></span></p>
  <h3>删除工具集</h3>
  <p><span>在工具集管理页面，可将不需要的工具集删除，支持逐个删除与批量删除。<span style="font-weight:bold;">需要注意的是</span>，删除工具集后，工具集中包含的工具也将被一并删除，请谨慎操作。</span></p>
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
    <div class="home_bottom_img"><a href="http://www.supermap.com" target="_blank"><img src="../assets/images/超图logo.png" style="height: 32px;"/> <span class="copyright_text">
          <script>
            //<![CDATA[
            copyright();
            //]]>
          </script>
        </span> </a></div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea" id="language_switch"><img src="../assets/images/在线服务.svg" style="width: 16px; margin-left: 6px;"/>
      <div class="language_text" style="margin-left: 10px; min-width: 65px;">语言切换</div>
      <img class="home_bottom_dropdown_icon" src="../assets/images/展开.svg"/>
    </div>
    <div class="dropdownMenu" id="language_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default">简体中文</div>
              <div class="text_switch_default">EN</div-->
    </div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea_version" id="version_switch">
      <div class="language_text" style="margin-left: 25px; min-width: 65px; color: black;">版本切换</div>
      <img class="home_bottom_dropdown_icon" src="../assets/images/Expand_Black.svg" style="margin-top: 10px"/> <img src="../assets/images/EnterAllProducts.svg"/>
    </div>
    <div class="dropdownMenu" id="version_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default" >11.0.0</div>
            <div class="text_switch_default" >11.0.1</div-->
    </div>
  </div>
  <div style="display: none">
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;assets/images/ExpandAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;assets/images/hideAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
    <div class="AllProductsHelp" id="AllProductsHelp">
      <div class="DetailProducts1"><a href="http://help.supermap.com/ImageXPro"><img src="../assets/images/iManager_for_Kubernetes.svg"/></a></div>
      <div class="MoreProducts">
        <div><a href="http://help.supermap.com">更多产品帮助</a></div>
        <div style="margin-left: 13px;"><img src="../assets/images/MoreProducts.svg"/></div>
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

    gRootRelPath = ".."
    gCommonRootRelPath = ".."
    gTopicId = "4.0_1"
  
//]]></script>


  <script src="../template/scripts/topicpage.js"></script>
  <script src="../whxdata/layoutconfig.js"></script>
  <script src="../whxdata/brsdata.js"></script>

  
    

            


</body></html>