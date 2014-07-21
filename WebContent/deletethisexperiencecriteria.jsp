<%@page import="com.empadmin.server.classes.*"%>
<%
	long experienceCriteriaId = Long.parseLong(request.getParameter("experienceCriteriaId"));
	ExperienceCriteriaValueList.deleteExperienceCriteriaValueList(experienceCriteriaId);
%>
<p class="msg done">Experience criteria deleted successfully!</p>