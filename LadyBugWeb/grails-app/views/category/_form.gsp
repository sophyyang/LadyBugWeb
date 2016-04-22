<%@ page import="ladybugweb.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="category.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${categoryInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="category.items.label" default="Items" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.items?}" var="i">
    <li><g:link controller="items" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="items" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'items.label', default: 'Items')])}</g:link>
</li>
</ul>

</div>

