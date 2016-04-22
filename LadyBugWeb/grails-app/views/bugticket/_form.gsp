<%@ page import="ladybugweb.Bugticket" %>



<div class="fieldcontain ${hasErrors(bean: bugticketInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="bugticket.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${bugticketInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bugticketInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="bugticket.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${bugticketInstance?.description}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: bugticketInstance, field: 'associate', 'error')} required">
	<label for="associate">
		<g:message code="bugticket.associate.label" default="Assignee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="associate" name="associate.id" from="${ladybugweb.Associate.list()}" optionKey="id" required="" value="${bugticketInstance?.associate?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bugticketInstance, field: 'priority', 'error')} required">
	<label for="priority">
		<g:message code="bugticket.priority.label" default="Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="priority" name="priority.id" from="${ladybugweb.Priority.list()}" optionKey="id" required="" value="${bugticketInstance?.priority?.id}" class="many-to-one"/>
</div>


<div class="fieldcontain ${hasErrors(bean: bugticketInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="bugticket.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="status" name="status.id" from="${ladybugweb.Status.list()}" optionKey="id" required="" value="${bugticketInstance?.status?.id}" class="many-to-one"/>
</div>


<div class="fieldcontain ${hasErrors(bean: bugticketInstance, field: 'associate', 'error')} required">
	<label for="requester">
		<g:message code="bugticket.requester.label" default="Requester" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="requester" name="requesterId" from="${ladybugweb.Associate.list()}" optionKey="id" required="" value="${bugticketInstance?.requesterId}" class="many-to-one"/>
</div>


<div class="fieldcontain ${hasErrors(bean: bugticketInstance, field: 'lastModifiedDate', 'error')} ">
	<label for="lastModifiedDate">
		<g:message code="bugticket.lastModifiedDate.label" default="Last Modified Date" />
		
	</label>
	<g:formatDate name="lastModifiedDate" date="${new Date() }" format = "yyyy-MM-dd hh:mm:ss"/>
</div>
