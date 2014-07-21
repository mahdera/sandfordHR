<%@page import="com.empadmin.server.classes.*"%>
<%
	int educationLevelId = Integer.parseInt(request.getParameter("educationLevelId"));
	out.print(EducationLevel.getEducationLevel(educationLevelId).getEducationLevel());
%>