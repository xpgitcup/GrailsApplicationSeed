
<%@ page import="cn.edu.cup.fluid.gas.GasComponentParameterData" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponentParameterData.label', default: 'GasComponentParameterData')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-gasComponentParameterData" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-gasComponentParameterData" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="gasComponentParameterData.gasComponent.label" default="Gas Component" /></th>
					
						<th><g:message code="gasComponentParameterData.gasComponentParameter.label" default="Gas Component Parameter" /></th>
					
						<g:sortableColumn property="value" title="${message(code: 'gasComponentParameterData.value.label', default: 'Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gasComponentParameterDataInstanceList}" status="i" var="gasComponentParameterDataInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gasComponentParameterDataInstance.id}">${fieldValue(bean: gasComponentParameterDataInstance, field: "gasComponent")}</g:link></td>
					
						<td>${fieldValue(bean: gasComponentParameterDataInstance, field: "gasComponentParameter")}</td>
					
						<td>${fieldValue(bean: gasComponentParameterDataInstance, field: "value")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${gasComponentParameterDataInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
