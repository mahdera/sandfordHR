<%@page import="com.empadmin.server.classes.*"%>
<%
	int employementTypeId = Integer.parseInt(request.getParameter("employementTypeId"));
	out.print(EmployementType.getEmployementType(employementTypeId).getEmployementType());
%>