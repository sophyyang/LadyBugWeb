<%@ page import="ladybugweb.Status" %>



<div class="fieldcontain ${hasErrors(bean: statusInstance, field: 'categoryId', 'error')} required">
	<label for="categoryId">
		<g:message code="status.categoryId.label" default="Category Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="categoryId" type="number" value="${statusInstance.categoryId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statusInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="status.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${statusInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: statusInstance, field: 'iOrder', 'error')} required">
	<label for="iOrder">
		<g:message code="status.iOrder.label" default="IO rder" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="iOrder" type="number" value="${statusInstance.iOrder}" required=""/>
</div>

