<%@page import="com.empadmin.server.classes.*"%>
<%
	//count how many employees are available in the database...
	long employeeCount = Employee.howManyEmployeesAreThere();
	++employeeCount;
	String employeeIdNumber = "SIS/"+employeeCount;
	out.print(employeeIdNumber);
%>