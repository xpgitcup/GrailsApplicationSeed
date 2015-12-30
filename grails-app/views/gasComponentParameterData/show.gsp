
<%@ page import="cn.edu.cup.fluid.gas.GasComponentParameterData" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponentParameterData.label', default: 'GasComponentParameterData')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-gasComponentParameterData" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gasComponentParameterData" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gasComponentParameterData">
			
				<g:if test="${gasComponentParameterDataInstance?.gasComponent}">
				<li class="fieldcontain">
					<span id="gasComponent-label" class="property-label"><g:message code="gasComponentParameterData.gasComponent.label" default="Gas Component" /></span>
					
						<span class="property-value" aria-labelledby="gasComponent-label"><g:link controller="gasComponent" action="show" id="${gasComponentParameterDataInstance?.gasComponent?.id}">${gasComponentParameterDataInstance?.gasComponent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentParameterDataInstance?.gasComponentParameter}">
				<li class="fieldcontain">
					<span id="gasComponentParameter-label" class="property-label"><g:message code="gasComponentParameterData.gasComponentParameter.label" default="Gas Component Parameter" /></span>
					
						<span class="property-value" aria-labelledby="gasComponentParameter-label"><g:link controller="gasComponentParameter" action="show" id="${gasComponentParameterDataInstance?.gasComponentParameter?.id}">${gasComponentParameterDataInstance?.gasComponentParameter?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentParameterDataInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="gasComponentParameterData.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${gasComponentParameterDataInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:gasComponentParameterDataInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${gasComponentParameterDataInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
