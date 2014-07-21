<%@page import="com.empadmin.server.classes.*"%>
<%
	long disciplineManagementId = Long.parseLong(request.getParameter("disciplineManagementId"));
	DisciplineManagement.deleteDisciplineManagement(disciplineManagementId);
%>
<p class="msg done">Discipline Management Deleted Successfully!</p>