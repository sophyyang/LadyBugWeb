
<%@ page import="ladybugweb.Priority" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'priority.label', default: 'Priority')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-priority" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-priority" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list priority">
			
				<g:if test="${priorityInstance?.categoryId}">
				<li class="fieldcontain">
					<span id="categoryId-label" class="property-label"><g:message code="priority.categoryId.label" default="Category Id" /></span>
					
						<span class="property-value" aria-labelledby="categoryId-label"><g:fieldValue bean="${priorityInstance}" field="categoryId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${priorityInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="priority.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${priorityInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${priorityInstance?.iOrder}">
				<li class="fieldcontain">
					<span id="iOrder-label" class="property-label"><g:message code="priority.iOrder.label" default="IO rder" /></span>
					
						<span class="property-value" aria-labelledby="iOrder-label"><g:fieldValue bean="${priorityInstance}" field="iOrder"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${priorityInstance?.id}" />
					<g:link class="edit" action="edit" id="${priorityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
