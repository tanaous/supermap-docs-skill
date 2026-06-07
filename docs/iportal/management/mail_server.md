<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3, user-scalable=yes"/>
  <meta name="version" content="2022.1.0"/>
  <link rel="StyleSheet" href="../../../template/styles/topic.min.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" type="text/css" href="../../../template/OnlineHelpFrameiPortal/layout.css"/>
  <link rel="StyleSheet" data-skin="true" href="../../../template/OnlineHelpFrameiPortal/userstyles.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" href="../../../template/OnlineHelpFrameiPortal/homeButtom.css" type="text/css"/>
  <link rel="stylesheet" data-skin="true" href="../../../template/OnlineHelpFrameiPortal/index_Home.css" type="text/css"/>
  
    <link rel="shortcut icon" type="image/png" href="../../../iportal-icon.png"/>
    
  <script data-relpath="../../.." src="../../../template/scripts/csh-redirect.js" type="text/javascript"></script>

<meta name="template" content="../../../assets/layouts/SuperMapiServerMain.htt"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Language" content="zh-CN"/>
<meta name="generator" content="Adobe RoboHelp 2022"/>
<title>邮件通知配置</title>
<link rel="StyleSheet" href="../../../assets/css/SuperMapHelp.css" type="text/css"/>
<script type="text/javascript" src="../../../assets/js/shCore.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushBash.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushCpp.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushCSharp.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushCss.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushDelphi.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushDiff.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushGroovy.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushJava.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushJScript.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushPhp.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushPlain.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushPython.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushRuby.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushScala.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushSql.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushVb.js"></script>
<script type="text/javascript" src="../../../assets/js/shBrushXml.js"></script>
<script type="text/javascript" src="../../../assets/js/ConfigiServer6R.js"></script>
<script type="text/javascript" src="../../../assets/js/SMCollapse.js"></script>
<meta name="rh-version" content="2022.1.188"/>
  
  <link rel="stylesheet" type="text/css" href="../../../assets/css/common_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../../assets/css/index_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../../assets/css/homeButtom.css"/>
  <script src="../../../assets/js/jQuery.js"></script>
  <script type="text/javascript" src="../../../assets/js/ResourceCenter_Hover.js"></script>
<meta name="rh-version" content="2022.1.188"/></head>

