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
  <title>搜索服务配置</title>
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
  <p class="myNormal">SuperMap iPortal 基于 Elasticsearch 分布式搜索引擎实现了资源中心、全局搜索和服务访问统计功能。SuperMap iPortal 产品包默认使用内置的 ElasticSearch 搜索服务器，您无需任何配置即可正常使用 iPortal 的相关功能。您也可<a class="contentpagehyperlink" href="../../FAQ/ip_FAQ.htm#修改内置全局搜索配置">更改内置搜索服务的默认配置</a>（如端口号、集群名等）以满足实际生产环境。内置搜索服务的优点是：操作简单，针对小型的门户网站应用。</p>
  <p class="myNormal">如果 iPortal 的内置搜索服务无法满足您的业务需求，您可以使用自己独立部署的 Elasticsearch 搜索服务器。iPortal 支持配置 6.6+ 版本的 <a class="contentpagehyperlink" href="https://www.elastic.co/downloads/elasticsearch" target="_blank">Elasticsearch</a>，且需包含 <a class="contentpagehyperlink" href="https://www.elastic.co/guide/en/elasticsearch/plugins/8.3/index.html" target="_blank">ICU Analysis 插件</a>（版本号需与 Elasticsearch 保持一致）。 具体配置过程如下：</p>
  <p class="myNormal"><span><strong>注意</strong>: 在 Windows 操作系统中，请确保 iPortal 和 Elasticsearch 的安装路径不包含中文字符。路径中的中文字符可能导致 Elasticsearch 服务无法正常启动。</span></p>
  <ol class="ListInParagraph" style="list-style: decimal;">
    <li class="ListInParagraph">打开 %SuperMap iPortal_HOME%/webapps/iportal/WEB-INF/config/search/WEB-INF 目录下的 search-beans.xml 配置文件，可以根据您自己部署的 Elasticsearch 服务器更改参数，两者需保持一致。</li>
  </ol>
  <p class="myCodeP">&lt;bean id=&quot;esSetting&quot; class=&quot;com.supermap.iportal.search.commontypes.ESSetting&quot;&gt;</p>
  <p class="myCodeP">    &lt;property name=&quot;address&quot; value=&quot;127.0.0.1&quot;&gt;&lt;/property&gt;</p>
  <p class="myCodeP">    &lt;property name=&quot;port&quot; value=&quot;39200&quot;&gt;&lt;/property&gt;  </p>
  <p class="myCodeP">    &lt;property name=&quot;clusterName&quot; value=&quot;myapplication&quot;&gt;&lt;/property&gt;</p>
  <p class="myCodeP">    &lt;!-- &lt;property name=&quot;nodeName&quot; value=&quot;node1&quot;&gt;&lt;/property&gt; --&gt;</p>
  <p class="myCodeP">    &lt;property name=&quot;indexName&quot; value=&quot;portalsearch&quot;&gt;&lt;/property&gt;</p>
  <p class="myCodeP">    &lt;property name=&quot;numberOfShards&quot; value=&quot;5&quot;&gt;&lt;/property&gt;</p>
  <p class="myCodeP">    &lt;property name=&quot;numberOfReplicas&quot; value=&quot;0&quot;&gt;&lt;/property&gt;</p>
  <p class="myCodeP">&lt;/bean&gt;</p>
  <ul class="SymbolList2" style="list-style: circle;">
    <li class="SymbolList2">address：Elasticsearch 的 IP 地址。默认为本机 IP：127.0.0.1，使用 iPortal 自带的 Elasticsearch。</li>
    <li class="SymbolList2">port：Elasticsearch 的 HTTP 协议通讯端口号。默认值：39200。</li>
    <li class="SymbolList2">clusterName：Elasticsearch 的集群名称。</li>
    <li class="SymbolList2">nodeName：Elasticsearch 的节点名称。可选配置项，如需指定 Elasticsearch 节点，在配置时需要将该行的注释打开。</li>
    <li class="SymbolList2">indexName：Elasticsearch 里存储 iPortal 所有资源索引的索引库名称。用户可自定义名称，若对应的索引库不存在，iPortal 将自动创建索引库。</li>
    <li class="SymbolList2">numberOfShards：索引分片数。设置 Elasticsearch 对索引进行划分的分片数量。默认值：5，将索引划分为 5 片。</li>
    <li class="SymbolList2">numberOfReplicas：索引拷贝数。默认值：0，没有拷贝索引副本。</li>
  </ul>
  <ol class="ListInParagraph" start="2" style="list-style: decimal;">
    <li class="ListInParagraph">修改 %SuperMap iPortal_HOME%/webapps/iportal/WEB-INF 目录下的 iportal.xml 配置文件，具体配置项如下：</li>
  </ol>
  <p class="myCodeP">&lt;IportalConfig&gt;</p>
  <p class="myCodeP">  ...</p>
  <p class="myCodeP">  &lt;modulesConfig&gt;</p>
  <p class="myCodeP">    &lt;searchModuleConfig class=&quot;com.supermap.server.config.BuildinSearchConfig&quot;&gt;</p>
  <p class="myCodeP">      &lt;enable&gt;true&lt;/enable&gt;</p>
  <p class="myCodeP">      &lt;reindexAllResources&gt;true&lt;/reindexAllResources&gt;</p>
  <p class="myCodeP">      &lt;startElasticSearch&gt;true&lt;/startElasticSearch&gt;</p>
  <p class="myCodeP">      &lt;port&gt;8192&lt;/port&gt;</p>
  <p class="myCodeP">    &lt;/searchModuleConfig&gt;</p>
  <p class="myCodeP">  &lt;/modulesConfig&gt;</p>
  <p class="myCodeP">  ...</p>
  <p class="myCodeP">&lt;/IportalConfig&gt;</p>
  <ul class="SymbolList2" style="list-style: circle;">
    <li class="SymbolList2">&lt;enable&gt;：是否启用搜索服务。默认值： true。注意：此参数必须设置为 true。</li>
    <li class="SymbolList2">&lt;reindexAllResources&gt;：是否重新索引已有 iPortal 资源。重建索引后，此配置会自动设置为 false。</li>
    <li class="SymbolList2">&lt;startElasticSearch&gt;：是否启用 iPortal 内置的 Elasticsearch。默认值：true。如果您希望使用自己搭建的 Elasticsearch 服务器，需要将该值设置为 false。</li>
    <li class="SymbolList2">&lt;port&gt;：搜索服务的端口。默认值：8192。</li>
  </ul>
  <p class="myNormal">配置完成后，重启 iPortal 即可生效。</p>
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
    gTopicId = "5.1.7_1"
  
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