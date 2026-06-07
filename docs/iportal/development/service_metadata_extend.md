<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3, user-scalable=yes"/>
  <meta name="version" content="2022.1.0"/>
  <link rel="StyleSheet" href="../../../../template/styles/topic.min.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" type="text/css" href="../../../../template/OnlineHelpFrameiPortal/layout.css"/>
  <link rel="StyleSheet" data-skin="true" href="../../../../template/OnlineHelpFrameiPortal/userstyles.css" type="text/css"/>
  <link rel="StyleSheet" data-skin="true" href="../../../../template/OnlineHelpFrameiPortal/homeButtom.css" type="text/css"/>
  <link rel="stylesheet" data-skin="true" href="../../../../template/OnlineHelpFrameiPortal/index_Home.css" type="text/css"/>
  
    <link rel="shortcut icon" type="image/png" href="../../../../iportal-icon.png"/>
    
  <script data-relpath="../../../.." src="../../../../template/scripts/csh-redirect.js" type="text/javascript"></script>

<meta name="template" content="../../../../assets/layouts/SuperMapiServerMain.htt"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Language" content="zh-CN"/>
<meta name="generator" content="Adobe RoboHelp 2022"/>
<title>案例3—服务元数据前端内容扩展开发</title>
<link rel="StyleSheet" href="../../../../assets/css/SuperMapHelp.css" type="text/css"/>
<script type="text/javascript" src="../../../../assets/js/shCore.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushBash.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushCpp.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushCSharp.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushCss.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushDelphi.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushDiff.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushGroovy.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushJava.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushJScript.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushPhp.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushPlain.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushPython.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushRuby.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushScala.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushSql.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushVb.js"></script>
<script type="text/javascript" src="../../../../assets/js/shBrushXml.js"></script>
<script type="text/javascript" src="../../../../assets/js/ConfigiServer6R.js"></script>
<script type="text/javascript" src="../../../../assets/js/SMCollapse.js"></script>
<meta name="rh-version" content="2022.1.188"/>
  
  <link rel="stylesheet" type="text/css" href="../../../../assets/css/common_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../../../assets/css/index_Home.css"/>
  <link rel="stylesheet" type="text/css" href="../../../../assets/css/homeButtom.css"/>
  <script src="../../../../assets/js/jQuery.js"></script>
  <script type="text/javascript" src="../../../../assets/js/ResourceCenter_Hover.js"></script>
<meta name="rh-version" content="2022.1.188"/></head>

<body class="rh-BODY-wrapper">
  <header class="RH-LAYOUT-HEADER-container" role="banner">
   <div class="enterAllProductsHome only-online" style="display:none"> 
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;../../../../assets/images/EnterAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;../../../../assets/images/EnterAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
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
		    <img src="../../../../assets/images/MoreProducts.svg"/>
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
      <div class="TopNavigation1"><a class="TopNavigationLink" href="../../../../iP/Install_Uninstal_iportal/install_uninstall.htm">安装</a></div>
      <div class="TopNavigation2"><a class="TopNavigationLink" href="../../../../iP/iportal_usage/gettingStarted.htm">使用</a></div>
      <div class="TopNavigation3"><a class="TopNavigationLink" href="../../../../iP/iportal_management/admin_gettingStarted.htm">管理</a></div>
	  <div class="TopNavigation4"><a class="TopNavigationLink" href="../../../../API\iServer_API_reference.htm">开发</a></div>
    </div>
    <div class="search-placeholder-class" id="search-with-help"></div>
	<div class="home_bottom_bg_topic only-online" style="display:none" id="bottomContainer">
      <div class="dropdown language">
        <div class="flex-row showArea" id="language_switch" onclick="showLanguagePanel()" style="min-width: 85px;">
          <div class="language_text">语言切换</div>
          <img class="home_bottom_dropdown_icon" src="../../../../assets/images/Expand_Black.svg"/>
        </div>
        <div class="dropdownMenu" id="language_list" style="display: none; text-align: center;">
        </div>
      </div>
      <div class="BannerVerticalLineRight">|</div>
      <div class="dropdown version">
        <div class="flex-row showArea_version" id="version_switch" onclick="showVersionPanel()" style="min-width: 85px; height: 40px;">
          <div class="language_text">版本切换</div>
          <img class="home_bottom_dropdown_icon" src="../../../../assets/images/Expand_Black.svg"/>
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
<p class="myNormal">在 iPortal 门户中注册服务时，支持输入服务的元数据信息，方便对注册服务进行查询和管理。当前端注册服务页面中提供的元数据项不能满足您实际的项目需求时，可以对服务的元数据信息进行扩展，即在注册服务页面新增元数据项。 
 </p>
