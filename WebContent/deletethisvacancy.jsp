<%@page import="com.empadmin.server.classes.*"%>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	Vacancy.deleteVacancy(vacancyId);
%>
<%@include file="showlistofvacancyfordelete.jsp" %>
<p class="msg done">Vacancy deleted successfully!</p>
