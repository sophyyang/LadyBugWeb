
<%@ page import="ladybugweb.History" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'history.label', default: 'History')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-history" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-history" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list history">
			
				<g:if test="${historyInstance?.historyID}">
				<li class="fieldcontain">
					<span id="historyID-label" class="property-label"><g:message code="history.historyID.label" default="History ID" /></span>
					
						<span class="property-value" aria-labelledby="historyID-label"><g:fieldValue bean="${historyInstance}" field="historyID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historyInstance?.ticketID}">
				<li class="fieldcontain">
					<span id="ticketID-label" class="property-label"><g:message code="history.ticketID.label" default="Ticket ID" /></span>
					
						<span class="property-value" aria-labelledby="ticketID-label"><g:fieldValue bean="${historyInstance}" field="ticketID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historyInstance?.userID}">
				<li class="fieldcontain">
					<span id="userID-label" class="property-label"><g:message code="history.userID.label" default="User ID" /></span>
					
						<span class="property-value" aria-labelledby="userID-label"><g:fieldValue bean="${historyInstance}" field="userID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historyInstance?.statusID}">
				<li class="fieldcontain">
					<span id="statusID-label" class="property-label"><g:message code="history.statusID.label" default="Status ID" /></span>
					
						<span class="property-value" aria-labelledby="statusID-label"><g:fieldValue bean="${historyInstance}" field="statusID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historyInstance?.priorityID}">
				<li class="fieldcontain">
					<span id="priorityID-label" class="property-label"><g:message code="history.priorityID.label" default="Priority ID" /></span>
					
						<span class="property-value" aria-labelledby="priorityID-label"><g:fieldValue bean="${historyInstance}" field="priorityID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historyInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="history.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${historyInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${historyInstance?.lastModified}">
				<li class="fieldcontain">
					<span id="lastModified-label" class="property-label"><g:message code="history.lastModified.label" default="Last Modified" /></span>
					
						<span class="property-value" aria-labelledby="lastModified-label"><g:formatDate date="${historyInstance?.lastModified}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${historyInstance?.id}" />
					<g:link class="edit" action="edit" id="${historyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
