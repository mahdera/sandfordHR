<%@page import="com.empadmin.server.classes.*"%>
<%
	long permitId = Long.parseLong(request.getParameter("permitId"));
	Permit.delete(permitId);
%>