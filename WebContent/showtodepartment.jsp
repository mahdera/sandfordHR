<%@page import="com.empadmin.server.classes.*"%>
<%
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	out.print(Department.getDepartment(departmentId).getDepartmentName());
%>