<p class="myNormal">下面以新增加“resRefDate”元数据字段为例，在元数据标准中的定义是：引用资料的有关日期，详细为您介绍如何在 
 iPortal 门户中扩展服务的元数据信息。</p>
<ol style="list-style: decimal;" class="ListInParagraph">
	<li class="ListInParagraph">新增加的元数据信息必须是 com.supermap.services.metadata.smmd2007.Metadata 
	 中有的字段才支持扩展，可直接查询 iPortal 联机帮助中的 Javadoc 即可，字段的含义及其父类可查阅元数据标准：《中华人民共和国国家标准 
	 GB T 19710-2005 地理信息元数据.pdf》，iPortal 提供的 Metadata 类是这个标准的子集。</li>
	<li class="ListInParagraph">编辑源码文件扩展服务元数据信息，注册服务涉及到的前端页面包括：</li>
</ol>
<ul style="list-style: circle;" class="SymbolList2">
	<li class="SymbolList2">iportalServiceRegister_zh_CN.ftl：注册服务页面</li>
	<li class="SymbolList2">iportalServiceDetail_zh_CN.ftl：服务详细信息页面</li>
	<li class="SymbolList2">metadata.js：用于解析用户输入的元数据信息文件</li>
</ul>
<p class="myNormal">在 com.supermap.services.metadata.smmd2007.Metadata 
 中查到“resRefDate”元数据字段后，即可进行以下操作：</p>
<ul style="list-style: disc;" class="CommonList">
	<li class="CommonList">编辑 metadata.js 源文件</li>
</ul>
<p class="myNormal">metadata.js 源文件位于【SuperMap iPortal 产品目录】/webapps/iportal/WEB-INF/lib 
 目录下 iportal-all-*.jar中的/staticFiles/portal-src/js/service 文件夹中。</p>
<p class="myNormal">在 metadata.js 源文件中，需要将新增加的“resRefDate”元数据字段写入以下两个方法中：</p>
<ul style="list-style: circle;" class="SymbolList2">
	<li class="SymbolList2">root._getMetadataInfo = function()：用于生成元数据对象并赋值</li>
	<li class="SymbolList2">root.getMetadataInfo = function(editOrView)：用于获取前端输入的元数据信息并传给后端</li>
</ul>
<p class="myNormal"><span style="font-weight: bold;">第一步</span>：生成“resRefDate”元数据对象并赋值，即在root._getMetadataInfo 
 = function() 方法中的 metadata.set 函数中写入“resRefDate”元数据信息。</p>
