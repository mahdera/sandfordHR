<%@page import="com.empadmin.server.classes.*"%>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Employee empObj = Employee.getEmployee(employeeId);
	String fullName = empObj.getFirstName()+" "+empObj.getLastName();
	out.print(fullName);
%>