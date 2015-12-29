
<%@ page import="test.Test" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'test.label', default: 'Test')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-test" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="list-test" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <!---->
            <div class="easyui-tabs" >
                <div>
                    <table>
                        <thead>
                            <tr>
                                <g:sortableColumn property="name" title="${message(code: 'test.name.label', default: 'Name')}" />
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${testInstanceList}" status="i" var="testInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td><g:link action="show" id="${testInstance.id}">${fieldValue(bean: testInstance, field: "name")}</g:link></td>
                                    </tr>
                            </g:each>
                        </tbody>
                    </table>
                    <div class="paginationGrails">
                        <g:paginate total="${testInstanceCount ?: 0}" />
                    </div>
                </div>
                <div title="About" style="padding:10px">
                    <p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
                    <ul>
                        <li>easyui is a collection of user-interface plugin based on jQuery.</li>
                        <li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
                        <li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
                        <li>complete framework for HTML5 web page.</li>
                        <li>easyui save your time and scales while developing your products.</li>
                        <li>easyui is very easy but powerful.</li>
                    </ul>
                </div>
                <div title="My Documents" style="padding:10px">
                    <ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true"></ul>
                </div>
                <div title="Help" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
                    This is the help content.
                </div>
            </div>                
                <!---->
        </div>
    </body>
</html>
