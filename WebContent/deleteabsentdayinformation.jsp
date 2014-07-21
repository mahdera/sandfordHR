<%@page import="com.empadmin.server.classes.*"%>
<%
	long absentDayInformationId = Long.parseLong(request.getParameter("absentDayInformationId"));
	AbsentDayInformation.delete(absentDayInformationId);
%>