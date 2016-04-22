<%@ page import="ladybugweb.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'categoryId', 'error')} required">
	<label for="categoryId">
		<g:message code="role.categoryId.label" default="Category Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="categoryId" type="number" value="${roleInstance.categoryId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="role.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${roleInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'iOrder', 'error')} required">
	<label for="iOrder">
		<g:message code="role.iOrder.label" default="IO rder" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="iOrder" type="number" value="${roleInstance.iOrder}" required=""/>
</div>

