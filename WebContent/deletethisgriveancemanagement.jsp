<%@page import="com.empadmin.server.classes.*"%>
<%
	long griveanceManagementId = Long.parseLong(request.getParameter("griveanceManagementId"));
	GriveanceManagement.deleteGriveanceManagement(griveanceManagementId);
%>
<p class="msg done">Griveance Management Deleted Successfully!</p>