<%@page import="com.empadmin.server.classes.*"%>
<%
	int maritalStatusId = Integer.parseInt(request.getParameter("maritalStatusId"));
	out.print(MaritalStatus.getMaritalStatus(maritalStatusId).getMaritalStatus());
%>