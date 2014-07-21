<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	String subject = request.getParameter("subject");
	String description = request.getParameter("description");
	Date griveanceDate = Date.valueOf(request.getParameter("griveanceDate"));
	
	GriveanceManagement griveanceManagement = new GriveanceManagement(employeeId,subject,description,griveanceDate);
	griveanceManagement.addGriveanceManagement();
%>
<%@include file="showgriveancemanagementform.jsp"%>