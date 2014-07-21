<%@page import="com.empadmin.server.classes.*" %>
<%
	int payFrequencyId = Integer.parseInt(request.getParameter("payFrequencyId"));
	PayFrequency.deletePayFrequency(payFrequencyId);	
%>
<%@include file="showlistofpayfrequenciesfordelete.jsp" %>
<p class="msg done">Pay frequency deleted successfully!</p>

