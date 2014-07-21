<%@page import="com.empadmin.server.classes.*"%>
<%
	long educationLevelCriteriaId = Long.parseLong(request.getParameter("educationLevelCriteriaId"));
	EducationLevelCriteriaValueList.deleteEducationLevelCriteriaValueList(educationLevelCriteriaId);
%>
<p class="msg done">Education level criteria deleted successfully!</p>