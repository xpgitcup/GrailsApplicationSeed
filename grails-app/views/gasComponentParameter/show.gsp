
<%@ page import="cn.edu.cup.fluid.gas.GasComponentParameter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponentParameter.label', default: 'GasComponentParameter')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-gasComponentParameter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gasComponentParameter" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gasComponentParameter">
			
				<g:if test="${gasComponentParameterInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="gasComponentParameter.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${gasComponentParameterInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentParameterInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="gasComponentParameter.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${gasComponentParameterInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentParameterInstance?.parameterUnit}">
				<li class="fieldcontain">
					<span id="parameterUnit-label" class="property-label"><g:message code="gasComponentParameter.parameterUnit.label" default="Parameter Unit" /></span>
					
						<span class="property-value" aria-labelledby="parameterUnit-label"><g:fieldValue bean="${gasComponentParameterInstance}" field="parameterUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentParameterInstance?.family}">
				<li class="fieldcontain">
					<span id="family-label" class="property-label"><g:message code="gasComponentParameter.family.label" default="Family" /></span>
					
						<span class="property-value" aria-labelledby="family-label"><g:link controller="gasComponentParameterFamily" action="show" id="${gasComponentParameterInstance?.family?.id}">${gasComponentParameterInstance?.family?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:gasComponentParameterInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${gasComponentParameterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
