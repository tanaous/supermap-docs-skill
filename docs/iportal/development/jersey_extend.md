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
  <link rel="stylesheet" data-skin="true" href="../../../../template/OnlineHelpFrameiPortal/common_Home.css" type="text/css"/>
  <link rel="stylesheet" data-skin="true" href="../../../../template/OnlineHelpFrameiPortal/index_Home.css" type="text/css"/>
  
    <link rel="shortcut icon" type="image/png" href="../../../../iportal-icon.png"/>
    
  <script data-relpath="../../../.." src="../../../../template/scripts/csh-redirect.js" type="text/javascript"></script>

<meta name="template" content="../../../../assets/layouts/SuperMapiServerMain_ENG.htt"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Language" content="en-US"/>
<meta name="generator" content="Adobe RoboHelp 2022"/>
<title>Case 2. Use Jersey to develop sub-resources based on existing resources of iPortal</title>
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
    <div class="RH-LAYOUT-HEADER-logo-box  ">
      <div class="RH-LAYOUT-HEADER-logo" id="logo-holder"></div>
    </div>
    <div class="TopicTopNavigation">
      <div class="TopNavigation1"><a class="TopNavigationLink" href="../../../../iP\Install_Uninstal_iportal\install_uninstall.htm">Install</a></div>
      <div class="TopNavigation2"><a class="TopNavigationLink" href="../../../../iP\iportal_usage\gettingStarted.htm">Use</a></div>
      <div class="TopNavigation3"><a class="TopNavigationLink" href="../../../../iP\iportal_management\admin_gettingStarted.htm">Manage</a></div>
	  <div class="TopNavigation4"><a class="TopNavigationLink" href="../../../../API\iServer_API_reference.htm">Develop</a></div>
    </div>
    <div class="search-placeholder-class" id="search-with-help"></div>
      <div class="home_bottom_bg_topic" id="bottomContainer">
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
<p class="myNormal">If you want to develop a new REST API under the existing 
 resources of iPortal, for example: add a &quot;My WMS Service&quot; resource 
 under the &quot;My Service&quot; resource, you can use the back-end resource 
 extension method based on Jersey provided by iPortal.The sample code used 
 in this case is located at %SuperMap iPortal_HOME%\samples\code\CustomPortal\Custom_Portal.</p>
<p class="myNormal">1. Before developing, please <a class="contentpagehyperlink" href="../dev_env.htm">build 
 the iPortal customized development environment</a>.</p>
<p class="myNormal">2. Please use Jersey to develop your custom resources, 
 and add the annotation @ExtendPortalResource in the entry class. The example 
 code of custom resource implementation class is located at<span style="font-weight: bold;"> 
 src&gt; com.supermap.iportal.web.custom.rest.resource.impl</span>, the 
 code is as follows :</p>
