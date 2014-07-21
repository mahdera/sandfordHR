<%@page import="com.empadmin.server.classes.*"%>
<%
	int educationLevelId = Integer.parseInt(request.getParameter("educationLevelId"));
	String educationLevelV = request.getParameter("educationLevel");
	
	EducationLevel.updateEducationLevel(educationLevelId,educationLevelV);		
%>
<%@include file="showlistofeducationlevelsforedit.jsp" %>
<p class="msg done">Education level updated successfully!</p>