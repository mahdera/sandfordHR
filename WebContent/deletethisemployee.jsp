<%@page import="com.empadmin.server.classes.*"%>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Employee.softDeleteThisEmployee(employeeId);
%>
<p class="msg done">Employee deleted successfully!</p>