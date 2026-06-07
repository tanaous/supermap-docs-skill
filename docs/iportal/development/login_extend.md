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
  <title>Registration and login module extension development</title>
  <link rel="StyleSheet" href="../../../../assets/css/SuperMapHelp.css" type="text/css"/>
  <script type="text/javascript" src="../../../../assets/js/shCore.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushBash.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushCpp.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushCSharp.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushCss.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushDelphi.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushDiff.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushGroovy.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushJava.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushJScript.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushPhp.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushPlain.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushPython.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushRuby.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushScala.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushSql.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushVb.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/shBrushXml.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/ConfigiServer6R.js">
  </script>
  <script type="text/javascript" src="../../../../assets/js/SMCollapse.js">
  </script>
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
  <p class="myNormal">iPortal allows developers to integrate custom pages via iFrame method to completely rewrite the elements and styles of registration and login pages, implementing highly free customization.</p>
  <p class="myNormal">The general extension development of registration and login workflow includes: <a class="contentpagehyperlink" href="#Call_iPortal_REST_API">Calling iPortal back-end REST API</a>, <a class="contentpagehyperlink" href="#PageContsImp">Page content implementation</a>, <a class="contentpagehyperlink" href="#EnableCustomPgs">Configure to enable custom pages</a>. To guide you easily conduct the extension development, iPortal package provides a set of demonstration code which locates in %SuperMap iPortal_HOME%\webapps\iportal\resources\web-ui\extend\login directory.</p>
  <h2>Sample code introduction</h2>
  <p class="myNormal">The sample code structure is:</p>
  <p class="myNormal" style="text-align: center;"><img alt="" border="0" src="../../../../assets/images/iP/iPortal_DevelopGuide/img/ExampleCode.png" style="border: none;"/></p>
  <p class="myNormal">The login.html and register.html are the custom HTML pages; config.json is the extension development configuration file (This file is a must file and the name can&#39;t be modified); inside the js folder are the developed JavaScript files used to talking with the APIs of the back-end registration and login module of iPortal.</p>
  <p class="myNormal" style="font-weight: bold;">Note:</p>
  <p class="myNormal">1.The rootUrl in the sample code below refers to http://{ip}/{port}/{contextPath}/ (for example: http://127.0.0.1:8190/iportal/), the definition method can refer to:</p>
  <p class="myCodeP">var index = window.location.href.indexOf(&#39;resources&#39;);</p>
  <p class="myCodeP">var rootUrl = window.location.href.slice(0,index).replace(window.location.origin,&#39;&#39;);</p>
  <p class="myNormal">2.Since the custom page is integrated via iFrame method, the window.parent object of the custom page should be the window object of the web-ui pages. If you need to switch between the login, registration pages, you can realize by calling the window.parent.changeRoute(param) method, of which the param value can be &quot;login&quot;/&quot;register&quot;.</p>
  <h2><a name="Call_iPortal_REST_API" id="Call_iPortal_REST_API"></a>Calling iPortal REST API</h2>
  <p class="myNormal">iPortal provides the full-featured REST API for clients. You can call the registration and login related REST API to implement custom pages to interact with the iPortal back-end. The following section introduces the related REST API of the login, registration modules, and the specific usages.</p>
  <h3 class="myNormal"><a id="登录模块扩展开发"></a>Login module extension development</h3>
  <p class="myNormal">Step 1 (Optional): If your system needs to support the <a class="contentpagehyperlink" href="../../../iportal_management/Portal_Security/third_party_login.htm">OAuth 2.0 based third-party account login</a> (supports QQ / Sina /WeChat account login), you need to send the request for <a class="contentpagehyperlink" href="../../../../mergedProjects/SuperMapiServerRESTAPI/Portal/config/systemConfig.htm">systemConfig</a> to get the configured third-party login methods. The oauthConfig field in the response returned by systemConfig request is the third-party login information. The table below lists the related fields used for extending the login page.</p>
  <table cellspacing="0" class="iServerTable" style="height: 163px; left: 0px; top: 283px;" width="640">
    <colgroup>
      <col style="width: 40.031%;"/>
      <col style="width: 59.968%;"/>
    </colgroup>
    <tbody>
      <tr class="t1st">
        <td>Field</td>
        <td>Description</td>
      </tr>
      <tr class="t2Row">
        <td>
          <p>loginType</p>
        </td>
        <td>
          <p style="text-align: center;">The third-party login type.</p>
        </td>
      </tr>
      <tr class="t1Row">
        <td>
          <p>id</p>
        </td>
        <td>
          <p style="text-align: center;">ID of the third-party login configuration.</p>
        </td>
      </tr>
      <tr class="t2Row">
        <td>
          <p>redirectDomain</p>
        </td>
        <td>
          <p style="text-align: center;">Callback domain name for third-party login.</p>
        </td>
      </tr>
    </tbody>
  </table>
  <p class="myNormal">On the login page. you need to specify the link for the specific third-pary login type as http://<span style="font-weight: bold;">{redirectDomain}</span>/iportal/services/security/login/<span style="font-weight: bold;">{loginType}</span>?configID=<span style="font-weight: bold;">{id}</span>.</p>
  <p class="myNormal">If your system doesn&#39;t need the third-party login function, just skip this step.</p>
  <p class="myNormal">Step 2: Calling the login (http://{ip}:{port}/iportal/web/login.json) interface. By sending a POST request and carrying the corresponding username and password inside the request entity, you can log in to iPortal successfully. For the specific request parameters of the login interface, see: <a class="contentpagehyperlink" href="../../../../mergedProjects/SuperMapiServerRESTAPI/Portal/login.htm">login</a>.</p>
  <p class="myNormal">The sample code (the index.js file in the SuperMap iPortal_HOME%\webapps\iportal\resources\web-ui\login\js directory) employs jQuery ajax to send requests, the following contents are the login related code in the index.js file.</p>
  <p class="myCodeP">function <span style="font-weight: bold;">login</span>(name, pass) {</p>
  <p class="myCodeP">    var url = rootUrl + &#39;web/login.json&#39;;</p>
  <p class="myCodeP">    var param = {</p>
  <p class="myCodeP">        username: document.getElementsByClassName(&quot;<span><span style="font-weight: bold;">login_name</span></span>&quot;).length === 0 ? &#39;&#39; : document.getElementsByClassName(&quot;login_name&quot;)[0].value,</p>
  <p class="myCodeP">        password: document.getElementsByClassName(&quot;<span><span style="font-weight: bold;">login_password</span></span>&quot;).length === 0 ? &#39;&#39; : document.getElementsByClassName(&quot;login_password&quot;)[0].value,</p>
  <p class="myCodeP">        rememberme: document.getElementsByClassName(&quot;<span><span style="font-weight: bold;">login_remember</span></span>&quot;).length === 0 ? false : document.getElementsByClassName(&quot;login_remember&quot;)[0].checked</p>
  <p class="myCodeP">    };</p>
  <p class="myCodeP">    if (name &amp;&amp; pass) {</p>
  <p class="myCodeP">        param.username = name;</p>
  <p class="myCodeP">        param.password = pass;</p>
  <p class="myCodeP">    }</p>
  <p class="myCodeP">    $.ajax({</p>
  <p class="myCodeP">        type : &quot;POST&quot;,</p>
  <p class="myCodeP">        url : url,</p>
  <p class="myCodeP">        data : JSON.stringify(param),</p>
  <p class="myCodeP">        dataType: &#39;json&#39;,</p>
  <p class="myCodeP">        success: function(result) {</p>
  <p class="myCodeP">            console.log(result);</p>
  <p class="myCodeP">            if ( result.succeed ) {</p>
  <p class="myCodeP">                window.parent.open(rootUrl + &quot;web-ui/home&quot;, &quot;_self&quot;);</p>
  <p class="myCodeP">            } else {</p>
  <p class="myCodeP">                alert(&quot;Login failed&quot;);</p>
  <p class="myCodeP">            }</p>
  <p class="myCodeP">        },</p>
  <p class="myCodeP">        error: function () {</p>
  <p class="myCodeP">            alert(&quot;Login failed&quot;);</p>
  <p class="myCodeP">        }</p>
  <p class="myCodeP">    });</p>
  <p class="myCodeP">}</p>
  <p class="myNormal">The code above defines the login method to get the input account and password and send a login request to iPortal, and which will return failure information or forward it to the homepage if login succeeded.</p>
  <h3 class="myNormal">Registration module extension development</h3>
  <p class="myNormal">Step 1 (Optional): If your registration function needs to have some restrictions, for example, the users need to fill in their departments, email information, first you need to get and check the registration related configurations from the response of the portalConfig（http:// {ip}:{port}/iportal/web/config/portal.json）interface. For details, see: <a class="contentpagehyperlink" href="../../../../mergedProjects/SuperMapiServerRESTAPI/Portal/config/portalConfig.htm">portalConfig</a>.</p>
  <p class="myNormal">If the department field is required by your registration function, you also need to get all the departments by sending a request to the <a class="contentpagehyperlink" href="../../../../mergedProjects/SuperMapiServerRESTAPI/manager/portalConfig/departments/departments.htm#GET 请求">departments</a> (http://{ip}:{port}/iportal/manager/iportalconfig/departments.json) interface for the user to choose from，</p>
  <p class="myNormal">If your system has no restriction like above, you can skip this step.</p>
  <p class="myNormal">Step 2: Calling the registration related interfaces, including:</p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">users（http://{ip}:{port}/iportal/web/users.json), the new user registration interface. Send a POST request to the users interface to register a new user. For the request parameters and response of the user interface, see the REST API: <a class="contentpagehyperlink" href="../../../../mergedProjects/SuperMapiServerRESTAPI/Portal/users/users.htm#POST è¯·æ±">users</a>.</li>
    <li class="SymbolList1">isRegistered（http://{ip}:{port}/iportal/web/users/registered.json), the username verification interface. Since Portal doesn&#39;t allow duplicate usernames, you can send a GET request to the isRegistered interface to verify whether the entered username is occupied. For the request parameters and response of the isRegistered interface, see the REST API: <a class="contentpagehyperlink" href="../../../../mergedProjects/SuperMapiServerRESTAPI/Portal/users/registered.htm">isRegistered</a>.</li>
    <li class="SymbolList1">isNickRegistered（http://{ip}:{port}/iportal/web/users/nickname/isregistered.json), the nickname verification interface. Since Portal doesn&#39;t allow duplicate nicknames, you can send a GET request to the isNickRegistered interface to verify whether the entered nickname is occupied. For the request parameters and response of the nickname interface, see the REST API: <a class="contentpagehyperlink" href="../../../../mergedProjects/SuperMapiServerRESTAPI/Portal/users/isNickRegistered.htm">isNickRegistered</a>.</li>
  </ul>
  <p class="myNormal">The following contents are the registration related code in the index.js file.</p>
  <p class="myCodeP">function <span style="font-weight: bold;">sign_up</span>() {</p>
  <p class="myCodeP">    var param = {</p>
  <p class="myCodeP">        name: $(&quot;<span style="font-weight: bold;">.register_name</span>&quot;).val(),</p>
  <p class="myCodeP">        nickname: $(&quot;<span style="font-weight: bold;">.register_nickname</span>&quot;).val(),</p>
  <p class="myCodeP">        password: $(&quot;<span style="font-weight: bold;">.register_pass</span>&quot;).val(),</p>
  <p class="myCodeP">        passwordQuestion: {</p>
  <p class="myCodeP">            pwdQuestion: $(&quot;<span style="font-weight: bold;">.register_question</span>&quot;).val(),</p>
  <p class="myCodeP">            pwdAnswer: $(&quot;<span style="font-weight: bold;">.register_answer</span>&quot;).val()</p>
  <p class="myCodeP">        }</p>
  <p class="myCodeP">    };</p>
  <p class="myCodeP">    var confirmPwd = $(&quot;<span style="font-weight: bold;">.register_confirm_pass</span>&quot;).val();</p>
  <p class="myCodeP">    if (!param.nickname || !param.name || !param.password || !param.passwordQuestion.pwdAnswer) {</p>
  <p class="myCodeP">        alert(&quot;Please fill out the form&quot;);</p>
  <p class="myCodeP">        return;</p>
  <p class="myCodeP">    }</p>
  <p class="myCodeP">    if (confirmPwd !== param.password) {</p>
  <p class="myCodeP">        alert(&quot;Passwords are not matched!&quot;);</p>
  <p class="myCodeP">        return;</p>
  <p class="myCodeP">    }</p>
  <p class="myCodeP">    var registerUrl = rootUrl + &#39;web/users.json&#39;;</p>
  <p class="myCodeP">    var checkNameUrl = rootUrl + &#39;web/users/registered.json?username=&#39; + param.name;</p>
  <p class="myCodeP">    var checkNicknameUrl = rootUrl + &#39;web/users/nickname/isregistered.json?nickname=&#39; + param.nickname;</p>
  <p class="myCodeP">    $.ajax({</p>
  <p class="myCodeP">        type: &quot;GET&quot;,</p>
  <p class="myCodeP">        url: checkNameUrl,</p>
  <p class="myCodeP">        dataType: &#39;json&#39;,</p>
  <p class="myCodeP">        success: function(result) {</p>
  <p class="myCodeP">            if (!result) {</p>
  <p class="myCodeP">                $.ajax({</p>
  <p class="myCodeP">                    type: &quot;GET&quot;,</p>
  <p class="myCodeP">                    url: checkNicknameUrl,</p>
  <p class="myCodeP">                    dataType: &#39;json&#39;,</p>
  <p class="myCodeP">                    success: function(result) {</p>
  <p class="myCodeP">                        if (!result) {</p>
  <p class="myCodeP">                            $.ajax({</p>
  <p class="myCodeP">                                type: &quot;POST&quot;,</p>
  <p class="myCodeP">                                url: registerUrl,</p>
  <p class="myCodeP">                                data: JSON.stringify(param),</p>
  <p class="myCodeP">                                dataType: &#39;json&#39;,</p>
  <p class="myCodeP">                                success: function(result) {</p>
  <p class="myCodeP">                                    if ( result.succeed ) {</p>
  <p class="myCodeP">                                        login(param.name, param.password);</p>
  <p class="myCodeP">                                    } else {</p>
  <p class="myCodeP">                                        alert(&quot;Registration failed!&quot;);</p>
  <p class="myCodeP">                                    }</p>
  <p class="myCodeP">                                }</p>
  <p class="myCodeP">                            });</p>
  <p class="myCodeP">                        } else {</p>
  <p class="myCodeP">                            alert(&quot;The nickname already exists!&quot;);</p>
  <p class="myCodeP">                        }</p>
  <p class="myCodeP">                    }</p>
  <p class="myCodeP">                });</p>
  <p class="myCodeP">            } else {</p>
  <p class="myCodeP">                alert(&quot;The user already exists!&quot;);</p>
  <p class="myCodeP">            }</p>
  <p class="myCodeP">        }</p>
  <p class="myCodeP">    });</p>
  <p class="myCodeP">}</p>
  <p class="myNormal">The code above defines the sign_up method to record the entered information of the registration interface and verify the legitimacy. After the verification is passed, it sends a user registration request to iPortal, and returns the success or failure information.</p>
  <h2><a name="PageContsImp" id="PageContsImp"></a>Page content and style implementation</h2>
  <p class="myNormal">In the sample code, the login.html, register.html are custom-developed pages, which employ the HTML+JavaScript+CSS technology stack to implement. Here we take the login page as an example to introduce some things to pay attention to when developing the page.</p>
  <p class="myCodeP">&lt;!DOCTYPE html&gt;</p>
  <p class="myCodeP">&lt;html &gt;</p>
  <p class="myCodeP">&lt;head&gt;</p>
  <p class="myCodeP">&lt;meta charset=&quot;UTF-8&quot;&gt;</p>
  <p class="myCodeP">&lt;title&gt;Login Example&lt;/title&gt;</p>
  <p class="myCodeP">&lt;/head&gt;</p>
  <p class="myCodeP">&lt;body bgcolor=&quot;#ffffff&quot;&gt;</p>
  <p class="myCodeP">&lt;div class=&quot;login&quot;&gt;</p>
  <p class="myCodeP">  &lt;h2&gt;LOGIN&lt;/h2&gt;</p>
  <p class="myCodeP">  &lt;input type=&quot;name&quot; placeholder=&quot;Name&quot; class=&quot;<span style="font-weight: bold;">login_name</span>&quot;/&gt;</p>
  <p class="myCodeP">  &lt;input type=&quot;password&quot; placeholder=&quot;Password&quot; class=&quot;<span style="font-weight: bold;">login_password</span>&quot;/&gt;</p>
  <p class="myCodeP">  &lt;span class=&quot;reset&quot;&gt;</p>
  <p class="myCodeP">    &lt;input type=&quot;checkbox&quot; class=&quot;<span style="font-weight: bold;">login_remember</span>&quot;/&gt;Remember Me</p>
  <p class="myCodeP">    &lt;a href=&quot;javascript:void(0)&quot; class=&quot;openResetPwd&quot; onclick=&quot;<span style="font-weight: bold;">openResetPwdPage()</span>&quot;&gt;Forgot Password?&lt;/a&gt;</p>
  <p class="myCodeP">  &lt;/span&gt;&lt;br/&gt;</p>
  <p class="myCodeP">  &lt;button class=&quot;btn_login&quot; onClick=&quot;<span style="font-weight: bold;">login()</span>&quot;&gt;LOGIN&lt;/button&gt;</p>
  <p class="myCodeP">&lt;/div&gt;</p>
  <p class="myCodeP" style="font-weight: bold;">&lt;script src=&quot;js/jquery-3.4.1.min.js&quot;&gt;&lt;/script&gt;</p>
  <p class="myCodeP" style="font-weight: bold;">&lt;script src=&quot;js/index.js&quot;&gt;&lt;/script&gt;</p>
  <p class="myCodeP">&lt;style&gt;</p>
  <p class="myCodeP">.login {</p>
  <p class="myCodeP">margin: 100px auto;</p>
  <p class="myCodeP">width: 280px;</p>
  <p class="myCodeP">height: 400px;</p>
  <p class="myCodeP">}</p>
  <p class="myCodeP">h2{</p>
  <p class="myCodeP">    text-align: center;</p>
  <p class="myCodeP">  }</p>
  <p class="myCodeP">.login &gt; input{</p>
  <p class="myCodeP">width: 280px;</p>
  <p class="myCodeP">height: 30px;</p>
  <p class="myCodeP">margin-bottom: 20px;</p>
  <p class="myCodeP">}</p>
  <p class="myCodeP">.reset{</p>
  <p class="myCodeP">display: inline-block;</p>
  <p class="myCodeP">width: 280px;</p>
  <p class="myCodeP">margin-bottom: 20px;</p>
  <p class="myCodeP">font-size: 14px;</p>
  <p class="myCodeP">text-align: left</p>
  <p class="myCodeP">}</p>
  <p class="myCodeP">.reset &gt; a{</p>
  <p class="myCodeP">display: inline-block;</p>
  <p class="myCodeP">float: right;</p>
  <p class="myCodeP">color: #000;</p>
  <p class="myCodeP">        cursor: pointer;</p>
  <p class="myCodeP">}</p>
  <p class="myCodeP">.btn_login {</p>
  <p class="myCodeP">     width: 285px;</p>
  <p class="myCodeP">   height: 35px;</p>
  <p class="myCodeP">}</p>
  <p class="myCodeP">&lt;/style&gt;</p>
  <p class="myCodeP">&lt;/body&gt;</p>
  <p class="myCodeP">&lt;/html&gt;</p>
  <p class="myNormal">In the above code, the class and method names, such as login_name, login_password, login_remember, openResetPwdPage(), login(), shoud be consistent with the names defined in the index.js file. &lt;script src=&quot;js/jquery-3.4.1.min.js&quot;&gt;&lt;/script&gt; and &lt;script src=&quot;js/index.js&quot;&gt;&lt;/script&gt; are used to import the JavaScript files used in the file.</p>
  <p class="myNormal">The effect is as follows:</p>
  <p class="myNormal" style="text-align: center;"><img alt="" border="0" src="../../../../assets/images/iP/iPortal_DevelopGuide/img/extendLogin.png" style="border: none;"/></p>
  <p class="myNormal">As a getting started tutorial, the page elements and styles are simple. Since iPortal integrates the extended pages via iFrame, you can use a richer front-end technology stack and visualization library to customize your exclusive page.</p>
  <h2><a name="EnableCustomPgs" id="EnableCustomPgs"></a>Configure to enable custom pages</h2>
  <p class="myNormal">After complete the customized development of the registration/login pages, you need to modify the config.json file in the %SuperMap iPortal_HOME%\webapps\iportal\resources\web-ui\extend\login directory to apply the customized pages in iPortal. The contents of config.js are as follows:</p>
  <p class="myCodeP">{</p>
  <p class="myCodeP">  &quot;enable&quot;: true,</p>
  <p class="myCodeP">  &quot;extendType&quot;: &quot;IFRAME&quot;,</p>
  <p class="myCodeP">  &quot;loginUrl&quot;: &quot;{portalRoot}/resources/web-ui/extend/login/login.html&quot;,</p>
  <p class="myCodeP">  &quot;registerUrl&quot;: &quot;{portalRoot}/resources/web-ui/extend/login/register.html&quot;</p>
  <p class="myCodeP">}</p>
  <ul class="SymbolList1" style="list-style: disc;">
    <li class="SymbolList1">enable: Whether to use the customized pages. The default value is false, which means the built-in login pages in iPortal will be used. To use the customized pages, set to true.</li>
    <li class="SymbolList1">extendType: used to specify the extend method. Currently supports the iFrame method.</li>
    <li class="SymbolList1">loginUrl: the customized login page path.</li>
    <li class="SymbolList1">registerUrl: the customized registration page path.</li>
  </ul>
  <p class="myNormal"> </p>
  <p class="myNormal">Modify and save the configuration, the iPortal will use the configured customized pages.</p>

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
    gTopicId = "6.3.1.1_3"
  
//]]></script>


  <script src="../../../../template/scripts/topicpage.js"></script>
  <script src="../../../../whxdata/layoutconfig.js"></script>
  <script src="../../../../whxdata/brsdata.js"></script>

  
    

            


</body></html>