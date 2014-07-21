<%@page import="com.empadmin.server.classes.*"%>
<%
	long salaryId = Long.parseLong(request.getParameter("salaryId"));
	int payGradeId = Integer.parseInt(request.getParameter("payGradeId"));
	int payFrequencyId = Integer.parseInt(request.getParameter("payFrequencyId"));
	float amount = Float.parseFloat(request.getParameter("amount"));
	String comments = request.getParameter("comments");
	
	Salary.updateSalary(salaryId, payGradeId, payFrequencyId, amount, comments);
					
%>
<%@include file="showlistofsalariesforedit.jsp" %>
<p class="msg done">Salary updated successfully!</p>