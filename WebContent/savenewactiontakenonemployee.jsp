<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.sql.Date" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
	String actionTaken = request.getParameter("actionTaken");
	Date dateOfAction = Date.valueOf(request.getParameter("dateOfAction"));
	String description = request.getParameter("description");
	ActionOnEmployee aObj = new ActionOnEmployee(actionTaken,dateOfAction,description,empRecId);
	aObj.addActionOnEmployee();
%>
<p class="msg done">New action on employee saved successfully!</p> 