<%@page import="com.empadmin.server.classes.*"%>
<%
	int religionId = Integer.parseInt(request.getParameter("religionId"));
	out.print(Religion.getReligion(religionId).getReligion());
%>