<%@page import="com.empadmin.server.classes.*"%>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	out.print(Vacancy.getVacancy(vacancyId).getVacancyName());
%>