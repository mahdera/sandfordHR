<%@page import="com.empadmin.server.classes.*" %>
<%
	int fieldOfStudyId = Integer.parseInt(request.getParameter("fieldOfStudyId"));
	out.print(FieldOfStudy.getFieldOfStudy(fieldOfStudyId).getFieldOfStudy());
%>