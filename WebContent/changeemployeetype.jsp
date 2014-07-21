<%@page import="com.empadmin.server.classes.*"%>
<%
	int employeeTypeId = Integer.parseInt(request.getParameter("employeeTypeId"));
	out.print(EmployeeType.getEmployeeType(employeeTypeId).getEmployeeType());
%>