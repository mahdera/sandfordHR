<%@page import="com.empadmin.server.classes.*"%>
<%
	int payGradeId = Integer.parseInt(request.getParameter("payGradeId"));
	PayGrade.delete(payGradeId);
%>