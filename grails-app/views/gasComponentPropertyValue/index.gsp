
<%@ page import="cn.edu.cup.fluid.gas.GasComponentPropertyValue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponentPropertyValue.label', default: 'GasComponentPropertyValue')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-gasComponentPropertyValue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-gasComponentPropertyValue" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="value" title="${message(code: 'gasComponentPropertyValue.value.label', default: 'Value')}" />
					
						<th><g:message code="gasComponentPropertyValue.gasComponent.label" default="Gas Component" /></th>
					
						<th><g:message code="gasComponentPropertyValue.gasComponentProperty.label" default="Gas Component Property" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gasComponentPropertyValueInstanceList}" status="i" var="gasComponentPropertyValueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gasComponentPropertyValueInstance.id}">${fieldValue(bean: gasComponentPropertyValueInstance, field: "value")}</g:link></td>
					
						<td>${fieldValue(bean: gasComponentPropertyValueInstance, field: "gasComponent")}</td>
					
						<td>${fieldValue(bean: gasComponentPropertyValueInstance, field: "gasComponentProperty")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${gasComponentPropertyValueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
