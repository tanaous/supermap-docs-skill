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
  <title>MCP服务管理</title>
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
      <font face="微软雅黑">MCP服务管理</font>
    </div>
  </div>
  <p><span>模型上下文协议（Model Context Protocol, MCP）旨在搭建大模型和外部工具之间的信息传递通道。通过 MCP 协议，开发者不用为每个外部工具编写复杂的接口</span>。</p>
  <p>SuperMap iPortal AI助理<span>适配 MCP 协议，统一地理空间智能体工具接口标准，支持外部MCP工具的导入与协同调用。管理员在添加外部MCP工具并启用后，AI助理就可以在回答时调用相关工具了。</span></p>
  <h2>添加MCP服务</h2>
  <p>以管理员身份登录AI助理，点击<img height="25" src="Image/Workhouse.png" width="29"/>按钮进入工作台，依次点击“工具管理”&gt;“添加MCP服务”，依次填写以下内容：</p>
  <ul class="Disc">
    <li>服务名称：填写接入的MCP服务名称；</li>
    <li>连接类型：选择MCP服务的连接方式，支持SSE模式和STDIO模式；
      <ul>
        <li>SSE 模式：<span>Server-Sent Events（SSE，服务器发送事件）是一种基于 HTTP 协议的技术，允许服务器向客户端单向、实时地推送数据，<span>通过 URL 地址配置即可使用，地址示例：</span></span><span><span>https://mcp.amap.com/sse?key=9e3a07****cdf1a21e28</span></span></li>
        <li>STDIO 模式：Stdio（标准输入/输出）通过本地进程间通信实现，客户端以子进程形式启动服务器，双方通过stdin/stdout交换JSON-RPC消息，每条消息以换行符分隔。Stdio模式无需依赖网络环境，适合内网环境的MCP工具调用。
          <ul>
            <li>指令：支持npx、uv命令</li>
            <li>参数：支持输入多个参数，回车键确认后，即可输入下一个参数</li>
            <li>环境变量：支持配置多个环境变量，如“BAIDU_MAP_API_KEY”: “Qc6AAmAwb****AZUQHEjQEoqjUc”</li>
          </ul>
        </li>
      </ul>
    </li>
  </ul>
  <p>添加MCP服务后，管理员可控制MCP服务的启停，启用后A<span>I助理就可以在回答时调用相关工具了。</span></p>
  <h2>管理MCP服务</h2>
  <h3>查看MCP服务</h3>
  <p><span>在MCP服务管理页面，以卡片形式展示MCP服务。支持查看MCP服务名称、连接方式等信息。</span></p>
  <h3>检索MCP服务</h3>
  <p><span>在MCP服务管理页面，通过在搜索框中输入MCP服务名称来检索。</span></p>
  <h3>编辑MCP服务</h3>
  <p><span>在MCP服务管理页面，点击对应卡片下拉类别中的“编辑”按钮，可对MCP服务配置参数进行修改<span>。</span></span></p>
  <h3>删除知识库</h3>
  <p><span>在MCP服务管理页面，支持按需删除MCP服务。</span></p>
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
    gTopicId = "4.0_4"
  
//]]></script>


  <script src="../template/scripts/topicpage.js"></script>
  <script src="../whxdata/layoutconfig.js"></script>
  <script src="../whxdata/brsdata.js"></script>

  
    

            


</body></html>