<body class="rh-BODY-wrapper">
  <header class="RH-LAYOUT-HEADER-container" role="banner">
   <div class="enterAllProductsHome only-online" style="display:none"> 
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;../../../assets/images/EnterAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;../../../assets/images/EnterAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
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
		    <img src="../../../assets/images/MoreProducts.svg"/>
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
      <div class="TopNavigation1"><a class="TopNavigationLink" href="../../../iP/Install_Uninstal_iportal/install_uninstall.htm">安装</a></div>
      <div class="TopNavigation2"><a class="TopNavigationLink" href="../../../iP/iportal_usage/gettingStarted.htm">使用</a></div>
      <div class="TopNavigation3"><a class="TopNavigationLink" href="../../../iP/iportal_management/admin_gettingStarted.htm">管理</a></div>
	  <div class="TopNavigation4"><a class="TopNavigationLink" href="../../../API\iServer_API_reference.htm">开发</a></div>
    </div>
    <div class="search-placeholder-class" id="search-with-help"></div>
	<div class="home_bottom_bg_topic only-online" style="display:none" id="bottomContainer">
      <div class="dropdown language">
        <div class="flex-row showArea" id="language_switch" onclick="showLanguagePanel()" style="min-width: 85px;">
          <div class="language_text">语言切换</div>
          <img class="home_bottom_dropdown_icon" src="../../../assets/images/Expand_Black.svg"/>
        </div>
        <div class="dropdownMenu" id="language_list" style="display: none; text-align: center;">
        </div>
      </div>
      <div class="BannerVerticalLineRight">|</div>
      <div class="dropdown version">
        <div class="flex-row showArea_version" id="version_switch" onclick="showVersionPanel()" style="min-width: 85px; height: 40px;">
          <div class="language_text">版本切换</div>
          <img class="home_bottom_dropdown_icon" src="../../../assets/images/Expand_Black.svg"/>
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
<p class="myNormal">SuperMap iPortal 提供了邮件通知功能，用以通知用户注册审核的结果。邮件通知功能是与用户注册审核功能配合使用的，如果您开启了<a class="contentpagehyperlink" href="../Portal_Security/userAudit.htm">用户注册审核功能</a>，并配置了<a class="contentpagehyperlink" href="register_manag.htm#配置用户注册扩展字段">用户注册扩展填写邮箱字段</a>，开启了<a class="contentpagehyperlink" href="../../Install_Uninstal_iportal/iPortal_config.htm#5.__registerSetting_">邮件通知功能</a>，那么，接下来，还需要<a class="contentpagehyperlink" href="#配置邮件服务器">配置邮件服务器</a>，以上都配置好后，用户注册完会提示等待管理员审核，管理员的审核结果包含通过或不通过，都会以邮件的方式通知用户。注册用户需经管理员审核通过后，才能注册成功。</p>
<h2><a id="配置邮件服务器"></a>配置邮件服务器</h2>
<p class="myNormal">以管理员身份登录门户首页，依次点击“管理”&gt;“站点配置”&gt;“邮件通知”，进入 SMTP 邮件服务器配置页面：</p>
<ol style="list-style: decimal;" class="ListInParagraph">
	<li class="ListInParagraph"><span style="font-weight: bold;">“SMTP地址”</span>：设置发件服务器地址（域名或IP），例如：rdc.supermap.com</li>
	<li class="ListInParagraph"><span style="font-weight: bold;">“SMTP端口”</span>：设置发件服务器的端口号，例如：25</li>
	<li class="ListInParagraph"><span style="font-weight: bold;">“安全协议”</span>：设置发件服务器支持的安全协议，包括 
	 SSL、STARTTLS，如果不使用加密传输，可选择“无”</li>
	<li class="ListInParagraph"><span style="font-weight: bold;">“发件人邮箱地址”</span>：设置发件人的邮箱地址，例如：manager@rdc.supermap.com</li>
	<li class="ListInParagraph"><span style="font-weight: bold;">“发件人显示名称”</span>：设置发件人的显示名称，例如：超图软件，也可以不设置，如果不设置，默认显示的发件人名称为您设置的邮箱地址</li>
	<li class="ListInParagraph"><span style="font-weight: bold;">“用户账号”</span>：设置发件人的邮箱账号，例如：manager</li>
	<li class="ListInParagraph"><span style="font-weight: bold;">“用户密码”</span>：设置发件人的邮箱密码，如果您使用的是第三方的邮件服务器，例如：QQ邮箱、163邮箱等，则需要获取授权码并开启 
	 SMTP 功能，此处应填写授权码</li>
</ol>
<p class="myNormal">进行完以上配置后，可以点击“验证有效性”按钮，如果配置有效，系统会给发件人的邮箱发送测试有效性的邮件，并给出提示信息：“验证成功”，然后点击“保存”按钮即可。 
 </p>
<h2>定制邮件通知内容</h2>
<p class="myNormal">iPortal 发送的<span style="font-weight: bold;"> SMTP 服务器配置有效性测试</span>邮件内容，以及发送给注册用户的<span style="font-weight: bold;">审核结果</span>邮件内容，均支持定制。</p>
<p class="myNormal">邮件内容包含中英文两种模板，其中：<span style="font-weight: bold;">*_zh_CN.ftl</span> 
 为中文模板，<span style="font-weight: bold;">*.ftl</span> 为英文模板。iPortal 会根据自身所在服务器的系统语言环境，自动选择对应语言的邮件模板进行发送。</p>
<p class="myNormal">您可以通过自定义模板文件的方式来定制，具体定制步骤如下：</p>
<ol style="list-style: decimal;" class="ListInParagraph">
	<li class="ListInParagraph"><h3>复制邮件内容模板到指定目录下</h3></li>
</ol>
<p class="myNormal">复制【SuperMap iPortal 安装目录】\webapps\iportal\WEB-INF\lib\iportal-all-*.jar\templates 
 中的 <span style="font-weight: bold;">userAuditResultEmail_zh_CN.ftl</span>（<span style="font-weight: bold;">userAuditResultEmail.ftl</span> ）和 <span style="font-weight: bold;">smtpValidCheckEmail_zh_CN.ftl</span>（<span style="font-weight: bold;">smtpValidCheckEmail.ftl）</span> 到【SuperMap 
 iPortal 安装目录】\webapps\iportal\WEB-INF\classes\templates目录下 （若没有classes\templates目录，请手动创建） 
 。</p>
