<%@page import="com.empadmin.server.classes.*"%>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	Vacancy.delete(vacancyId);
%>