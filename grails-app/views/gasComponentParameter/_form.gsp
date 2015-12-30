<%@ page import="cn.edu.cup.fluid.gas.GasComponentParameter" %>



<div class="fieldcontain ${hasErrors(bean: gasComponentParameterInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="gasComponentParameter.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${gasComponentParameterInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentParameterInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="gasComponentParameter.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${gasComponentParameterInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentParameterInstance, field: 'parameterUnit', 'error')} ">
	<label for="parameterUnit">
		<g:message code="gasComponentParameter.parameterUnit.label" default="Parameter Unit" />
		
	</label>
	<g:textField name="parameterUnit" value="${gasComponentParameterInstance?.parameterUnit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentParameterInstance, field: 'family', 'error')} required">
	<label for="family">
		<g:message code="gasComponentParameter.family.label" default="Family" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="family" name="family.id" from="${cn.edu.cup.fluid.gas.GasComponentParameterFamily.list()}" optionKey="id" required="" value="${gasComponentParameterInstance?.family?.id}" class="many-to-one"/>

</div>

