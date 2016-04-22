
<%@ page import="ladybugweb.Items" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'items.label', default: 'Items')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-items" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
 				<li><a class="list" href="${createLink(uri: '/Category/list')}">Category</a></li>
			</ul>
		</div>
		<div id="show-items" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list items">
				<g:if test="${itemsInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="items.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${itemsInstance?.category?.id}">${itemsInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemsInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="items.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${itemsInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemsInstance?.iOrder}">
				<li class="fieldcontain">
					<span id="iOrder-label" class="property-label"><g:message code="items.iOrder.label" default="IO rder" /></span>
					
						<span class="property-value" aria-labelledby="iOrder-label"><g:fieldValue bean="${itemsInstance}" field="iOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemsInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="items.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${itemsInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemsInstance?.lastModifiedDate}">
				<li class="fieldcontain">
					<span id="lastModifiedDate-label" class="property-label"><g:message code="items.lastModifiedDate.label" default="Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="lastModifiedDate-label"><g:formatDate date="${itemsInstance?.lastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${itemsInstance?.id}" />
					<g:link class="edit" action="edit" id="${itemsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
