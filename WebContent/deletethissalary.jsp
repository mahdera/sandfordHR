<%@page import="com.empadmin.server.classes.*" %>
<%
	long salaryId = Integer.parseInt(request.getParameter("salaryId"));
	Salary.deleteSalary(salaryId);	
%>
<%@include file="showlistofsalariesfordelete.jsp" %>
<p class="msg done">Salary deleted successfully!</p>

