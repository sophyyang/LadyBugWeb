
<%@ page import="ladybugweb.Associate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'associate.label', default: 'Associate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-associate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><a class="list" href="${createLink(uri: '/bugticket/list')}">Ticket List</a></li>
 				<li><a class="list" href="${createLink(uri: '/category/list')}">Category</a></li>
				<li><a class="list" href="${createLink(uri: '/items/list')}">Items</a></li>
 			</ul>
		</div>
		<div id="list-associate" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'associate.fullName.label', default: 'Name')}" />
						<g:sortableColumn property="role" title="${message(code: 'associate.role.label', default: 'Role')}" />
					
 						<g:sortableColumn property="emailAdd" title="${message(code: 'associate.emailAdd.label', default: 'Email Add')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'associate.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastModifiedDate" title="${message(code: 'associate.lastModifiedDate.label', default: 'Last Modified Date')}" />
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${associateInstanceList}" status="i" var="associateInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${associateInstance.id}">${fieldValue(bean: associateInstance, field: "fullName")}</g:link></td>
					
						<td>${fieldValue(bean: associateInstance, field: "role")}</td>
					
 					
						<td>${fieldValue(bean: associateInstance, field: "emailAdd")}</td>
					
						<td><g:formatDate date="${associateInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${associateInstance.lastModifiedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${associateInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
