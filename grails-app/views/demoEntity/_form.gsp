<%@ page import="com.loonghymn.samples.DemoEntity" %>



<div class="fieldcontain ${hasErrors(bean: demoEntityInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="demoEntity.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${demoEntityInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: demoEntityInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="demoEntity.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${demoEntityInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: demoEntityInstance, field: 'publishDate', 'error')} required">
	<label for="publishDate">
		<g:message code="demoEntity.publishDate.label" default="Publish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="publishDate" precision="day"  value="${demoEntityInstance?.publishDate}"  />
</div>

