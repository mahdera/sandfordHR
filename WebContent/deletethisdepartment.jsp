<%@page import="com.empadmin.server.classes.*" %>
<%
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	Department.deleteDepartment(departmentId);	
%>
<%@include file="showlistofdepartmentsfordelete.jsp" %>
<p class="msg done">Department deleted successfully!</p>

