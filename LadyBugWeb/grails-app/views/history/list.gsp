
<%@ page import="ladybugweb.History" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'history.label', default: 'History')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-history" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><a class="list" href="${createLink(uri: '/user/list')}">User List</a></li>
 				<li><a class="list" href='${createLink(uri: "/dropdownItems/list?syId=1")}'> Status </a></li>
				<li><a class="list" href='${createLink(uri: "/dropdownItems/list?syId=2")}'> Role </a></li>
				<li><a class="list" href='${createLink(uri: "/dropdownItems/list?syId=3")}'> Priority </a></li>
			</ul>
		</div>
		<div id="list-history" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="historyID" title="${message(code: 'history.historyID.label', default: 'History ID')}" />
					
						<g:sortableColumn property="ticketID" title="${message(code: 'history.ticketID.label', default: 'Ticket ID')}" />
					
						<g:sortableColumn property="userID" title="${message(code: 'history.userID.label', default: 'User ID')}" />
					
						<g:sortableColumn property="statusID" title="${message(code: 'history.statusID.label', default: 'Status ID')}" />
					
						<g:sortableColumn property="priorityID" title="${message(code: 'history.priorityID.label', default: 'Priority ID')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'history.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${historyInstanceList}" status="i" var="historyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${historyInstance.id}">${fieldValue(bean: historyInstance, field: "historyID")}</g:link></td>
					
						<td>${fieldValue(bean: historyInstance, field: "ticketID")}</td>
					
						<td>${fieldValue(bean: historyInstance, field: "userID")}</td>
					
						<td>${fieldValue(bean: historyInstance, field: "statusID")}</td>
					
						<td>${fieldValue(bean: historyInstance, field: "priorityID")}</td>
					
						<td><g:formatDate date="${historyInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${historyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
