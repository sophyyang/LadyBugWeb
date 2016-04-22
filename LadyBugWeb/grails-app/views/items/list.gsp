
<%@ page import="ladybugweb.Items" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'items.label', default: 'Items')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-items" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><a class="list" href="${createLink(uri: '/bugticket/list')}">Ticket List</a></li>
 				<li><a class="list" href="${createLink(uri: '/associate/list')}">User</a></li>
 				<li><a class="list" href="${createLink(uri: '/category/list')}">Category</a></li>
 			</ul>
		</div>
		<div id="list-items" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="category" title="${message(code: 'items.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'items.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="iOrder" title="${message(code: 'items.iOrder.label', default: 'IO rder')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'items.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastModifiedDate" title="${message(code: 'items.lastModifiedDate.label', default: 'Last Modified Date')}" />
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${itemsInstanceList}" status="i" var="itemsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>${fieldValue(bean: itemsInstance, field: "category")}</td>
					
						<td><g:link action="show" id="${itemsInstance.id}">${fieldValue(bean: itemsInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: itemsInstance, field: "iOrder")}</td>
					
						<td><g:formatDate date="${itemsInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${itemsInstance.lastModifiedDate}" /></td>
					
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
