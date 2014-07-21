<%@page import="com.empadmin.server.classes.*"%>
<%
	int divisionId = Integer.parseInt(request.getParameter("divisionId"));
	out.print(FacultyInstituteSchool.getFacultyInstituteSchool(divisionId).getFisName());
%>
