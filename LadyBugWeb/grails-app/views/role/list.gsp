
<%@ page import="ladybugweb.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-role" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><a class="list" href="${createLink(uri: '/bugticket/list')}">Ticket List</a></li>
 				<li><a class="list" href="${createLink(uri: '/associate/list')}">User</a></li>
 				<li><a class="list" href="${createLink(uri: '/category/list')}">Category</a></li>
				<li><a class="list" href="${createLink(uri: '/items/list')}">Items</a></li>
			</ul>
		</div>
		<div id="list-role" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
					
						<g:sortableColumn property="description" title="${message(code: 'role.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="iOrder" title="${message(code: 'role.iOrder.label', default: 'IO rder')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${roleInstanceList}" status="i" var="roleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${roleInstance.id}">${fieldValue(bean: roleInstance, field: "description")}</g:link></td>
					
						
						<td>${fieldValue(bean: roleInstance, field: "iOrder")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${roleInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