<p class="myCodeP">package com.supermap.iportal.web.custom.rest.resource.impl;</p>
<p class="myCodeP">import javax.ws.rs.GET;</p>
<p class="myCodeP">import javax.ws.rs.Path;</p>
<p class="myCodeP">import javax.ws.rs.WebApplicationException;</p>
<p class="myCodeP">import org.apache.shiro.subject.Subject;</p>
<p class="myCodeP">import org.apache.shiro.util.ThreadContext;</p>
<p class="myCodeP">import org.springframework.beans.factory.annotation.Autowired;</p>
<p class="myCodeP">import com.supermap.iportal.web.commontypes.ServiceInfo;</p>
<p class="myCodeP">import com.supermap.iportal.web.commontypes.ServiceSearchParameter;</p>
<p class="myCodeP">import com.supermap.iportal.web.commontypes.SourceType;</p>
<p class="myCodeP">import com.supermap.iportal.web.components.ServiceInfoComponent;</p>
<p class="myCodeP">import com.supermap.iportal.web.rest.extention.ExtendPortalResource;</p>
<p class="myCodeP">import com.supermap.services.components.commontypes.Page;</p>
<p class="myCodeP">/**</p>
<p class="myCodeP"> * User&#39;s extend resources</p>
<p class="myCodeP"> * </p>
<p class="myCodeP"> * @author Administrator</p>
<p class="myCodeP"> * </p>
<p class="myCodeP"> */</p>
<p class="myCodeP">@ExtendPortalResource</p>
<p class="myCodeP">@Path(&quot;/&quot;)</p>
<p class="myCodeP">public class CustomServiceResources {</p>
<p class="myCodeP" style="font-weight: bold;">    <span style="font-weight: normal;">@Autowired</span></p>
<p class="myCodeP" style="font-weight: bold;">    ServiceInfoComponent 
 serviceInfoComponent;<span style="font-weight: normal;">//Inject component 
 layer</span></p>
<p class="myCodeP">    <span style="font-weight: bold;">@GET</span>//Specify 
 the request method as GET</p>
<p class="myCodeP">    <span style="font-weight: bold;">@Path(&quot;/mycontent/my-wms-services&quot;)</span>//Specify 
 the resource path</p>
<p class="myCodeP">    public Page&lt;ServiceInfo&gt; 
 getMyWmsServices() {</p>
<p class="myCodeP">        Page&lt;ServiceInfo&gt; 
 page = null;</p>
<p class="myCodeP">        ServiceSearchParameter 
 searchParameter = new ServiceSearchParameter();</p>
<p class="myCodeP">        searchParameter.userNames 
 = new String[] { getCurrentUserName() };</p>
<p class="myCodeP">        searchParameter.types 
 = new SourceType[] { SourceType.WMS };</p>
<p class="myCodeP">        page 
 = serviceInfoComponent.getServiceInfosByUser(searchParameter);</p>
<p class="myCodeP">        return 
 (page != null) ? page : new Page&lt;ServiceInfo&gt;();</p>
<p class="myCodeP">    }</p>
<p class="myCodeP">    protected String getCurrentUserName() 
 {</p>
<p class="myCodeP">        String 
 userName = null;</p>
<p class="myCodeP">        Subject 
 subject = ThreadContext.getSubject();</p>
<p class="myCodeP">        if (subject 
 != null &amp;&amp; subject.getPrincipal() != null) {</p>
<p class="myCodeP">            userName 
 = subject.getPrincipal().toString();</p>
<p class="myCodeP">        } else 
 {</p>
<p class="myCodeP">            throw 
 new WebApplicationException(401);</p>
<p class="myCodeP">        }</p>
<p class="myCodeP">        return 
 userName;</p>
<p class="myCodeP">    }</p>
<p class="myCodeP">}</p>
<p class="myNormal">In this example, a new sub-resource my-wms-services 
 is added to the mycontent resource, which returns a list of all WMS service 
 resources whose author is the currently logged-in user. The response body 
 of the resource will be automatically converted to the corresponding type 
 according to the different request bodies (json, rjson, xml).</p>
<p class="myNormal">3. Add the extendPortalResources.xml file under the 
 WebContent\WEB-INF\config folder as the Spring configuration file of the 
 new resource. The configuration file corresponding to the above example 
 is as follows:</p>
<p class="myCodeP">&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;</p>
<p class="myCodeP">&lt;beans xmlns=&quot;http://www.springframework.org/schema/beans&quot;</p>
<p class="myCodeP">    xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;</p>
<p class="myCodeP">    xsi:schemaLocation=&quot;</p>
<p class="myCodeP">     http://www.springframework.org/schema/beans 
 http://www.springframework.org/schema/beans/spring-beans-4.0.xsd&quot;</p>
<p class="myCodeP">    default-lazy-init=&quot;true&quot;&gt;</p>
<p class="myCodeP">    <span style="font-weight: bold;">&lt;bean 
  class=&quot;com.supermap.iportal.web.custom.rest.resource.impl.CustomServiceResources&quot; 
 /&gt;</span></p>
<p class="myCodeP">&lt;/beans&gt;</p>
<p class="myNormal">The code in bold is the resource class loaded by the 
 configuration. </p>
<p class="myNormal">4. Visit localhost:8091/iportal/web/mycontent/my-wms-services.json 
 to return all WMS-type services in my service.</p>


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
    <div class="home_bottom_img"><a href="http://www.supermap.com" target="_blank"><img src="../../../../assets/images/超图logo.png" style="height: 32px;"/> <span class="copyright_text">
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
    gTopicId = "6.3.2.0_3"
  
//]]></script>


  <script src="../../../../template/scripts/topicpage.js"></script>
  <script src="../../../../whxdata/layoutconfig.js"></script>
  <script src="../../../../whxdata/brsdata.js"></script>

  
    

            


</body></html>