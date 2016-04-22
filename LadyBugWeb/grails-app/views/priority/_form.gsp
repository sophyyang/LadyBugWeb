<%@ page import="ladybugweb.Priority" %>



<div class="fieldcontain ${hasErrors(bean: priorityInstance, field: 'categoryId', 'error')} required">
	<label for="categoryId">
		<g:message code="priority.categoryId.label" default="Category Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="categoryId" type="number" value="${priorityInstance.categoryId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: priorityInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="priority.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${priorityInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: priorityInstance, field: 'iOrder', 'error')} required">
	<label for="iOrder">
		<g:message code="priority.iOrder.label" default="IO rder" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="iOrder" type="number" value="${priorityInstance.iOrder}" required=""/>
</div>

