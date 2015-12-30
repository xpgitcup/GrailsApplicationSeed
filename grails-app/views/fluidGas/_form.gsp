<%@ page import="cn.edu.cup.fluid.gas.FluidGas" %>



<div class="fieldcontain ${hasErrors(bean: fluidGasInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="fluidGas.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${fluidGasInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fluidGasInstance, field: 'pseudo', 'error')} ">
	<label for="pseudo">
		<g:message code="fluidGas.pseudo.label" default="Pseudo" />
		
	</label>
	<g:select id="pseudo" name="pseudo.id" from="${cn.edu.cup.fluid.gas.PseudoComponent.list()}" optionKey="id" value="${fluidGasInstance?.pseudo?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fluidGasInstance, field: 'componentFactor', 'error')} ">
	<label for="componentFactor">
		<g:message code="fluidGas.componentFactor.label" default="Component Factor" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fluidGasInstance?.componentFactor?}" var="c">
    <li><g:link controller="componentFactor" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="componentFactor" action="create" params="['fluidGas.id': fluidGasInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'componentFactor.label', default: 'ComponentFactor')])}</g:link>
</li>
</ul>


</div>

