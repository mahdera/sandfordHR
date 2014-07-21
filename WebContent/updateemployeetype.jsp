<%@page import="com.empadmin.server.classes.*"%>
<%
	int empTypeId = Integer.parseInt(request.getParameter("employeeTypeId"));
	String employeeType = request.getParameter("employeeType");
	
	EmployeeType.updateEmployeeType(empTypeId,employeeType);			
%>
<%@include file="showlistofemployeetypesforedit.jsp" %>
<p class="msg done">Employee Type updated successfully!</p>