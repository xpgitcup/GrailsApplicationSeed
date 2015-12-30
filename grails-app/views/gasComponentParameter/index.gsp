
<%@ page import="cn.edu.cup.fluid.gas.GasComponentParameter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponentParameter.label', default: 'GasComponentParameter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-gasComponentParameter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-gasComponentParameter" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'gasComponentParameter.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'gasComponentParameter.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="parameterUnit" title="${message(code: 'gasComponentParameter.parameterUnit.label', default: 'Parameter Unit')}" />
					
						<th><g:message code="gasComponentParameter.family.label" default="Family" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gasComponentParameterInstanceList}" status="i" var="gasComponentParameterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gasComponentParameterInstance.id}">${fieldValue(bean: gasComponentParameterInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: gasComponentParameterInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: gasComponentParameterInstance, field: "parameterUnit")}</td>
					
						<td>${fieldValue(bean: gasComponentParameterInstance, field: "family")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${gasComponentParameterInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
