<%@page import="com.empadmin.server.classes.*" %>
<%
	int employementTypeId = Integer.parseInt(request.getParameter("employementId"));
	EmployementType.deleteEmployementType(employementTypeId);	
%>
<%@include file="showlistofemployementtypesfordelete.jsp" %>
<p class="msg done">Employement type deleted successfully!</p>

