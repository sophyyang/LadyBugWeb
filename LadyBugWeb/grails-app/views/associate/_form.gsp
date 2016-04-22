<%@ page import="ladybugweb.Associate" %>



<div class="fieldcontain ${hasErrors(bean: associateInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="associate.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${associateInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: associateInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="associate.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${associateInstance?.lastName}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: associateInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="associate.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="role" name="role.id" from="${ladybugweb.Role.list()}" optionKey="id" required="" value="${associateInstance?.role?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: associateInstance, field: 'emailAdd', 'error')} ">
	<label for="emailAdd">
		<g:message code="associate.emailAdd.label" default="Email Add" />
		
	</label>
	<g:field type="email" name="emailAdd" value="${associateInstance?.emailAdd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: associateInstance, field: 'lastModifiedDate', 'error')} ">
	<label for="lastModifiedDate">
		<g:message code="associate.lastModifiedDate.label" default="Last Modified Date" />
		
	</label>
	<g:formatDate name="lastModifiedDate" date="${new Date() }" format = "yyyy-MM-dd hh:mm:ss"/>
</div>


