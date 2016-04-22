
<%@ page import="ladybugweb.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-role" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><a class="list" href="${createLink(uri: '/bugticket/list')}">Ticket List</a></li>
 				<li><a class="list" href="${createLink(uri: '/associate/list')}">User</a></li>
 				<li><a class="list" href="${createLink(uri: '/category/list')}">Category</a></li>
				<li><a class="list" href="${createLink(uri: '/items/list')}">Items</a></li>
			</ul>
		</div>
		<div id="show-role" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list role">
			
				<g:if test="${roleInstance?.categoryId}">
				<li class="fieldcontain">
					<span id="categoryId-label" class="property-label"><g:message code="role.categoryId.label" default="Category Id" /></span>
					
						<span class="property-value" aria-labelledby="categoryId-label"><g:fieldValue bean="${roleInstance}" field="categoryId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="role.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${roleInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.iOrder}">
				<li class="fieldcontain">
					<span id="iOrder-label" class="property-label"><g:message code="role.iOrder.label" default="IO rder" /></span>
					
						<span class="property-value" aria-labelledby="iOrder-label"><g:fieldValue bean="${roleInstance}" field="iOrder"/></span>
					
				</li>
				</g:if>
			
			</ol>
		</div>
	</body>
</html>