<p class="myNormal">在写入之前，您需要首先确认该函数中是否已经有了该元数据信息，如果已经存在了可直接跳过此步进入第二步，如果没有，您需要查询该元数据的父类是谁（可在元数据标准里查询），然后在其父类中写入该元数据信息。例如：“resRefDate”元数据的父类是“idCitation”，那么在metadata.set函数中找到父类“idCitation”后，可以直接在“idCitation”父类中写入“resRefDate”元数据信息，代码如下：</p>
<p class="myCodeP">idCitation: new Metadata.Smmd2007Template.DataIdInfo.DataIdent.IdCitation({</p>
<p class="myCodeP">   ......</p>
<p class="myCodeP">   resRefDate: new Metadata.Smmd2007Template.DataIdInfo.DataIdent.IdCitation.ResRefDate({</p>
<p class="myCodeP">    refDate: $(&quot;#txtREFDATE&quot;).val(),</p>
<p class="myCodeP">    refDateType: $(&quot;#txtRefDateType&quot;).val()</p>
<p class="myCodeP">    })</p>
<p class="myNormal">其中：</p>
<ul style="list-style: circle;" class="SymbolList2">
	<li class="SymbolList2">resRefDate：元数据名称</li>
	<li class="SymbolList2">refDate：元数据中的字段名称，其中，括号中的“txtREFDATE”参数:格式为：txt+字段名称，是向前端传递的参数</li>
	<li class="SymbolList2">refDateType：元数据中的字段名称，其中，括号中的“txtRefDateType”参数:格式为：txt+字段名称，是向前端传递的参数</li>
</ul>
<p class="myNormal"><span style="font-weight: bold;">第二步</span>：获取前端输入的“resRefDate”元数据信息并传给后端，即在root.getMetadataInfo 
 = function(editOrView) 方法中的metadata.set函数中写入“resRefDate”元数据信息，方法同第一步，代码内容如下：</p>
<p class="myCodeP"> idCitation: new this.Metadata.Smmd2007Template.DataIdInfo.DataIdent.IdCitation({</p>
<p class="myCodeP">......</p>
<p class="myCodeP">resRefDate: new this.Metadata.Smmd2007Template.DataIdInfo.DataIdent.IdCitation.ResRefDate({</p>
<p class="myCodeP">refDate: $(&quot;#txtREFDATE&quot;).val(),</p>
<p class="myCodeP">refDateType: $(&quot;#txtRefDateType&quot;).val()</p>
<p class="myCodeP">})</p>
<p class="myNormal"><span style="font-weight: bold;">第三步</span>：修改完成后，需要将【SuperMap 
 iPortal 产品目录】/webapps/iportal/WEB-INF/lib 目录下 iportal-all-*.jar中的/staticFiles 
 目录下的 portal 文件夹删除或者重命名为其他名称，例如：portal-bak，然后将文件夹 portal-src 重命名为 portal。</p>
<ul style="list-style: disc;" class="CommonList">
	<li class="CommonList">编辑 iportalServiceRegister_zh_CN.ftl 源文件</li>
</ul>
<p class="myNormal">修改前端注册服务页面，其源文件为 iportalServiceRegister_zh_CN.ftl，位于【SuperMap 
 iPortal 产品目录】/webapps/iportal/WEB-INF/lib目录下iportal-all-*.jar中的/templates 
 文件夹中。在”元数据信息“选项卡中的”传真”内容及其输入的文本框后面，加上”更新日期“内容和输入的文本框，代码如下：</p>
<p class="myCodeP">&lt;tr&gt;</p>
<p class="myCodeP">&lt;td class=&quot;text-right col-xs-p12&quot;&gt;更新日期：&lt;/td&gt;</p>
<p class="myCodeP">&lt;td&gt;&lt;input id=&quot;txtREFDATE&quot;  type=&quot;text&quot; 
 class=&quot;form-control ip-input-txt col-xs-4&quot; &gt;&lt;/td&gt;</p>
<p class="myCodeP">&lt;/tr&gt;</p>
<p class="myNormal">其中，id 值为第一步中”refDate”字段中括号里面的值:”txtREFDATE”。</p>
<ul style="list-style: disc;" class="CommonList">
	<li class="CommonList">编辑 iportalServiceDetail_zh_CN.ftl 源文件</li>
</ul>
<p class="myNormal">修改服务详细信息页面，其源文件为 iportalServiceDetail_zh_CN.ftl，位于【SuperMap 
 iPortal 产品目录】/webapps/iportal/WEB-INF/lib目录下iportal-all-*.jar中的/templates 
 文件夹中。该页面包含两部分内容：服务元数据编辑和服务详细信息，需要同时修改这两部分内容，分别在”传真”内容及其输入的文本框后面，加上”更新日期“内容和输入的文本框，代码如下：</p>
<p class="myNormal">服务元数据编辑部分：</p>
<p class="myCodeP">&lt;td class=&quot;text-right&quot;&gt;更新日期：&lt;/td&gt;</p>
<p class="myCodeP">&lt;td&gt;</p>
<p class="myCodeP">&lt;input value=&quot;${( pmd.metadata.dataIdInfo.dataIdent.idCitation.resRefDate.refDate)!&quot;&quot;}&quot; 
 id=&quot;txtREFDATE&quot;</p>
<p class="myCodeP">type=&quot;text&quot; class=&quot;form-control ip-input-txt&quot; 
 style=&quot;width:265px&quot;&gt;</p>
<p class="myCodeP">&lt;/td&gt;</p>
<p class="myNormal">服务详细信息部分：</p>
<p class="myCodeP">&lt;tr&gt;</p>
<p class="myCodeP">&lt;td class=&quot;text-right vt&quot; style=&quot;width: 
 15%;&quot;&gt;更新日期：&lt;/td&gt;</p>
<p class="myCodeP">&lt;td style=&quot;width:85%;&quot;&gt;${(pmd.metadata.dataIdInfo.dataIdent.idCitation.resRefDate.refDate)!&quot;&quot;}&lt;/td&gt;</p>
<p class="myCodeP">&lt;/tr&gt;</p>
<ol start="3" style="list-style: decimal;" class="ListInParagraph">
	<li class="ListInParagraph">结果验证</li>
</ol>
<p class="myNormal">重启 iPortal 服务，在注册服务页面的元数据选项卡中，会显示新增加的元数据项，如：更新日期，输入更新日期，完成服务注册后，在服务的详细信息页面会显示刚刚新增的更新日期。</p>
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
    <div class="home_bottom_img"><a href="https://www.supermap.com" target="_blank"><img src="../../../../assets/images/超图logo.png" style="height: 32px;"/> <span class="copyright_text">
          <script>
            //<![CDATA[
            copyright();
            //]]>
          </script>
        </span> </a></div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea" id="language_switch"><img src="../../../../assets/images/在线服务.svg" style="width: 16px; margin-left: 6px;"/>
      <div class="language_text" style="margin-left: 10px; min-width: 65px;">语言切换</div>
      <img class="home_bottom_dropdown_icon" src="../../../../assets/images/展开.svg"/>
    </div>
    <div class="dropdownMenu" id="language_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default">简体中文</div>
              <div class="text_switch_default">EN</div-->
    </div>
  </div>
  <div style="display: none">
    <div class="flex-row showArea_version" id="version_switch">
      <div class="language_text" style="margin-left: 25px; min-width: 65px; color: black;">版本切换</div>
      <img class="home_bottom_dropdown_icon" src="../../../../assets/images/Expand_Black.svg" style="margin-top: 10px"/> <img src="../../../../assets/images/EnterAllProducts.svg"/>
    </div>
    <div class="dropdownMenu" id="version_list" style="display:none; text-align: center;">
      <!--div class="text_switch_default" >11.1.0</div>-->
    </div>
  </div>
  <div style="display: none">
    <div class="enterAllProductsHelpButton" style="background-image: url(&#39;assets/images/ExpandAllProducts.svg&#39;)" id="enterAllProductsHelpButton" onclick="showAllProductsHelp()"> </div>
    <div class="CollEnterAllProductsHelpButton" style="background-image: url(&#39;assets/images/hideAllProducts.svg&#39;)" id="CollEnterAllProductsHelpButton" onclick="hideAllProductsHelp()"> </div>
    <div class="AllProductsHelp" id="AllProductsHelp">
      <div class="DetailProducts1"><a href="http://help.supermap.com/ImageXPro"><img src="../../../../assets/images/SuperMapImageXPro.svg"/></a></div>
      <div class="DetailProducts2"><a href="http://help.supermap.com/iMaritimeEditor"><img src="../../../../assets/images/SuperMapiMaritimeEditor.svg"/></a></div>
      <div class="Products"><a href="http://help.supermap.com/Editor/">SuperMap Editor<img src="../../../../assets/images/Expand_Black.svg"/></a></div>
      <div class="MoreProducts">
        <div><a href="http://help.supermap.com">更多产品帮助</a></div>
        <div style="margin-left: 13px;"><img src="../../../../assets/images/MoreProducts.svg"/></div>
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

    gRootRelPath = "../../../.."
    gCommonRootRelPath = "../../../.."
    gTopicId = "1"
  
//]]></script>

  <script src="../../../../template/OnlineHelpFrameiPortal/tocconfig.js"></script>
  <script src="../../../../template/OnlineHelpFrameiPortal/topicpagefix.js"></script>
  <script src="../../../../template/OnlineHelpFrameiPortal/env.js"></script>
  <script src="../../../../whxdata/layoutconfig.js"></script>
  <script src="../../../../whxdata/brsdata.js"></script>

  
    

            

<script>
  //<![CDATA[
  showOnlyOnlineDom();
  //]]>
</script>

</body></html>