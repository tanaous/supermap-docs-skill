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

  
  <meta name="template" content="../../assets/layouts/RESTCommon.htt"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Content-Language" content="zh-CN"/>
  <meta name="topic-status" content="Complete"/>
  <meta name="topic-check-list" content="Ran Smart Index"/>
  <meta name="generator" content="Adobe RoboHelp 2022"/>
  <title>临时资源的存储与生命周期</title>
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
  <meta name="rh-index-keywords" content="TspPath:临时资源的生命周期"/>
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
  <p class="myNormal">临时资源生命周期的管理采取以下策略：在确保服务器端内存、硬盘空间等资源占用可控的前提下尽可能延长生命周期，或选择将临时资源存储在MongoDB中。</p>
  <p class="myNormal">此外，生命周期内，重启服务后，存储在本地的临时资源会被清空。</p>
  <p class="myNormal">此处主要为您介绍如何在配置文件中配置临时资源存储，在 iServer 页面上配置临时资源存储请参见<a class="contentpagehyperlink" href="../../Server_Service_Management/properties.htm#临时资源存储设置">临时资源存储设置</a>。</p>
  <h2><a id="MiniTOCBookMark1"></a>使用本地存储临时资源</h2>
  <p class="myNormal">您可以在系统配置文件（【SuperMap iServer 安装目录】\webapps\iserver\WEB-INF\iserver-system.xml）中，设置使用本地存储临时资源，包括内存空间阈值maxBytesOnHeap和磁盘空间阈值maxBytesLocalDisk。其中，maxBytesOnHeap 默认为100M，maxBytesLocalDisk 默认为10G，您可根据需要，自行设置所需的空间大小。还支持添加&lt;diskStorePath&gt;参数，设置临时资源在<span style="font-size: 12px; line-height: normal; orphans: auto; text-indent: 0px; 
	 widows: auto; -webkit-text-stroke-width: 0px; background-color: #ffffff; 
	 display: inline	 ! important ; float: none;">磁盘中存存储路径，默认的存储路径为【SuperMap iServer Java 安装目录】\temp\tmpResources。清理临时资源时使用的算法，可以通过添加&lt;memoryStoreEvictionPolicy&gt;参数来设置。此外，</span> 更多参数设置请参考：<a class="contentpagehyperlink" href="../iServerJavadoc/com/supermap/services/rest/repository/EhcacheRepoSetting.html">EhcacheRepoSetting</a></p>
  <pre class="brush:xml">  &lt;!-- 临时资源存储配置--&gt;  
  &lt;repository class=&quot;com.supermap.services.rest.repository.EhcacheRepoProvider&quot; name=&quot;localRepository&quot;&gt; 
    &lt;!-- 临时资源存储在本地 --&gt;  
    &lt;config class=&quot;com.supermap.services.rest.repository.EhcacheRepoSetting&quot;&gt; 
      &lt;!--最大允许占用的内存大小--&gt;  
      &lt;maxBytesOnHeap&gt;200m&lt;/maxBytesOnHeap&gt;  
      &lt;!--最大允许占用的磁盘空间大小--&gt;  
      &lt;maxBytesLocalDisk&gt;10g&lt;/maxBytesLocalDisk&gt;  
      &lt;!-- 磁盘存储路径 --&gt;  
      &lt;diskStorePath&gt;D:\SuperMapiServer8C\temp\tmpResources&lt;/diskStorePath&gt;  
      &lt;!-- 清理临时资源使用的算法 --&gt;  
      &lt;memoryStoreEvictionPolicy&gt;LRU&lt;/memoryStoreEvictionPolicy&gt;  
      &lt;!--扫描存储在磁盘上数据是否过期的间隔时间,单位是秒--&gt;  
      &lt;diskExpiryThreadIntervalSeconds&gt;120&lt;/diskExpiryThreadIntervalSeconds&gt; 
    &lt;/config&gt; 
  &lt;/repository&gt;  </pre>
  <ol class="ListInParagraph" style="list-style: decimal;">
    <li class="ListInParagraph">内存空间阈值</li>
  </ol>
  <p class="myNormal">由于临时资源存放在内存中可以保证存取的效率，但是占用的内存空间太大时又会影响服务器运行效率，因此需要设置一个相对合理的内存空间阈值。当临时资源占用的内存超过这个阈值的时候，服务端将默认采用 LRU 算法（Least Recently Used）对临时资源进行处理，即把最近最少使用的临时资源缓存删除。删除临时资源的算法默认为LRU算法，可以通过&lt;memoryStoreEvictionPolicy&gt;参数来设置。</p>
  <ol class="ListInParagraph" start="2" style="list-style: decimal;">
    <li class="ListInParagraph">硬盘二级缓存阈值</li>
  </ol>
  <p class="myNormal">由于保存在内存中的临时资源有限，为保证其存活周期，iServer支持将临时资源保存在硬盘中，如果客户端请求的资源在内存中访问不到，系统会去硬盘中查找。 当这些临时资源缓存占用的空间太大时，同样可能会影响服务器的运行，因此也需要设置保存临时资源的磁盘空间阈值。当临时资源占用的磁盘空间超过这个阈值的时候，将进行缓存清理。缓存清理时，同样采用 LRU 算法。</p>
  <h2><a id="MiniTOCBookMark2"></a>使用MongoDB存储临时资源</h2>
  <p class="myNormal">由于本地存储临时资源的资源存储空间有限，因此存活时间也会受限。SuperMap iServer 支持使用 MongoDB 存储临时资源，可有效延长临时资源的存活时间。此外，MongoDB 也可用于多进程模式下的临时资源存储，使各进程间资源可共享。</p>
  <p class="myNormal">配置 MongoDB 存储临时资源的方法为：在系统配置文件中，开启“基于MongoDB的临时资源存储配置”，并注释本地存储配置。如下：</p>
  <pre class="brush:xml">&lt;!-- 基于MongoDB的临时资源存储配置 --&gt;
  &lt;repository class=&quot;com.supermap.services.rest.repository.MongoDBObjSerializeRepoProvider&quot; name=&quot;mongoRepository&quot;&gt; 
	&lt;config class=&quot;com.supermap.services.rest.repository.MongoDBRepoSetting&quot;&gt; 
		&lt;host&gt;localhost&lt;/host&gt;
		&lt;port&gt;27017&lt;/port&gt;
		&lt;dbName&gt;SuperMap&lt;/dbName&gt;
	&lt;/config&gt; 
  &lt;/repository&gt; </pre>
  <p class="myNormal">在host参数中输入您使用的MongoDB的服务地址，在port参数中输入端口号，在dbName中输入数据库名称（此处需要输入已存在的数据库名称）。如果使用的MongoDB开启了安全控制，通过添加&lt;username&gt;和&lt;password&gt;参数，添加数据库的用户名和密码。详细参数设置可参考：<a class="contentpagehyperlink" href="../iServerJavadoc/com/supermap/services/rest/repository/MongoDBRepoSetting.html">MongoDBRepoSetting</a></p>
  <h2 class="myNormal">使用 Redis 存储临时资源</h2>
  <p class="myNormal">SuperMap iServer 支持将临时资源存储在 Redis 中，也支持将其用于多进程模式下的临时资源存储，使各进程间资源可共享。配置 Redis 临时资源存储的方法为：在 iserver-system.xml 文件中开启“基于 Redis 的临时资源存储配置”，并注释其他类型的临时资源存储配置。</p>
  <pre class="brush:xml">&lt;!-- 基于 Redis 的临时资源存储配置 --&gt;
