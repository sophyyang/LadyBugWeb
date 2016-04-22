
<%@ page import="ladybugweb.Priority" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'priority.label', default: 'Priority')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-priority" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-priority" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="categoryId" title="${message(code: 'priority.categoryId.label', default: 'Category Id')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'priority.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="iOrder" title="${message(code: 'priority.iOrder.label', default: 'IO rder')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${priorityInstanceList}" status="i" var="priorityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${priorityInstance.id}">${fieldValue(bean: priorityInstance, field: "categoryId")}</g:link></td>
					
						<td>${fieldValue(bean: priorityInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: priorityInstance, field: "iOrder")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${priorityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
