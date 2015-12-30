
<%@ page import="cn.edu.cup.fluid.gas.PseudoComponent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pseudoComponent.label', default: 'PseudoComponent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pseudoComponent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pseudoComponent" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'pseudoComponent.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="factor" title="${message(code: 'pseudoComponent.factor.label', default: 'Factor')}" />
					
						<g:sortableColumn property="trueBoilingPoint" title="${message(code: 'pseudoComponent.trueBoilingPoint.label', default: 'True Boiling Point')}" />
					
						<g:sortableColumn property="densityOfLiquidPhase" title="${message(code: 'pseudoComponent.densityOfLiquidPhase.label', default: 'Density Of Liquid Phase')}" />
					
						<g:sortableColumn property="molarMass" title="${message(code: 'pseudoComponent.molarMass.label', default: 'Molar Mass')}" />
					
						<th><g:message code="pseudoComponent.fluidGas.label" default="Fluid Gas" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pseudoComponentInstanceList}" status="i" var="pseudoComponentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pseudoComponentInstance.id}">${fieldValue(bean: pseudoComponentInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: pseudoComponentInstance, field: "factor")}</td>
					
						<td>${fieldValue(bean: pseudoComponentInstance, field: "trueBoilingPoint")}</td>
					
						<td>${fieldValue(bean: pseudoComponentInstance, field: "densityOfLiquidPhase")}</td>
					
						<td>${fieldValue(bean: pseudoComponentInstance, field: "molarMass")}</td>
					
						<td>${fieldValue(bean: pseudoComponentInstance, field: "fluidGas")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${pseudoComponentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
