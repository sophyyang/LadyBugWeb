
<%@ page import="ladybugweb.Associate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'associate.label', default: 'Associate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-associate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-associate" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list associate">
			
				<g:if test="${associateInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="associate.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${associateInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associateInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="associate.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${associateInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associateInstance?.emailAdd}">
				<li class="fieldcontain">
					<span id="emailAdd-label" class="property-label"><g:message code="associate.emailAdd.label" default="Email Add" /></span>
					
						<span class="property-value" aria-labelledby="emailAdd-label"><g:fieldValue bean="${associateInstance}" field="emailAdd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associateInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="associate.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${associateInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${associateInstance?.lastModifiedDate}">
				<li class="fieldcontain">
					<span id="lastModifiedDate-label" class="property-label"><g:message code="associate.lastModifiedDate.label" default="Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="lastModifiedDate-label"><g:formatDate date="${associateInstance?.lastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${associateInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="associate.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:link controller="role" action="show" id="${associateInstance?.role?.id}">${associateInstance?.role?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${associateInstance?.id}" />
					<g:link class="edit" action="edit" id="${associateInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
