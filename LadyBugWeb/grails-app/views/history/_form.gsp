<%@ page import="ladybugweb.History" %>



<div class="fieldcontain ${hasErrors(bean: historyInstance, field: 'historyID', 'error')} ">
	<label for="historyID">
		<g:message code="history.historyID.label" default="History ID" />
		
	</label>
	<g:field name="historyID" type="number" value="${historyInstance.historyID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historyInstance, field: 'ticketID', 'error')} ">
	<label for="ticketID">
		<g:message code="history.ticketID.label" default="Ticket ID" />
		
	</label>
	<g:field name="ticketID" type="number" value="${historyInstance.ticketID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historyInstance, field: 'userID', 'error')} ">
	<label for="userID">
		<g:message code="history.userID.label" default="User ID" />
		
	</label>
	<g:field name="userID" type="number" value="${historyInstance.userID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historyInstance, field: 'statusID', 'error')} ">
	<label for="statusID">
		<g:message code="history.statusID.label" default="Status ID" />
		
	</label>
	<g:field name="statusID" type="number" value="${historyInstance.statusID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historyInstance, field: 'priorityID', 'error')} ">
	<label for="priorityID">
		<g:message code="history.priorityID.label" default="Priority ID" />
		
	</label>
	<g:field name="priorityID" type="number" value="${historyInstance.priorityID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historyInstance, field: 'lastModified', 'error')} ">
	<label for="lastModified">
		<g:message code="history.lastModified.label" default="Last Modified" />
		
	</label>
	<g:datePicker name="lastModified" precision="day"  value="${historyInstance?.lastModified}" default="none" noSelection="['': '']" />
</div>

