<%@page import="com.empadmin.server.classes.*"%>
<%
	long experienceCriteriaId = Long.parseLong(request.getParameter("experienceCriteriaId"));
	long vId = Long.parseLong(request.getParameter("vacancyId"));
	int minimumExperienceYear = Integer.parseInt(request.getParameter("minimumExperienceYear"));
	float point = Float.parseFloat(request.getParameter("point"));
	ExperienceCriteriaValueList.updateExperienceCriteriaValueList(experienceCriteriaId,vId,minimumExperienceYear,point);
%>
<%@include file="showlistofexperiencecriteriaforedit.jsp"%>
<p class="msg done">Experience criteria updated successfully!</p>