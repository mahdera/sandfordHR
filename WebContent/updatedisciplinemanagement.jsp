<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long disciplineManagementId = Long.parseLong(request.getParameter("disciplineManagementId"));
	String disciplineName = request.getParameter("disciplineName");
	Date disciplineDate = Date.valueOf(request.getParameter("disciplineDate"));
	String description = request.getParameter("description");
	
	DisciplineManagement.updateDisciplineManagement(disciplineManagementId, disciplineName, disciplineDate, description);
	
%>
<p class="msg done">Discipline Management Update Successfully!</p>