&lt;repository class=&quot;com.supermap.services.rest.repository.RedisRepoProvider&quot;&gt;
    &lt;config class=&quot;com.supermap.services.rest.repository.RedisRepoSetting&quot;&gt;
      &lt;type&gt;Redis&lt;/type&gt;  
      &lt;host&gt;192.168.17.116&lt;/host&gt;  
      &lt;port&gt;6379&lt;/port&gt;  
      &lt;username&gt;SuperMap&lt;/username&gt;  
      &lt;password&gt;SuperMap&lt;/password&gt; 
    &lt;/config&gt;
&lt;/repository&gt;</pre>
  <p class="myNormal">&lt;host&gt;：【必填】Redis 的服务地址。</p>
  <p class="myNormal">&lt;port&gt;：【必填】Redis 端口号，默认为 6379。</p>
  <p class="myNormal">&lt;username&gt;：数据库所有者的用户名。</p>
  <p class="myNormal">&lt;password&gt;：该数据库所有者的密码。</p>
  <p class="myNormal">此外， 更多参数设置请参考：<a class="contentpagehyperlink" href="../iServerJavadoc/com/supermap/services/rest/repository/RedisRepoSetting.html">RedisRepoSetting</a></p>
  <h2><a id="MiniTOCBookMark3"></a>使用HSQLDB存储临时资源</h2>
  <p class="myNormal">在多进程模式下，当iServer系统配置文件中没有临时资源存储配置，或设置的临时资源存储配置（如本地存储）不支持在多进程模式下使用时，则默认使用HSQLDB存储临时资源。在单进程模式下，您也可以配置使用HSQLDB存储，使同一台机器中的多个iServer共享临时资源。</p>
  <p class="myNormal">配置HSQLDB存储临时资源的方法为：在系统配置文件中，开启“基于HSQLDB的临时资源存储配置”，并注释本地存储配置和MongoDB存储配置。如下：</p>
  <pre class="brush:xml">&lt;!-- 基于HSQLDB的临时资源存储配置 --&gt;
