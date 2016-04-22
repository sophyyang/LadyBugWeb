
<%@ page import="ladybugweb.Bugticket" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bugticket.label', default: 'Bugticket')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bugticket" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
 				<li><a class="list" href="${createLink(uri: '/associate/list')}">User</a></li>
 				<li><a class="list" href="${createLink(uri: '/category/list')}">Category</a></li>
 				<li><a class="list" href="${createLink(uri: '/Items/list')}">Items</a></li>
			</ul>
		</div>
		<div id="list-bugticket" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="id" title="${message(code: 'bugticket.id.label', default: 'Ticket No.')}" />
						<g:sortableColumn property="title" title="${message(code: 'bugticket.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'bugticket.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'bugticket.dateCreated.label', default: 'Date Created')}" />

						<g:sortableColumn property="associate" title="${message(code: 'bugticket.associate.label', default: 'Assignee')}" />
						<th><g:message code="bugticket.requester.label" default="Requester" /></th>
						<g:sortableColumn property="status" title="${message(code: 'bugticket.status.label', default: 'Status')}" />
						<g:sortableColumn property="priority" title="${message(code: 'bugticket.priority.label', default: 'Priority')}" />
					
 					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bugticketInstanceList}" status="i" var="bugticketInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bugticketInstance.id}">${fieldValue(bean: bugticketInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: bugticketInstance, field: "title")}</td>
						<td>${fieldValue(bean: bugticketInstance, field: "description")}</td>
					
						<td><g:formatDate date="${bugticketInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: bugticketInstance, field: "assignee")}</td>
						<td>${fieldValue(bean: bugticketInstance, field: "requester")}</td>
						<td>${fieldValue(bean: bugticketInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: bugticketInstance, field: "priority")}</td>
 					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bugticketInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
