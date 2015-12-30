<%@ page import="cn.edu.cup.fluid.gas.PseudoComponent" %>



<div class="fieldcontain ${hasErrors(bean: pseudoComponentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="pseudoComponent.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${pseudoComponentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pseudoComponentInstance, field: 'factor', 'error')} ">
	<label for="factor">
		<g:message code="pseudoComponent.factor.label" default="Factor" />
		
	</label>
	<g:field name="factor" value="${fieldValue(bean: pseudoComponentInstance, field: 'factor')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pseudoComponentInstance, field: 'trueBoilingPoint', 'error')} ">
	<label for="trueBoilingPoint">
		<g:message code="pseudoComponent.trueBoilingPoint.label" default="True Boiling Point" />
		
	</label>
	<g:field name="trueBoilingPoint" value="${fieldValue(bean: pseudoComponentInstance, field: 'trueBoilingPoint')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pseudoComponentInstance, field: 'densityOfLiquidPhase', 'error')} ">
	<label for="densityOfLiquidPhase">
		<g:message code="pseudoComponent.densityOfLiquidPhase.label" default="Density Of Liquid Phase" />
		
	</label>
	<g:field name="densityOfLiquidPhase" value="${fieldValue(bean: pseudoComponentInstance, field: 'densityOfLiquidPhase')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pseudoComponentInstance, field: 'molarMass', 'error')} ">
	<label for="molarMass">
		<g:message code="pseudoComponent.molarMass.label" default="Molar Mass" />
		
	</label>
	<g:field name="molarMass" value="${fieldValue(bean: pseudoComponentInstance, field: 'molarMass')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pseudoComponentInstance, field: 'fluidGas', 'error')} required">
	<label for="fluidGas">
		<g:message code="pseudoComponent.fluidGas.label" default="Fluid Gas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fluidGas" name="fluidGas.id" from="${cn.edu.cup.fluid.gas.FluidGas.list()}" optionKey="id" required="" value="${pseudoComponentInstance?.fluidGas?.id}" class="many-to-one"/>

</div>

