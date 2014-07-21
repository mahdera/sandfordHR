<%@page import="com.empadmin.server.classes.*"%>
<%
	int empTypeId = Integer.parseInt(request.getParameter("employementTypeId"));
	String employementType = request.getParameter("employementType");
	
	EmployementType.updateEmployementType(empTypeId,employementType);				
%>
<%@include file="showlistofemployementtypesforedit.jsp" %>
<p class="msg done">Employement Type updated successfully!</p>