&lt;repository class=&quot;com.supermap.services.rest.repository.HsqldbRepoProvider&quot; name=&quot;localRepository&quot;&gt; 
                &lt;config class=&quot;com.supermap.services.rest.repository.HsqldbRepoSetting&quot;&gt; 
                       &lt;port&gt;10070&lt;/port&gt;  
                       &lt;startServer&gt;true&lt;/startServer&gt; 
                &lt;/config&gt; 
&lt;/repository&gt; </pre>
  <p class="myNormal">在&lt;port&gt;参数中填设置HSQLDB存储端口号，默认为10070。&lt;startServer&gt;参数表示是否启动HSQLDB。当一台机器中启动了多个iServer时，只需在其中一个iServer中设置该参数，并将值设置为true。</p>
  <p class="myNormal" style="font-weight: bold;">注意：如果在配置文件中，同时设置了多种临时资源存储方式，则默认使用文件中的第一种 。</p>
  <h2>使用 Caffeine 存储临时资源</h2>
  <p class="myNormal">iServer 支持将临时资源存储在 Caffeine 中，Caffeine 是一种内存缓存。配置 Caffeine 临时资源存储的方法为：在 iserver-system.xml 文件中开启“基于 Caffeine 的临时资源存储配置”，并注释其他类型的临时资源存储配置。当完成以上配置后启动 iServer，Caffeine 缓存即可用。</p>
  <pre class="brush:xml">&lt;!-- 基于 Caffeine 的临时资源存储配置 --&gt;
&lt;repository class=&quot;com.supermap.services.rest.repository.CaffeineRepoProvider&quot; name=&quot;localRepository&quot;&gt; 
                &lt;repository class=&quot;com.supermap.services.rest.repository.CaffeineRepoProvider&quot; name=&quot;localRepository&quot;&gt; 
                       &lt;maximumSize&gt;1000&lt;/maximumSize&gt; 
                       &lt;expireAfterAccess&gt;3.0&lt;/expireAfterAccess&gt; 
                &lt;/config&gt; 
&lt;/repository&gt; </pre>
  <p class="myNormal">&lt;maximumSize&gt;：缓存的最大对象数</p>
  <p class="myNormal">&lt;expireAfterAccess&gt;：访问后过期时间，即过一定时间后不访问（读取或者写入），存储的数据会被销毁，过期时间单位为小时。</p>
  <h2>使用 PostgreSQL、Kingbase、GaussDB、Vastbase、GBase 8c、 HighGoDB 存储临时资源</h2>
  <p class="myNormal">iServer 支持将临时资源存储在 PostgreSQL 、Kingbase、GaussDB、Vastbase、GBase 8c、HighGoDB 中，六者配置方法相同。</p>
  <p class="myNormal">以PostgreSQL为例， PostgreSQL是一种内存缓存。配置 PostgreSQL 临时资源存储的方法为：在 iserver-system.xml 文件中开启“基于 PostgreSQL 的临时资源存储配置”，并注释其他类型的临时资源存储配置。以上配置完成后 PostgreSQL 缓存即可用，无需启动 iServer。</p>
  <pre class="brush:xml">&lt;!-- 基于 PostgreSQL 的临时资源存储配置 --&gt;
&lt;repository class=&quot;com.supermap.services.rest.repository.PostgresRepoProvider&quot;&gt; 
                &lt;config class=&quot;com.supermap.services.rest.repository.PostgresRepoSetting&quot;&gt; 
                       &lt;type&gt;Postgres&lt;/type&gt; 
                       &lt;jdbcUrl&gt;jdbc:postgresql://ip:port/dbname?currentSchema=public&amp;amp;characterEncoding=utf8&amp;amp;useSSL=false&lt;/jdbcUrl&gt;
                       &lt;username&gt;username&lt;/username&gt;
                       &lt;password&gt;yubokLIRWThaAAhkOXBtiw..&lt;/password&gt; 
                       &lt;cacheSize&gt;21&lt;/cacheSize&gt;
                       &lt;expireTime&gt;3&lt;/expireTime&gt;
                       &lt;deleteTimeSpan&gt;2&lt;/deleteTimeSpan&gt;
                       &lt;autoCreateTable&gt;true&lt;/autoCreateTable&gt;
                &lt;/config&gt; 
