<%@page import="com.empadmin.server.classes.*"%>
<%
	int payFrequencyId = Integer.parseInt(request.getParameter("payFrequencyId"));
	PayFrequency.delete(payFrequencyId);
%>