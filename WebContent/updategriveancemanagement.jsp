<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long griveanceManagementId = Long.parseLong(request.getParameter("griveanceManagementId"));
	String subject = request.getParameter("subject");
	Date grievanceDate = Date.valueOf(request.getParameter("griveanceDate"));
	String description = request.getParameter("description");
	
	GriveanceManagement.updateGriveanceManagement(griveanceManagementId, subject, description, grievanceDate);
	
%>
<p class="msg done">Griveance Management Update Successfully!</p>