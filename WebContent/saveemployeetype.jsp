<%@page import="com.empadmin.server.classes.*" %>
<%
	String employeeType = request.getParameter("employeeType");
	EmployeeType empType = new EmployeeType(employeeType);
	empType.addEmployeeType();		
%>
<p class="msg done">Employee type saved successfully!</p>