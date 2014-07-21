<%@page import="com.empadmin.server.classes.*" %>
<%
	int fisId = Integer.parseInt(request.getParameter("fisId"));
	String departmentName = request.getParameter("departmentName");
	String departmentCode = request.getParameter("departmentCode");
	String departmentDescription = request.getParameter("departmentDescription");
	
	Department department = new Department( departmentCode,  departmentName,
			 fisId,  departmentDescription);
	department.addDepartment();	
%>
<p class="msg done">Department saved successfully!</p>