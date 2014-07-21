<%@page import="com.empadmin.server.classes.*" %>
<%
	int employeeTypeId = Integer.parseInt(request.getParameter("employeeTypeId"));
	EmployeeType.deleteEmployeeType(employeeTypeId);	
%>
<%@include file="showlistofemployeetypesfordelete.jsp" %>
<p class="msg done">Employee type deleted successfully!</p>

