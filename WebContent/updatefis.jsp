<%@page import="com.empadmin.server.classes.*"%>
<%
	String fisNameUpdate = request.getParameter("fisName");
	String fisCodeUpdate = request.getParameter("fisCode");
	String fisDescriptionUpdate = request.getParameter("fisDescription");
	int collegeId = Integer.parseInt(request.getParameter("collegeCode"));	 
	int fisId = Integer.parseInt(request.getParameter("fisId"));
	
	FacultyInstituteSchool.updateFacultyInstituteSchool(fisCodeUpdate,fisNameUpdate,
			collegeId,fisDescriptionUpdate,fisId);
	
	
	
%>
<%@include file="showlistoffisforedit.jsp" %>
<p class="msg done">Faculty updated successfully!</p>