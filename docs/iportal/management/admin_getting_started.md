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

  <meta name="template" content="../../assets/layouts/SuperMapiServerMain.htt"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Content-Language" content="zh-CN"/>
  <meta name="topic-check-list" content="Ran Smart Index"/>
  <meta name="topic-status" content="Complete"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>管理入门</title>
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
  <p class="myNormal">管理员拥有最高权限，主要职能是对整个 SuperMap iPortal 产品各个模块进行管理，并保证门户的正常运行。</p>
  <p class="myNormal">完成 iPortal 的安装与启动，并创建管理员账户后，登录门户首页，点击“管理”，即可进入 iPortal 管理界面（<a class="contentpagehyperlink" href="http://localhost:8190/iportal/admin-ui/home">http://localhost:8190/iportal/admin-ui/home/</a> ），您可以根据实际的业务需求，配置门户站点，定制门户外观，管理门户资源，查看门户的运行情况，发布新闻通知，管理意见反馈等。</p>
  <h2>安装/升级 iPortal</h2>
  <p class="myNormal">在安装 iPortal 前，管理员需验证系统软硬件配置是否满足安装 iPortal 的要求（具体请参见：<a class="contentpagehyperlink" href="../Install_Uninstal_iportal/SystemConfig/SystemConfig.htm">系统配置要求</a>），然后修改防火墙设置，允许在 iPortal 使用的<a class="contentpagehyperlink" href="../Install_Uninstal_iportal/iPortal_port.htm">端口</a>上进行通信，在确保您已经获得产品<a class="contentpagehyperlink" href="../Install_Uninstal_iportal/License_config/License_Config.htm">许可</a>后，即可将 iPortal 安装在您的系统中了。有关安装的详细说明，请参见：<a class="contentpagehyperlink" href="../Install_Uninstal_iportal/install_uninstall.htm">iPortal 安装指南</a>。</p>
  <p class="myNormal">同时，管理员还需主导 iPortal 产品版本的升级。自 SuperMap iPorta 8C SP1 版本起，在产品包中提供了用于产品升级的脚本文件，管理员可以通过该脚本文件快速完成 iPortal 版本的升级，具体请参见：<a class="contentpagehyperlink" href="../version_upgrade/version_upgrade.htm">产品升级</a>。</p>
  <h2>启动 iPortal</h2>
  <p class="myNormal">iPortal 管理员将产品压缩包解压，并进行了可选的安装配置后，如：数据库配置、账户初始化配置（具体请参见：<a class="contentpagehyperlink" href="../Install_Uninstal_iportal/Windows_install_uninstall/Windows.htm#安装配置_可选_">安装前配置（可选）</a>），运行 %SuperMap iPortal_HOME%/bin 目录下的 startup.bat（startup.sh）文件，即可启动 iPortal 服务。需要注意的是，针对 SuperMap iPortal 10i 及以上版本，在 Linux 操作系统中启动 iPortal 时，需以非 root 用户启动，原因可参见：<a class="contentpagehyperlink" href="../FAQ/ip_FAQ.htm#es启动问题">FAQ</a>。</p>
  <p class="myNormal">想要停止服务时，运行 %SuperMap iPortal_HOME%/bin 目录的 shutdown.bat（shutdown.sh） 文件即可。</p>
  <h2>创建管理员账户</h2>
  <p class="myNormal">服务启动后，首次访问 SuperMap iPortal 首页（<a class="contentpagehyperlink" href="http://localhost:8090/iportal">http://localhost:8190/iportal</a>）时，如果未进行<a class="contentpagehyperlink" href="../Install_Uninstal_iportal/Windows_install_uninstall/accountEnvironment.htm">账户初始化配置</a>，则需要创建管理员账户，创建成功后就可以进入 SuperMap iPortal 首页，点击右上角的“登录”按钮，以管理员账户登录，即可进入 iPortal 门户。</p>
  <p class="myNormal"><span style="font-weight: bold;">注意：</span>如果管理员忘记了账户和密码，可以参见：<a class="contentpagehyperlink" href="../FAQ/ip_FAQ.htm#管理员账户密码">FAQ</a>，重新创建管理员账户。</p>
  <h2>配置门户站点</h2>
  <p class="myNormal">在实际的生产环境中，iPortal 管理员可以根据自身的业务需求，进行<a class="contentpagehyperlink" href="Portal_config/Portal_config.htm">门户站点配置</a>，从而量身定制一系列符合用户实际应用的门户功能，快速构建 GIS 门户软件平台。具体来说，您可以在门户站点中配置以下内容：</p>
  <ul class="referenceList">
    <li class="referenceList"><a class="contentpagehyperlink" href="../Install_Uninstal_iportal/Windows_install_uninstall/database_config.htm">数据库配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_Proxy/proxy_configuration.htm">代理配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="ServerHost.htm">GIS服务器的管理与配置</a></li>
  </ul>
  <ul class="referenceList">
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_Security/Security_Summary.htm">安全配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="UserManagement.htm">用户管理</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/WebAppsConfigure.htm">内置WebApps的配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/servicePreviewConfig.htm">服务预览配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/Basemap_config.htm">底图配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="structuralData/StructuralDataManagement.htm">结构化数据配置</a></li>
  </ul>
  <ul class="referenceList">
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/Default_thumbnail_config.htm">默认缩略图配置</a></li>
  </ul>
  <ul class="referenceList">
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/customDirectorySetting.htm">自定义目录配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="customPortal/customMetadata.htm">元数据定制</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="Support_Service.htm">支撑服务配置</a></li>
  </ul>
  <ul class="referenceList">
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/searchServiceConfig.htm">搜索服务配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/spatialPermissionConfig.htm">全局搜索与空间范围权限共享底图配置</a></li>
  </ul>
  <ul class="referenceList">
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/data_storage_config.htm">上传数据配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/Other_setting.htm">其他门户功能配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/mailServer_Config.htm">邮件通知配置</a></li>
    <li class="referenceList"><a class="contentpagehyperlink" href="Portal_config/multiLanguage.htm">多语言配置</a></li>
  </ul>
  <h2>定制门户外观</h2>
  <p class="myNormal">在完成站点配置后，您可以根据自身的业务需求和行业特点可视化地定制门户外观，支持定制<a class="contentpagehyperlink" href="customPortal/customHome.htm">门户首页</a>（门户Logo、站点名称、导航栏模式、是否显示在线帮助、是否显示站点语言切换组件、版权信息、拖拽组件设计门户首页的布局），为门户选择合适的<a class="contentpagehyperlink" href="customPortal/themeManage.htm">主题</a>，定制门户显示<a class="contentpagehyperlink" href="Portal_config/multiLanguage.htm">语言</a>等。</p>
  <h2>管理门户资源</h2>
  <p class="myNormal">管理员拥有对  iPortal 门户中的<a class="contentpagehyperlink" href="resourceManag.htm">全部资源进行统一管理</a>的权限。首先，您可以通过<a class="contentpagehyperlink" href="../iportal_usage/add_resource/service.htm#registerService">服务注册</a>功能添加一些公开的示范数据到门户中，初始化门户数据，方便用户体验门户功能；在导入门户数据后，您可以对门户中所有的地图、场景、数据、项目、洞察、大屏、应用、群组、Notebook 资源进行统一管理，如开启地图、服务注册审核，设置资源共享范围等。在涉及多级单位或部门的门户应用中，您还可以通过<a class="contentpagehyperlink" href="Portal_Security/organiz_struc_set.htm">配置组织结构</a>，实现管理员分级管理，从而让各级单位或部门管理员在门户中管理各自单位或部门的资源。</p>
  <h2>查看门户运行情况</h2>
  <p class="myNormal">作为 iPortal 门户的管理员，您需要了解门户的整体情况（用户总数、资源总数等）、发展情况（用户数变化、资源数变化等）、使用情况（资源访问情况等）、日志信息和许可信息，以便更好地管理门户。基于此，iPortal 提供了<a class="contentpagehyperlink" href="Portal_Statistics/introduce.htm">门户统计</a>、<a class="contentpagehyperlink" href="iportal_log_manag.htm">日志管理</a>、<a class="contentpagehyperlink" href="ip_License_mes.htm">查看许可信息</a>的功能，帮助您实时查看与监控门户的运行情况。为了提升门户软件平台效率，保证门户的稳定运行，您还可以启用<a class="contentpagehyperlink" href="ip_scheduledTasks.htm">资源定时回收</a>功能，定时清理门户中的临时资源。</p>
  <h2>发布新闻通知</h2>
  <p class="myNormal">作为 iPortal 的门户管理员，您可能需要将一些行业新闻动态、消息通知等信息传达给门户中的所有用户。基于此，iPortal 提供了<a class="contentpagehyperlink" href="news.htm">新闻中心</a>模块，您可以在线编辑、发布新闻通知，管理所有新闻条目。</p>
  <h2>管理意见反馈</h2>
  <p class="myNormal">iPortal 提供了意见反馈功能，帮助普通用户（包括匿名用户）在线反馈门户产品使用过程中遇到的问题，提出意见与建议。作为 iPortal 的门户管理员，您可以对门户中接收的所有反馈项进行<a class="contentpagehyperlink" href="feedback.htm">统一管理</a>，检索、查看、审核、回复用户反馈。</p>
  <p class="myNormal"> </p>
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
    gTopicId = "5.0_1"
  
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