<%@page import="com.empadmin.server.classes.*" %>
<%
	int payGradeId = Integer.parseInt(request.getParameter("payGradeId"));
	PayGrade.deletePayGrade(payGradeId);	
%>
<%@include file="showlistofpaygradesfordelete.jsp" %>
<p class="msg done">Pay grade deleted successfully!</p>

