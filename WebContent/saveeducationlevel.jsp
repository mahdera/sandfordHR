<%@page import="com.empadmin.server.classes.*" %>
<%
	String educationLevel = request.getParameter("educationLevel");
	EducationLevel educationLevelObj = new EducationLevel(educationLevel);
	educationLevelObj.addEducationLevel();	
%>
<p class="msg done">Education level saved successfully!</p>