<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	String disciplineName = request.getParameter("disciplineName");
	Date disciplineDate = Date.valueOf(request.getParameter("disciplineDate"));
	String description = request.getParameter("description");
	DisciplineManagement disciplineManagement = new DisciplineManagement(disciplineName,disciplineDate,description,employeeId);
	disciplineManagement.addDisciplineManagement();
%>
<%@include file="showdisciplinemanagementform.jsp"%>