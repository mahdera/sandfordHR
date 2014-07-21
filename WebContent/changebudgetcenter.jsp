<%@page import="com.empadmin.server.classes.*"%>
<%
	int budgetCenterId = Integer.parseInt(request.getParameter("budgetCenterId"));
	out.print(FacultyInstituteSchool.getFacultyInstituteSchool(budgetCenterId).getFisName());
%>