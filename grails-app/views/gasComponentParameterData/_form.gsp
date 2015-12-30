<%@ page import="cn.edu.cup.fluid.gas.GasComponentParameterData" %>



<div class="fieldcontain ${hasErrors(bean: gasComponentParameterDataInstance, field: 'gasComponent', 'error')} required">
	<label for="gasComponent">
		<g:message code="gasComponentParameterData.gasComponent.label" default="Gas Component" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gasComponent" name="gasComponent.id" from="${cn.edu.cup.fluid.gas.GasComponent.list()}" optionKey="id" required="" value="${gasComponentParameterDataInstance?.gasComponent?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentParameterDataInstance, field: 'gasComponentParameter', 'error')} required">
	<label for="gasComponentParameter">
		<g:message code="gasComponentParameterData.gasComponentParameter.label" default="Gas Component Parameter" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gasComponentParameter" name="gasComponentParameter.id" from="${cn.edu.cup.fluid.gas.GasComponentParameter.list()}" optionKey="id" required="" value="${gasComponentParameterDataInstance?.gasComponentParameter?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentParameterDataInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="gasComponentParameterData.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: gasComponentParameterDataInstance, field: 'value')}" required=""/>

</div>

