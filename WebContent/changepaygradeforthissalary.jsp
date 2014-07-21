<%@page import="com.empadmin.server.classes.*"%>
<%
	int payGradeId = Integer.parseInt(request.getParameter("payGradeId"));
	out.print(PayGrade.getPayGrade(payGradeId).getName());
%>