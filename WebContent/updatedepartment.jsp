<%@page import="com.empadmin.server.classes.*" %>
<%
	int fisIdUpdate = Integer.parseInt(request.getParameter("fisCode"));
	String departmentCodeUpdate = request.getParameter("departmentCode");
	String departmentNameUpdate = request.getParameter("departmentName");
	String departmentDescriptionUpdate = request.getParameter("departmentDescription");
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	
	
	/* out.print(fisIdUpdate+":"+departmentCodeUpdate+":"+departmentNameUpdate+":"+
			departmentDescriptionUpdate+":"+departmentId); */
	 Department.updateDepartment(departmentCodeUpdate,departmentNameUpdate,fisIdUpdate,
			departmentDescriptionUpdate,departmentId); 
%>
<%@include file="showlistofdepartmentsforedit.jsp" %>
<p class="msg done">Department updated successfully!</p>