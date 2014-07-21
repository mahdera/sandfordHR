<%@page import="com.empadmin.server.classes.*" %>
<%
	int educationLevelId = Integer.parseInt(request.getParameter("educationLevelId"));
	EducationLevel.deleteEducationLevel(educationLevelId);	
%>
<%@include file="showlistofeducationlevelsfordelete.jsp" %>
<p class="msg done">Education level deleted successfully!</p>

