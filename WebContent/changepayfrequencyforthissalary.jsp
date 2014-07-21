<%@page import="com.empadmin.server.classes.*"%>
<%
	int payFrequencyId = Integer.parseInt(request.getParameter("payFrequencyId"));
	out.print(PayFrequency.getPayFrequency(payFrequencyId).getFrequencyName());
%>