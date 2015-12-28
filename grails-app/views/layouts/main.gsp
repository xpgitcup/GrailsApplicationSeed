<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <% String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">

    <!--设置Base-->
    <base href="<%=basePath%>"/>

    <!--引入用户所定义的层叠式样式-->
    <asset:stylesheet src="application.css"/>
    <!--asset:javascript src="application.js"/为了使用easyui 删掉这一句-->
        
    <!--引入easyui的相关内容-->
    <asset:stylesheet src="easyui/themes/default/easyui.css"/>
    <asset:stylesheet src="easyui/themes/icon.css"/>

    <!--引入jQuery-->
    <g:javascript library="jquery" plugin="jquery"/>
    <!--asset:javascript src="easyui/jquery.min.js"/-->
    <asset:javascript src="easyui/jquery.easyui.min.js"/>
    
    <!--引入百度地图-->
    <!--script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Ly80ADLariEz6qWMDeb7mglR"></script-->
    
    <!--引入绘图组件-->
    <asset:javascript src="highcharts/highcharts.js"/>
    <asset:javascript src="highcharts/highcharts-3d.js"/>
    <asset:javascript src="highcharts/adapters/standalone-framework.js"/>
    <asset:javascript src="highcharts/themes/gray.js"/>

    <!--引入main.js(核心脚本)-->
    <asset:javascript src="main.js"/>

    <!--首先填充Head的内容-->
    <g:layoutHead/>
</head>
<body>
    <div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a></div>
        <g:layoutBody/>
    <div class="footer" role="contentinfo"></div>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</body>
</html>
