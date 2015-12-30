<%@ page import="cn.edu.cup.fluid.gas.GasComponentParameterFamily" %>



<div class="fieldcontain ${hasErrors(bean: gasComponentParameterFamilyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="gasComponentParameterFamily.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${gasComponentParameterFamilyInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentParameterFamilyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="gasComponentParameterFamily.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${gasComponentParameterFamilyInstance?.description}"/>

</div>

