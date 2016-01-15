
<%@ page import="cn.edu.cup.fluid.gas.PseudoComponent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pseudoComponent.label', default: 'PseudoComponent')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pseudoComponent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pseudoComponent" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pseudoComponent">
			
				<g:if test="${pseudoComponentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="pseudoComponent.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${pseudoComponentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pseudoComponentInstance?.factor}">
				<li class="fieldcontain">
					<span id="factor-label" class="property-label"><g:message code="pseudoComponent.factor.label" default="Factor" /></span>
					
						<span class="property-value" aria-labelledby="factor-label"><g:fieldValue bean="${pseudoComponentInstance}" field="factor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pseudoComponentInstance?.trueBoilingPoint}">
				<li class="fieldcontain">
					<span id="trueBoilingPoint-label" class="property-label"><g:message code="pseudoComponent.trueBoilingPoint.label" default="True Boiling Point" /></span>
					
						<span class="property-value" aria-labelledby="trueBoilingPoint-label"><g:fieldValue bean="${pseudoComponentInstance}" field="trueBoilingPoint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pseudoComponentInstance?.densityOfLiquidPhase}">
				<li class="fieldcontain">
					<span id="densityOfLiquidPhase-label" class="property-label"><g:message code="pseudoComponent.densityOfLiquidPhase.label" default="Density Of Liquid Phase" /></span>
					
						<span class="property-value" aria-labelledby="densityOfLiquidPhase-label"><g:fieldValue bean="${pseudoComponentInstance}" field="densityOfLiquidPhase"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pseudoComponentInstance?.molarMass}">
				<li class="fieldcontain">
					<span id="molarMass-label" class="property-label"><g:message code="pseudoComponent.molarMass.label" default="Molar Mass" /></span>
					
						<span class="property-value" aria-labelledby="molarMass-label"><g:fieldValue bean="${pseudoComponentInstance}" field="molarMass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pseudoComponentInstance?.fluidGas}">
				<li class="fieldcontain">
					<span id="fluidGas-label" class="property-label"><g:message code="pseudoComponent.fluidGas.label" default="Fluid Gas" /></span>
					
						<span class="property-value" aria-labelledby="fluidGas-label"><g:link controller="fluidGas" action="show" id="${pseudoComponentInstance?.fluidGas?.id}">${pseudoComponentInstance?.fluidGas?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pseudoComponentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pseudoComponentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
