<%@page import="com.empadmin.server.classes.*" %>
<%
	String fisCode = request.getParameter("fisCode");
	String fisName = request.getParameter("fisName");
	String collegeCode = request.getParameter("collegeCode");
	String fisDescription = request.getParameter("fisDescription");
	int collegeId = Integer.parseInt(request.getParameter("collegeId"));
	
	FacultyInstituteSchool fis = new FacultyInstituteSchool(fisCode,fisName,collegeId,fisDescription);
	fis.addFacultyInistituteSchool();
%>
<p class="msg done">Division saved successfully!</p>