<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.sql.Date" %>
<%
	long actionId = Long.parseLong(request.getParameter("actionId"));
	String actionTaken = request.getParameter("actionTaken");
	Date dateOfAction = Date.valueOf(request.getParameter("dateOfAction"));
	String description = request.getParameter("description");
	ActionOnEmployee.updateActionOnEmployee(actionId,actionTaken,dateOfAction,
			description);
%>
<p class="msg done">Action on employee updated successfully!</p>