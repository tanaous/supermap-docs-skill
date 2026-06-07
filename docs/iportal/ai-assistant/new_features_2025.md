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
  <title>SuperMap iPortal AI Assistant新特性</title>
  <meta name="topic-status" content="Draft"/>
  <script type="text/javascript" src="../SdCollapse.js" charset="utf-8"></script>
  <script type="text/javascript" src="../SuperMapHelpCode.js" charset="utf-8"></script>
  <link rel="stylesheet" type="text/css" href="../SuperMapHelp.css"/>
  <link rel="stylesheet" type="text/css" href="../SuperMapHelpCode.css"/>
  <meta name="rh-index-keywords" content=""/>
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
      <font face="微软雅黑">SuperMap </font>iPortal AI Assistant<font face="微软雅黑"> 新特性</font>
    </div>
  </div>
  <p><a class="contentpagehyperlink" href="../Appendix/Feature_History/SuperMap_Copilot_2024_Feature.htm">历史版本特性</a></p>
  <h2>SuperMap iPortal AI Assistant 2025</h2>
  <p><em>版本号：12.0.0.0，发布日期：2025.06</em></p>
  <h3>新特性</h3>
  <ul class="Disc">
    <li>新增 Agentic RAG 能力，支持<a class="contentpagehyperlink" href="../Management/KnowledgeBaseManagement.htm">知识库管理</a>与<a class="contentpagehyperlink" href="../Management/KnowledgeBaseManagement.htm#使用知识库">知识问答</a>，实现知识库检索和工具调用一体化</li>
    <li>新增 GraphRAG 能力，地理空间智能体内置 GI 工具知识图谱，赋能更可靠的任务建议生成</li>
    <li>新增适配市面常见<a class="contentpagehyperlink" href="../Development/DockerDeployment/DockerDeployment7.htm#bookmark">开源模型</a>和各类大模型云服务</li>
    <li>新增支持 MCP 协议，统一地理空间智能体工具接口标准，<a class="contentpagehyperlink" href="../Management/MCPManagement.htm">支持内、外部工具导入和协同调用</a></li>
  </ul>
  <h3>增强内容</h3>
  <ul class="Disc">
    <li>修复无法将多个图层叠加在一个地图窗口中可视化展示的问题</li>
    <li>修复遥感分析工具无法正常使用的问题</li>
    <li>修复数据资源表格可视化时，由于字段名称过长导致字段名展示不全的问题</li>
    <li>修复资源数量查询结果与iPortal资源中心查询结果不一致的问题</li>
    <li>修复临近查询分析结果无法在地图中可视化的问题</li>
    <li>修复非管理员用户登录后指令列表不可访问的问题</li>
  </ul>
  <h3>变更</h3>
  <ul class="Disc">
    <li>从2025版本起，产品名称变更为SuperMap iPortal AI Assistant（超图门户AI助理）</li>
    <li>管理员菜单入口由顶部导航栏变更至左侧边栏</li>
  </ul>
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
    gTopicId = "0_1"
  
//]]></script>


  <script src="../template/scripts/topicpage.js"></script>
  <script src="../whxdata/layoutconfig.js"></script>
  <script src="../whxdata/brsdata.js"></script>

  
    

            


</body></html>