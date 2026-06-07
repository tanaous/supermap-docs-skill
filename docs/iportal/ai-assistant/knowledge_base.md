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
  <title>知识库管理</title>
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
      <font face="微软雅黑">知识库管理</font>
    </div>
  </div>
  <p>引入外部知识库可以解决大模型幻觉、专业领域知识不足的问题，提升大模型回复的准确率。iPortal AI助理支持上传和存储外部知识内容，并提供了基于知识库的检索方式—专业检索。</p>
  <p>管理员可以添加知识库，导入外部知识文件，也可以管理门户中所有的知识库，包括编辑、删除知识库，以及添加内容、删除知识库文件等操作。</p>
  <h2>添加知识库</h2>
  <p>以管理员身份登录AI助理，点击<img height="25" src="Image/Workhouse.png" width="29"/>按钮进入工作台，依次点击“知识库管理”&gt;“添加知识库”，依次完成知识库构建与文件导入：</p>
  <p>1. 创建知识库</p>
  <p>填写知识库名称与知识库简介，<span style="font-weight:bold;">需要注意的是</span>，知识库名称创建后无法修改。</p>
  <p><span>填写完成后，可以选择创建一个空的知识库，也可以选择下一步，从本地上传知识文件文件，上传的文件将会被自动解析成知识库。</span></p>
  <p>2. 导入知识文件</p>
  <p>将本地的知识文件上传到知识库中，<span>支持导入<span>DOCX、PPTX、PPT、XLSX、XLS等</span>多种格式的文件，单个文件最大不超过200MB。</span></p>
  <p>上传完成后，等待服务器依次对文档进行向量化处理，可以在文档管理列表中查看文档状态，对于向量化失败的文件，可以点击刷新按钮重新进行向量化处理。</p>
  <p>添加知识库后，管理员和其他用户可以在AI助理中使用知识库。同时，管理员还可以依据业务发展的实际需求，对知识库进行更新、删除。</p>
  <h2><a id="使用知识库"></a>使用知识库</h2>
  <p>知识库添加完成后，iPortal AI助理的用户均可使用，以丰富 AI助理的知识范围、提高模型回复的可靠性。</p>
  <p>登录AI助理后，在左侧边栏点击<img height="30" src="Image/Setting.png" width="26"/>按钮，在设置面板中选择要使用的知识库，设置完成后，点击<img height="29" src="Image/ChatIcon.png" width="36"/>按钮切换到会话页面，开启“专业检索”按钮，即可启用基于知识库的检索。</p>
  <h2>管理知识库</h2>
  <h3>查看知识库</h3>
  <p><span>在知识库管理页面，以卡片形式展示知识库。支持查看工具集名称、简介、包含的文件数量、创建时间等信息。</span></p>
  <h3>检索知识库</h3>
  <p><span>在知识库管理页面，通过在搜索框中输入知识库名称来检索。</span></p>
  <h3>编辑知识库</h3>
  <p><span>在知识库页面，点击对应知识库卡片下拉类别中的“编辑”按钮，可对知识库简介进行修改；点击知识库卡片进入文件管理页面，可对知识库中的文件进行统一管理：添加、删除、下载<span>。</span></span></p>
  <h3>删除知识库</h3>
  <p><span>在知识库管理页面，支持按需删除知识库。</span></p>
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
    gTopicId = "4.0_3"
  
//]]></script>


  <script src="../template/scripts/topicpage.js"></script>
  <script src="../whxdata/layoutconfig.js"></script>
  <script src="../whxdata/brsdata.js"></script>

  
    

            


</body></html>