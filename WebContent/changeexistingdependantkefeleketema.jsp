<%@page import="com.empadmin.server.classes.*" %>
<%
	int kId = Integer.parseInt(request.getParameter("kId"));
	out.print(KefeleKetema.getKefeleKetema(kId).getKefeleKetema());
%>