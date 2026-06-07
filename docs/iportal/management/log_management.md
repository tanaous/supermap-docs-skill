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
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>日志管理</title>
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
  <script type="text/javascript" src="../../assets/js/SMCollapse.js"></script>
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
  <p class="myNormal">SuperMap iPortal 的日志包括系统日志和操作日志。以门户管理员身份登录 SuperMap iPortal 门户首页，点击“管理”模块进入门户管理页面，在“日志”选项卡下可以查看 SuperMap iPortal 门户运行过程中的日志信息。</p>
  <h2><a id="系统日志"></a>系统日志</h2>
  <p class="myNormal">系统日志信息分为6个级别：关闭、错误、警告、信息、调试、全部。具体级别说明，请参见<a class="contentpagehyperlink" href="#表1_系统日志信息级别说明">表1 系统日志信息级别说明</a>。</p>
  <p class="myNormal" style="text-align: center;"><a id="表1_系统日志信息级别说明"></a>表 1 系统日志信息级别说明</p>
  <table align="center" cellspacing="0" class="iServerTable" style="width: 1030px;" width="70%">
    <colgroup>
      <col style="width: 203px;"/>
      <col style="width: 724px;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center;">级别</td>
        <td style="text-align: center;">说明</td>
      </tr>
      <tr class="t2Row">
        <td style="text-align: center;">
          <p style="text-align: center;">关闭</p>
        </td>
        <td style="">不包含任何信息。</td>
      </tr>
      <tr class="t1Row">
        <td style="text-align: center;">
          <p style="text-align: center;">错误</p>
        </td>
        <td style="">只包含错误消息。</td>
      </tr>
      <tr class="t2Row">
        <td style="text-align: center;">
          <p style="text-align: center;">警告</p>
        </td>
        <td style="">警告消息。本级别也包含错误消息的内容。</td>
      </tr>
      <tr class="t1Row">
        <td style="text-align: center;">
          <p style="text-align: center;">信息</p>
        </td>
        <td style="">服务器运行过程中的业务逻辑信息。本级别也包含错误消息、警告消息的内容。</td>
      </tr>
      <tr class="t2Row">
        <td style="text-align: center;">
          <p style="text-align: center;">调试</p>
        </td>
        <td style="">服务器运行过程中代码的执行情况的提示，本级别也包含信息、警告和错误的内容。</td>
      </tr>
      <tr class="t1Row">
        <td style="text-align: center;">
          <p style="text-align: center;">全部</p>
        </td>
        <td style="">包含所有消息。</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal">“日志/系统日志”选项卡会列出当前服务器的系统日志，分日志级别、日志摘要、记录时间几列显示。可以通过“级别”和“显示条目”过滤日志的显示。</p>
  <h2><a id="操作日志"></a>操作日志</h2>
  <p class="myNormal">操作日志包括了普通用户对自己添加到门户中的资源所做操作的记录、管理员在门户管理器中所做操作的记录以及用户的登录/登出、锁定/解锁等操作的记录，支持以 zip 格式导出门户中所有操作日志，解压后即可查看。</p>
  <p class="myNormal">操作日志信息只有一个级别：信息。相关级别说明，请参见<a class="contentpagehyperlink" href="#表2_操作日志信息级别说明">表2 操作日志信息级别说明</a>。</p>
  <p class="myNormal" style="text-align: center;"><a id="表2_操作日志信息级别说明"></a>表2 操作日志信息级别说明</p>
  <table align="center" cellspacing="0" class="iServerTable" style="width: 1070px;" width="70%">
    <colgroup>
      <col style="width: 222px;"/>
      <col style="width: 745px;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center;">级别</td>
        <td style="text-align: center;">说明</td>
      </tr>
      <tr class="t2Row">
        <td>
          <p style="text-align: center;"><span style="text-align:center;">信息</span></p>
        </td>
        <td>服务器运行过程中的业务逻辑信息，例如：地图创建成功的消息。</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal">“日志/操作日志”选项卡会列出当前服务器的操作日志状态，分日志级别、日志摘要、记录时间几列显示。可以通过“显示条目”过滤日志的显示。支持保存“级别”的过滤设置，无需在每次查看时重复进行设置。</p>
  <h2><a id="serviceconfig"></a>日志配置</h2>
  <p class="myNormal">日志配置页面包含系统日志和操作日志配置，具体配置信息介绍如下：</p>
  <h3><a id="系统日志配置"></a>系统日志配置</h3>
  <p class="myNormal">在服务管理器的“日志/日志配置”选项卡下，可以对 SuperMap iPortal 系统日志进行配置，相关配置参数说明请详见<a class="contentpagehyperlink" href="#表3_系统日志配置参数说明">表3 系统日志配置参数说明</a>，配置完成后点击<span style="font-weight: bold;">保存变更</span>按钮保存。</p>
  <p class="myNormal" style="text-align: center;"><a id="表3_系统日志配置参数说明"></a>表3 系统日志配置参数说明</p>
  <table align="center" cellspacing="0" class="iServerTable" style="width: 1096px;" width="70%">
    <colgroup>
      <col style="width: 238px;"/>
      <col style="width: 755px;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center;">参数</td>
        <td style="text-align: center;">说明</td>
      </tr>
      <tr class="t2Row">
        <td style="text-align: center;">
          <p style="text-align: center;">文件存储路径</p>
        </td>
        <td>用来存储日志文件的全路径或相对路径（相对于 bin 目录），注意包含文件名，系统日志默认为 ../logs/iportal.log ，即%SuperMap iPortal_HOME%/logs/iportal.log。</td>
      </tr>
      <tr class="t1Row">
        <td style="text-align: center;">
          <p style="text-align: center;">文件大小限制</p>
        </td>
        <td>文件容量限制了日志文件容量的最大值，默认为2MB，大于这个值时，服务器会备份后清空日志文件，例如 iportal.log 被备份，依次备份为 iportal.log.1、iportal.log.2、……。</td>
      </tr>
      <tr class="t2Row">
        <td style="text-align: center;">
          <p style="text-align: center;">控制台输出日志级别</p>
        </td>
        <td>在对应位置下拉框中选择合适的控制台输出日志级别。具体级别说明，请参见<a class="contentpagehyperlink" href="#表1_系统日志信息级别说明">表 1 系统日志信息级别说明</a>。</td>
      </tr>
      <tr class="t1Row">
        <td style="text-align: center;">
          <p style="text-align: center;">文件记录日志级别</p>
        </td>
        <td>在对应位置下拉框中选择合适的文件记录日志级别。具体级别说明，请参见<a class="contentpagehyperlink" href="#表1_系统日志信息级别说明">表1_系统日志信息级别说明</a>。</td>
      </tr>
    </tbody>
  </table>
  <h3><a id="操作日志配置"></a>操作日志配置</h3>
  <p class="myNormal">在“日志/日志配置”选项卡中可以对 SuperMap iPortal 操作日志进行配置，相关配置参数说明请详见<a class="contentpagehyperlink" href="#表4_操作日志配置参数说明">表4 操作日志配置参数说明</a>，配置完成后点击<span style="font-weight: bold;">保存变更</span>按钮保存。</p>
  <p class="myNormal" style="text-align: center;"><a id="表4_操作日志配置参数说明"></a>表4 操作日志配置参数说明</p>
  <table align="center" cellspacing="0" class="iServerTable" style="width: 1097px;" width="70%">
    <colgroup>
      <col style="width: 237px;"/>
      <col style="width: 757px;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center;">参数</td>
        <td style="text-align: center;">说明</td>
      </tr>
      <tr class="t2Row">
        <td style="text-align: center;">
          <p style="text-align: center;">文件存储路径</p>
        </td>
        <td>用来存储日志文件的全路径或相对路径（相对于 bin 目录），注意包含文件名，操作日志默认为 ../logs/iportalOperation.log ，即%SuperMap iPortal_HOME%/logs/iportalOperation.log。</td>
      </tr>
      <tr class="t1Row">
        <td style="text-align: center;">
          <p style="text-align: center;">文件大小限制</p>
        </td>
        <td>文件容量限制了日志文件容量的最大值，默认为2MB，大于这个值时，服务器会备份后清空日志文件，例如 iportalOperation.log 被备份，依次备份为  iportalOperation.log.1、iportalOperation.log.2、……。</td>
      </tr>
      <tr class="t2Row">
        <td style="text-align: center;">
          <p style="text-align: center;">文件记录日志级别</p>
        </td>
        <td>操作日志信息只有一个级别：信息，此处灰选，默认级别为信息。具体级别说明，请参见<a class="contentpagehyperlink" href="#表2_操作日志信息级别说明">表2_操作日志信息级别说明</a>。</td>
      </tr>
    </tbody>
  </table>
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
    gTopicId = "5.4.1_1"
  
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