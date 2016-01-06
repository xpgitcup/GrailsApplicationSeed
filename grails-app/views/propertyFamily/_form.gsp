<%@ page import="cn.edu.cup.fluid.gas.PropertyFamily" %>



<div class="fieldcontain ${hasErrors(bean: propertyFamilyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="propertyFamily.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${propertyFamilyInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: propertyFamilyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="propertyFamily.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${propertyFamilyInstance?.description}"/>

</div>

