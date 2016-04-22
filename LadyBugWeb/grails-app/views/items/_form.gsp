<%@ page import="ladybugweb.Items" %>

<div class="fieldcontain ${hasErrors(bean: itemsInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="items.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${ladybugweb.Category.list()}" optionKey="id" required="" value="${itemsInstance?.category?.id}" class="many-to-one"/>
</div>



<div class="fieldcontain ${hasErrors(bean: itemsInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="items.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${itemsInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemsInstance, field: 'iOrder', 'error')} ">
	<label for="iOrder">
		<g:message code="items.iOrder.label" default="IO rder" />
		
	</label>
	<g:field name="iOrder" type="number" value="${itemsInstance.iOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemsInstance, field: 'lastModifiedDate', 'error')} ">
	<label for="lastModifiedDate">
		<g:message code="items.lastModifiedDate.label" default="Last Modified Date" />
		
	</label>
	<g:formatDate name="lastModifiedDate" date="${new Date() }" format = "yyyy-MM-dd hh:mm:ss"/>
</div>

