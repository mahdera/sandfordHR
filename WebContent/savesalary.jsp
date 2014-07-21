<%@page import="com.empadmin.server.classes.*" %>
<%
	int payGradeId = Integer.parseInt(request.getParameter("payGradeId"));
	int payFrequencyId = Integer.parseInt(request.getParameter("payFrequencyId"));
	float amount = Float.parseFloat(request.getParameter("amount"));
	String comments = request.getParameter("comments");
	
	Salary salary = new Salary(payGradeId,payFrequencyId,amount,comments);
	salary.addSalary();				
%>
<p class="msg done">Salary saved successfully!</p>