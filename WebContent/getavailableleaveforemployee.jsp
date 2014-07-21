<%@page import="com.empadmin.server.classes.*"%>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));	
	EmployeeLeaveStatus employeeLeaveStatus = EmployeeLeaveStatus.getEmployeeLeaveStatusForEmployee(employeeId);
	out.print(employeeLeaveStatus.getAvailable());
%>