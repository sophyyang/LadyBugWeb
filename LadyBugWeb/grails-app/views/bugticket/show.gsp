
<%@ page import="ladybugweb.Bugticket" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bugticket.label', default: 'Bugticket')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bugticket" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bugticket" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bugticket">
			
				<g:if test="${bugticketInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="bugticket.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${bugticketInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bugticketInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="bugticket.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${bugticketInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${bugticketInstance?.associate}">
				<li class="fieldcontain">
					<span id="associate-label" class="property-label"><g:message code="bugticket.associate.label" default="Assignee" /></span>
					
						<span class="property-value" aria-labelledby="associate-label"><g:link controller="associate" action="show" id="${bugticketInstance?.associate?.id}">${bugticketInstance?.associate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bugticketInstance?.priority}">
				<li class="fieldcontain">
					<span id="priority-label" class="property-label"><g:message code="bugticket.priority.label" default="Priority" /></span>
					
						<span class="property-value" aria-labelledby="priority-label"><g:link controller="priority" action="show" id="${bugticketInstance?.priority?.id}">${bugticketInstance?.priority?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bugticketInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="bugticket.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:link controller="status" action="show" id="${bugticketInstance?.status?.id}">${bugticketInstance?.status?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
							
				<g:if test="${bugticketInstance?.requesterId}">
				<li class="fieldcontain">
					<span id="requester-label" class="property-label"><g:message code="bugticket.requester.label" default="Requester" /></span>
					
						<span class="property-value" aria-labelledby="requester-label"><g:fieldValue bean="${bugticketInstance}" field="requester"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${bugticketInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="bugticket.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${bugticketInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bugticketInstance?.lastModifiedDate}">
				<li class="fieldcontain">
					<span id="lastModifiedDate-label" class="property-label"><g:message code="bugticket.lastModifiedDate.label" default="Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="lastModifiedDate-label"><g:formatDate date="${bugticketInstance?.lastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bugticketInstance?.id}" />
					<g:link class="edit" action="edit" id="${bugticketInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
