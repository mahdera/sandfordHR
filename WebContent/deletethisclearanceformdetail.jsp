<%@page import="com.empadmin.server.classes.*"%>
<%	
	long clearanceFormId = Long.parseLong(request.getParameter("clearanceFormId"));
	CleranceForm.delete(clearanceFormId);
%>
<p class="msg done">Clearance form detail deleted successfully!</p>