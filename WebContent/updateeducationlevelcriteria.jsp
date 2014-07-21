<%@page import="com.empadmin.server.classes.*"%>
<%
	long eduLevelCriteriaId = Long.parseLong(request.getParameter("eduLevelCriteriaId"));
	long vId = Long.parseLong(request.getParameter("vacancyId"));
	int educationLevelId = Integer.parseInt(request.getParameter("educationLevelId"));
	float point = Float.parseFloat(request.getParameter("point"));
	EducationLevelCriteriaValueList.updateEducationLevelCriteriaValueList(eduLevelCriteriaId,vId,educationLevelId,point);
%>
<%@include file="showlistofeducationlevelcriteriaforedit.jsp"%>
<p class="msg done">Education level criteria updated successfully!</p>