<ol start="2" style="list-style: decimal;" class="ListInParagraph">
	<li class="ListInParagraph"><h3>修改复制后的文件，定制邮件通知内容</h3></li>
</ol>
<p class="myNormal">其中，文件中&lt;title&gt;标签中的内容为邮件的主题，&lt;body&gt;标签中的内容为邮件内容，您可以根据实际的需求进行修改。</p>
<ul style="list-style: disc;">
	<li class="SymbolList1"> <span style="font-weight: bold;">userAuditResultEmail.ftl 
	 文件：</span><span>通知</span>审核结果的邮件内容，该模板文件中可以引用的变量如下：</li>
	<li class="SymbolList2">user ： 被审核的用户Java对象</li>
	<li class="SymbolList2"><p>checkStatus : 审核状态，可能的取值：SUCCESSFUL（通过），FAILED（未通过）</p></li>
	<li class="SymbolList2"><p>userName : 申请注册的账号</p></li>
	<li class="SymbolList2"><p>checkUser : 审核人</p></li>
	<li class="SymbolList2"><p>checkTime : 审核时间</p></li>
	<li class="SymbolList2"><p>verifyReason : 驳回(审核)意见</p></li>
</ul>
<ul style="list-style: disc;" class="SymbolList1">
	<li class="SymbolList1"> <span style="font-weight: bold;">smtpValidCheckEmail.ftl 
	 文件</span>：测试有效性的邮件内容</li>
</ul>
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
    <div class="home_bottom_img"><a href="https://www.supermap.com" target="_blank"><img src="../../../assets/images/超图logo.png" style="height: 32px;"/> <span class="copyright_text">
          <script>
            //<![CDATA[
            copyright();
            //]]>
          </script>
        </span> </a></div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea" id="language_switch"><img src="../../../assets/images/在线服务.svg" style="width: 16px; margin-left: 6px;"/>
      <div class="language_text" style="margin-left: 10px; min-width: 65px;">语言切换</div>
      <img class="home_bottom_dropdown_icon" src="../../../assets/images/展开.svg"/>
    </div>
    <div class="dropdownMenu" id="language_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default">简体中文</div>
              <div class="text_switch_default">EN</div-->
    </div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea_version" id="version_switch">
      <div class="language_text" style="margin-left: 25px; min-width: 65px; color: black;">版本切换</div>
      <img class="home_bottom_dropdown_icon" src="../../../assets/images/Expand_Black.svg" style="margin-top: 10px"/> <img src="../../../assets/images/EnterAllProducts.svg"/>
    </div>
    <div class="dropdownMenu" id="version_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default" >11.1.0</div>-->
    </div>
  </div>
  <div style="display: none">
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;assets/images/ExpandAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;assets/images/hideAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
    <div class="AllProductsHelp" id="AllProductsHelp">
      <div class="DetailProducts1"><a href="http://help.supermap.com/ImageXPro"><img src="../../../assets/images/SuperMapImageXPro.svg"/></a></div>
      <div class="DetailProducts2"><a href="http://help.supermap.com/iMaritimeEditor"><img src="../../../assets/images/SuperMapiMaritimeEditor.svg"/></a></div>
      <div class="Products"><a href="http://help.supermap.com/Editor/">SuperMap Editor<img src="../../../assets/images/Expand_Black.svg"/></a></div>
      <div class="MoreProducts">
        <div><a href="http://help.supermap.com">更多产品帮助</a></div>
        <div style="margin-left: 13px;"><img src="../../../assets/images/MoreProducts.svg"/></div>
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

    gRootRelPath = "../../.."
    gCommonRootRelPath = "../../.."
    gTopicId = "5.1.7_5"
  
//]]></script>

  <script src="../../../template/OnlineHelpFrameiPortal/tocconfig.js"></script>
  <script src="../../../template/OnlineHelpFrameiPortal/topicpagefix.js"></script>
  <script src="../../../template/OnlineHelpFrameiPortal/env.js"></script>
  <script src="../../../whxdata/layoutconfig.js"></script>
  <script src="../../../whxdata/brsdata.js"></script>

  
    

            

<script>
  //<![CDATA[
  showOnlyOnlineDom();
  //]]>
</script>

</body></html>