&lt;/repository&gt; </pre>
  <p class="myNormal">&lt;type&gt;：数据库类型。PostgreSQL、Kingbase、GaussDB、Vastbase、GBase 8c、HighGoDB 数据库在 iserver-system.xml文件中仅&lt;type&gt;值不同，分别为Postgres、Kingbase、GaussDB、Vastbase、GBASE8C、HIGHGO_DB。</p>
  <p class="myNormal">&lt;jdbcUrl&gt;：数据库的连接信息。其中，ip 为数据库的 ip 地址，port 为数据库的端口，dbname 为数据库名称，? 后面的为数据库的一些参数信息。例如：jdbc:postgresql://127.0.0.1:5432/Testbase?currentSchema=public&amp;amp;characterEncoding=utf8&amp;amp;useSSL=false。</p>
  <p class="myNormal">&lt;expireTime&gt;：资源过期时限，单位为分钟。从该资源最后一次被使用起算，若持续未使用的时长大于资源过期时限，则 iServer 将判断该资源过期。</p>
  <p class="myNormal">&lt;deleteTimeSpan&gt;：删除过期数据库资源的时间间隔，单位为分钟。该操作的起算时间为初次使用数据库临时资源存储的时间，每至设置的间隔时间点，将删除过期的资源。</p>
  <h2><a id="MiniTOCBookMark4"></a>设置存活时间阈值</h2>
  <p class="myNormal">临时资源的缓存不论存在于内存空间还是硬盘中，当超过一定存活时间时，临时资源缓存将直接被删除。</p>
  <p class="myNormal">SuperMap iServer Java 6R(2012) <span style="font-weight: bold;">SP1及以前的版本</span>中， 某些资源如 tempLayersSet、trackingLayer、queryResults 的临时子资源的生命周期是通过 holdTime 参数来控制的，客户端或用户可以设置临时资源的存活时间，默认为15（分钟）。</p>
  <p class="myNormal">SuperMap iServer Java 6R(2012)<span style="font-weight: bold;"> SP2 及以后的版本</span>中，支持在服务配置文件（iserver-services-interfaces.xml）中设置接口配置参数 defaultHoldTime，用于设定临时资源(如 tempLayersSet、trackingLayer、queryResults 等)默认保存时间，默认为7天，设置后对 REST 接口的所有临时资源的存活时间都生效。 设置方法为：</p>
  <pre class="brush:xml">&lt;interface class=&quot;com.supermap.services.rest.RestServlet&quot; name=&quot;rest&quot;&gt;
        &lt;config class=&quot;com.supermap.services.rest.RestConfig&quot;&gt;
                &lt;accessControlAllowOrigin&gt;*&lt;/accessControlAllowOrigin&gt;
                &lt;!--  rest 资源默认保存时间，单位是分钟--&gt;
                &lt;defaultHoldTime&gt;10080&lt;/defaultHoldTime&gt;
        &lt;/config&gt;
&lt;/interface&gt;
&lt;interface class=&quot;com.supermap.services.rest.JaxrsServletForJersey&quot; name=&quot;restjsr&quot;&gt;
        &lt;config class=&quot;com.supermap.services.rest.JaxrsConfigForJersey&quot;&gt;
                &lt;accessControlAllowOrigin&gt;*&lt;/accessControlAllowOrigin&gt;
                &lt;!--  rest 资源默认保存时间，单位是分钟--&gt;
                &lt;defaultHoldTime&gt;10080&lt;/defaultHoldTime&gt;
        &lt;/config&gt;
