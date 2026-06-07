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
  <title>工具管理</title>
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
      <font face="微软雅黑">工具管理</font>
    </div>
  </div>
  <p><span>添加工具集后，支持将工具集中包含的工具（API）按需添加到列表中，便于大模型调用。</span></p>
  <p>SuperMap iPortal AI助理的管理员支持管理所有工具，添加新的工具，以及控制工具的启停。</p>
  <h2>添加工具</h2>
  <p>以管理员身份登录AI助理，点击<img height="25" src="Image/Workhouse.png" width="29"/>按钮进入工作台，依次点击“工具管理”&gt;“工具”&gt;“新增工具”，依次完成工具信息填写和参数配置：</p>
  <ol class="Decimal">
    <li>工具信息填写
      <ul class="LevelSecondSequence">
        <li>选择工具集：选择创建工具所属的工具集；</li>
        <li>工具名称：填写工具名称；</li>
        <li>工具别名：填写工具别名；</li>
        <li>请求方式：选择 API 的请求方式，支持GET、PUT、POST、DELETE；</li>
        <li>请求路径：基于工具集URL路径前缀，补全工具的API请求路径；</li>
        <li>工具描述：填写工具的描述，建议输入工具的主要功能和使用场景，帮助大模型更好的理解；</li>
        <li>是否为管理员工具：如设置为管理员工具，则仅管理员账户使用时支持调用，非管理员用户无法调用。</li>
      </ul>
    </li>
    <li>参数配置</li>
  </ol>
  <p>支持在添加工具时添加多个参数，也可在添加工具后进行配置：</p>
  <ul class="LevelSecondSequence">
    <li>参数名称：填写参数名称，支持字母、数字或下划线；</li>
    <li>参数类型：参数的数据类型，int、string、float、double等，支持自定义参数类型；</li>
    <li>参数描述：参数描述，准确的参数描述可以帮助用户或大模型理解当前参数的作用；</li>
    <li>是否必须：参数是为必填参数；</li>
    <li>参数枚举值：设置参数的枚举值</li>
    <li>默认值：设置参数的默认值；</li>
    <li>是否为文件：</li>
  </ul>
  <p>填写完成后，点击“完成”按钮即可。</p>
  <h2>管理工具</h2>
  <h3>查看工具</h3>
  <p><span>在工具管理页面，以列表形式展示工具内容。支持查看工具名称、工具别名、工具集类型、请求路径、请求方式等信息。</span></p>
  <h3>检索工具</h3>
  <p><span>在工具管理页面，支持通过工具集名称、是否启用两种条件过滤工具，也可以在搜索框中直接输入工具名称、工具请求路径或工具描述进行检索。</span></p>
  <h3>启用/停用工具</h3>
  <p>在工具管理页面，管理员可选择是否启用工具，停用工具将导致工具无法调用。</p>
  <h3>修改工具</h3>
  <p><span>在工具管理页面，点击对应工具条目后的“修改”按钮，可在对话框中对工具集的<span>名称、描述、地址等信息进行修改。</span></span></p>
  <h3>删除工具</h3>
  <p><span>在工具管理页面，可将不需要的工具删除，支持逐个删除与批量删除。</span></p>
  <h3>管理参数</h3>
  <p>在工具管理页面，点击工具条目最左侧的<img height="23" src="Image/UnfoldIcon.png" width="23"/>按钮，即可在展开的嵌套列表中查看该工具的参数信息，完成参数的新增、修改或删除。</p>
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
    gTopicId = "4.0_2"
  
//]]></script>


  <script src="../template/scripts/topicpage.js"></script>
  <script src="../whxdata/layoutconfig.js"></script>
  <script src="../whxdata/brsdata.js"></script>

  
    

            


</body></html>