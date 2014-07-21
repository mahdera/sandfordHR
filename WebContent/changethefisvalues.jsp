<%@page import="com.empadmin.server.classes.*" %>
<%
	int fisCode = Integer.parseInt(request.getParameter("fisCode"));
	FacultyInstituteSchool fis = FacultyInstituteSchool.getFacultyInstituteSchool(fisCode);
	out.print(fis.getFisName());
%>