&lt;/interface&gt;</pre>
  <h2><a id="MiniTOCBookMark5"></a>临时资源列表</h2>
  <p class="myNormal">所有 POST 请求创建的资源都为临时资源，具体资源示例如下：</p>
  <table align="center" cellspacing="0" class="iServerTable" width="70%">
    <colgroup>
      <col style="width: 20.415%;"/>
      <col style="width: 30.091%;"/>
      <col style="width: 49.494%;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td style="text-align: center">模块</td>
        <td style="text-align: center">临时资源</td>
        <td style="text-align: center">说明</td>
      </tr>
      <tr class="t2Row">
        <td rowspan="4">map</td>
        <td><a class="contentpagehyperlink" href="root/maps/map/queryResults/queryResult.htm">queryResult</a></td>
        <td><a class="contentpagehyperlink" href="root/maps/map/queryResults/queryResults.htm">queryResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/maps/map/tempLayersSet/tempLayers/tempLayers.htm">tempLayers</a></td>
        <td><a class="contentpagehyperlink" href="root/maps/map/tempLayersSet/tempLayersSet.htm">tempLayersSet</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td><a class="contentpagehyperlink" href="root/maps/map/tempLayersSet/tempLayers/tempLayer/tempLayer.htm">tempLayer</a></td>
        <td><a class="contentpagehyperlink" href="root/maps/map/tempLayersSet/tempLayersSet.htm">tempLayersSet</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/maps/map/trackingLayer/highlightTargetSet.htm">highlightTargetSet</a></td>
        <td><a class="contentpagehyperlink" href="root/maps/map/trackingLayer/trackingLayer.htm">trackingLayer</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td rowspan="2">data</td>
        <td><a class="contentpagehyperlink" href="root/data/featureResults/featureResult.htm">featureResult</a></td>
        <td><a class="contentpagehyperlink" href="root/data/featureResults/featureResults.htm">featureResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/data/coordTransfer/coordtransferResult/coordtransferResult.htm">coordtransferResult</a></td>
        <td><a class="contentpagehyperlink" href="root/data/coordTransfer/coordTransfer.htm">coordTransfer</a>资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td rowspan="15">spatialAnalyst</td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetBufferResults/datasetBufferResult.htm">datasetBufferResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetBufferResults/datasetBufferResults.htm">datasetBufferResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetOverlayResults/datasetOverlayResult.htm">datasetOverlayResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetOverlayResults/datasetOverlayResults.htm">datasetOverlayResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetIsolineResults/datasetIsolineResult.htm">datasetIsolineResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetIsolineResults/datasetIsolineResults.htm">datasetIsolineResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetIsoregionResults/datasetIsoregionResult.htm">datasetIsoregionResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetIsoregionResults/datasetIsoregionResults.htm">datasetIsoregionResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/interpolation/interpolationIDW/interpolationIDWResult.htm">interpolationIDWResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/interpolation/interpolationIDW/interpolationIDW.htm">interpolationIDW</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/interpolation/interpolationDensity/interpolationDensityResult.htm">interpolationDensityResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/interpolation/interpolationDensity/interpolationDensity.htm">interpolationDensity</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/interpolation/interpolationRBF/interpolationRBFResult.htm">interpolationRBFResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/interpolation/interpolationRBF/interpolationRBF.htm">interpolationRBF</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/interpolation/interpolationKriging/interpolationKrigingResult.htm">interpolationKrigingResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/interpolation/interpolationKriging/interpolationKriging.htm">interpolationKriging</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/linearReferencing/spatialdataResult.htm">spatialDataResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/linearReferencing/generateSpatialData.htm">generateSpatialData</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetGeorelationResults/datasetGeorelationResult.htm">datasetGeorelationResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetGeorelationResults/datasetGeorelationResults.htm">datasetGeorelationResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetThiessenResults/datasetThiessenResult.htm">datasetThiessenPolygenResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetThiessenResults/datasetThiessenResults.htm">datasetThiessenPolygenResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/geometry/geometryBufferResults/geometryBufferResult.htm">geometryBufferResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/geometry/geometryBufferResults/geometryBufferResults.htm">geometryBufferResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetOverlayResults/datasetOverlayResult.htm">geometryOverlayResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/datasets/datasetOverlayResults/datasetOverlayResults.htm">geometryOverlayResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t1Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/geometry/geometryIsolineResults/geometryIsolineResult.htm">geometryIsolineResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/geometry/geometryIsolineResults/geometryIsolineResults.htm">geometryIsolineResults</a> 资源 POST 操作结果。</td>
      </tr>
      <tr class="t2Row">
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/geometry/geometryIsoregionResults/geometryIsoregionResult.htm">geometryIsoregionResult</a></td>
        <td><a class="contentpagehyperlink" href="root/spatialanalyst/geometry/geometryIsoregionResults/geometryIsoregionResults.htm">geometryIsoregionResults</a> 资源 POST 操作结果。</td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal"> </p>
  <p class="myNormal"> </p>
  <p class="myNormal"> </p>
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
    gTopicId = "8.2.0_4"
  
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