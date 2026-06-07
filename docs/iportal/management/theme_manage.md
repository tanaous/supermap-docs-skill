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

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Content-Language" content="zh-CN"/>
  <meta name="template" content="../../../assets/layouts/SuperMapiServerMain.htt"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>主题管理</title>
  <link rel="StyleSheet" href="../../../assets/css/SuperMapHelp.css" type="text/css"/>
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
  <p class="myNormal">管理员登录 iPortal 后，在“管理”&gt;“站点配置”&gt;“站点定制”页面，点击左侧的“主题管理“， 会看到系统默认提供了蓝色、橙色、暗橙、暗红四套主题。其中蓝色、橙色主题是浅色系主题，暗橙、暗红是深色系主题。您可设置其中一种为门户的默认主题，也可下载主题，并基于下载的主题文件（json 格式）自定义一个新的主题并导入门户。配置完主题后，普通用户可在“<a class="contentpagehyperlink" href="../../iportal_usage/user_center.htm">个人中心</a>”&gt;“<a class="contentpagehyperlink" href="../../iportal_usage/user_center.htm#myTheme">我的主题</a>”页面设置偏好的站点主题风格。</p>
  <h2>设置默认主题</h2>
  <p class="myNormal">在操作栏，点击“设为默认主题”可将相应的主题设置为门户全站的默认主题。设置完后，未登录状态，门户都将使用设置的默认主题进行展示。登录状态，默认也会使用管理员设置的默认主题进行展示；若用户自己设置过主题，则会根据用户自己设置的主题进行展示。</p>
  <h2>更新主题</h2>
  <p class="myNormal">在操作栏，点击“更新主题”，在弹窗中分别输入主题的中文名、英文名，选择目标主题文件，点击“确定”即可更新主题。<span style="font-weight: bold;">注意</span>：系统默认提供的主题不支持更新操作。</p>
  <h2>下载主题</h2>
  <p class="myNormal">在操作栏，点击“下载主题”，即可下载相应主题的 json 文件。当您需要自定义新主题时，可下载最接近您需求的主题文件，进而基于下载的主题文件进行定制。</p>
  <h2>删除主题</h2>
  <p class="myNormal">在操作栏，点击“删除主题”，可删除相应的主题。<span style="font-weight: bold;">注意</span>：系统默认提供的主题不支持删除操作。</p>
  <h2>自定义新主题</h2>
  <p class="myNormal">iPortal 提供的主题支持以 json 格式下载，也支持导入新的 json 主题文件。json 主题文件内容主要由头部（header）、二级导航栏（resourceHeader）、内容（body）、组件（components）、底部（footer）组成，如下所示（以蓝色主题为例）。</p>
  <p class="myCodeP">{</p>
  <p class="myCodeP">    &quot;themeSetting&quot;: {</p>
  <p class="myCodeP">        &quot;version&quot;: &quot;1.0&quot;,</p>
  <p class="myCodeP">        &quot;header&quot;: {</p>
  <p class="myCodeP">            &quot;backgroundColor&quot;: &quot;rgb(255, 255, 255)&quot;,</p>
  <p class="myCodeP">            &quot;color&quot;: &quot;rgb(51, 51, 51)&quot;,</p>
  <p class="myCodeP">            &quot;hoverBackgroundColor&quot;: &quot;#f5f5f5&quot;,</p>
  <p class="myCodeP">            &quot;hoverFontColor&quot;: &quot;#1890FF&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        &quot;resourceHeader&quot;: {</p>
  <p class="myCodeP">            &quot;backgroundColor&quot;: &quot;#ffffff&quot;,</p>
  <p class="myCodeP">            &quot;color&quot;: &quot;#333333&quot;,</p>
  <p class="myCodeP">            &quot;hoverFontColor&quot;: &quot;#1890FF&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        &quot;body&quot;: {</p>
  <p class="myCodeP">            &quot;backgroundColor&quot;: &quot;#F7F8FA&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        &quot;components&quot;: {</p>
  <p class="myCodeP">            &quot;primaryColor&quot;: &quot;#1890FF&quot;,</p>
  <p class="myCodeP">            &quot;textColor&quot;: &quot;#333333&quot;,</p>
  <p class="myCodeP">            &quot;subTextColor&quot;: &quot;#666666&quot;,</p>
  <p class="myCodeP">            &quot;promptTextColor&quot;: &quot;#999999&quot;,</p>
  <p class="myCodeP">            &quot;disabledColor&quot;: &quot;#cccccc&quot;,</p>
  <p class="myCodeP">            &quot;borderColorBase&quot;: &quot;#d9d9d9&quot;,</p>
  <p class="myCodeP">            &quot;subBorderColorBase&quot;: &quot;rgba(0,0,0,0.06)&quot;,</p>
  <p class="myCodeP">            &quot;backgroundColor&quot;: &quot;#ffffff&quot;,</p>
  <p class="myCodeP">            &quot;subBackgroundColor&quot;: &quot;#ffffff&quot;,</p>
  <p class="myCodeP">            &quot;activeBackgroundColor&quot;: &quot;#F2FBFF&quot;,</p>
  <p class="myCodeP">            &quot;thirdBackgroundColor&quot;: &quot;#fafafa&quot;,</p>
  <p class="myCodeP">            &quot;fourthBackgroundColor&quot;: &quot;#ffffff&quot;</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        &quot;footer&quot;: {</p>
  <p class="myCodeP">            &quot;backgroundColor&quot;: &quot;rgb(255, 255, 255)&quot;,</p>
  <p class="myCodeP">            &quot;color&quot;: &quot;rgb(51, 51, 51)&quot;</p>
  <p class="myCodeP">        }</p>
  <p class="myCodeP">    }</p>
  <p class="myCodeP">}</p>
  <h3>头部（header）</h3>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">backgroundColor：头部背景色</li>
    <li class="SymbolList1">color：头部文本色</li>
    <li class="SymbolList1">hoverBackgroundColor：鼠标经过一级导航栏每一项的背景色</li>
    <li class="SymbolList1">hoverFontColor：鼠标经过一级导航栏每一项的文本色。一般设置为主题色。</li>
  </ul>
  <h3>二级导航栏（resourceHeader）</h3>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">backgroundColor：二级导航栏背景色</li>
    <li class="SymbolList1">color：二级导航栏文本色</li>
    <li class="SymbolList1">hoverFontColor：鼠标经过二级导航栏每一项的文本色。一般设置为主题色。</li>
  </ul>
  <h3>内容（body）</h3>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">backgroundColor：页面内容区的背景色</li>
  </ul>
  <h3>组件（components）</h3>
  <p class="myNormal">页面内容（body）区用到的组件，如表单、输入框、侧边栏、列表、卡片等。</p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">primaryColor：主题色。选中组件或鼠标经过组件时，将使用主题色显色组件的文本或背景色。</li>
    <li class="SymbolList1">textColor：正常状态下，组件中主要文本的颜色。</li>
    <li class="SymbolList1">subTextColor：正常状态下，组件中次要文本的颜色。</li>
    <li class="SymbolList1">promptTextColor：提示文本色，如输入框中的默认输入内容，或输入框旁边的提示输入内容。</li>
    <li class="SymbolList1">disabledColor：组件被禁用时采用的颜色。</li>
    <li class="SymbolList1">borderColorBase：组件的主边框色。如输入框、按钮等的边框均使用主边框色。</li>
    <li class="SymbolList1">subBorderColorBase：组件的次边框色。一般用于页面中的分割条。</li>
    <li class="SymbolList1">backgroundColor：组件背景色</li>
    <li class="SymbolList1">subBackgroundColor：组件次背景色。一般用于编辑状态下，输入框内容的背景色。</li>
    <li class="SymbolList1">activeBackgroundColor：鼠标选中组件每一项的背景色。</li>
    <li class="SymbolList1">thirdBackgroundColor：组件第三背景色。一般用于表头、Tabs 标签页的填充。</li>
    <li class="SymbolList1">fourthBackgroundColor：组件第四背景色。一般用于下拉菜单背景色、气泡背景色。</li>
  </ul>
  <h3>底部（footer）</h3>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">backgroundColor：底部背景色</li>
    <li class="SymbolList1">color：底部文本色</li>
  </ul>
  <h3>示例：</h3>
  <p class="myNormal">自定义新主题时，建议您下载与您项目需求最接近的主题文件进行定制。例如，定制一个浅色系的红色主题，您可下载系统提供的蓝色主题文件，然后修改头部（header）的 hoverFontColor 、二级导航栏（resourceHeader）的hoverFontColor 和组件（components）中的 primaryColor 为红色色值，如“#E14D57”即可。若您要定制的主题变化较大，修改时，请参考上述各部分的字段介绍。</p>
  <p class="myNormal">定制完成后，需要通过导入功能添加到 iPortal 中。步骤：</p>
  <ol class="ListInParagraph" style="list-style: decimal;">
    <li class="ListInParagraph">点击“导入主题”；</li>
    <li class="ListInParagraph">在弹窗中分别输入新主题的中文名、英文名，并选择新主题文件；</li>
    <li class="ListInParagraph">点击“确定”即可导入新主题。</li>
  </ol>
  <p class="myNormal">导入完成后，您可在“<a class="contentpagehyperlink" href="../../iportal_usage/user_center.htm">个人中心</a>”&gt;我的主题页面选择新主题，查看新主题的实际效果。也可继续修改主题后，通过更新操作更新主题。</p>
  <p class="myNormal">注：iPortal 管理界面不支持主题的切换，您需在门户前端界面查看主题效果。</p>
  <p class="myNormal"> </p>
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
    gTopicId = "5.2.0_2"
  
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