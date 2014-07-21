<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isReadable()){
%>
<%	
	List<Salary> salaryList = Salary.getAllSalaries();
	Iterator<Salary> salaryItr = salaryList.iterator();
	
	out.print("<table width='100%'>");
	out.print("<caption>List of Salaries</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Pay Grade</th>");
	out.print("<th>Pay Frequency</th>");
	out.print("<th>Amount</th>");
	out.print("<th>Comments</th>");
	out.print("<th>Edit</th>");
	int ctr = 1;
	
	while(salaryItr.hasNext()){
		Salary salary = salaryItr.next();
		PayGrade payGrade = PayGrade.getPayGrade(salary.getPayGradeId());
		PayFrequency payFrequency = PayFrequency.getPayFrequency(salary.getPayFrequencyId());
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(payGrade.getName());
			out.print("</td>");
			out.print("<td>");
				out.print(payFrequency.getFrequencyName());
			out.print("</td>");
			out.print("<td>");
				out.print(salary.getAmount());
			out.print("</td>");
			out.print("<td>");
				out.print(salary.getComments());
			out.print("</td>");
			out.print("<td>");
			%>
				<a href="#.jsp" onclick="deleteThisSalary(<%=salary.getId() %>);"><img src="design/delete.png" align="absmiddle" border="0"/></a>
			<%
			out.print("</td>");
		out.print("</tr>");
		ctr++;
	}//end while loop
	out.print("</table>");	
%>
<%
	}
	else{	
%>
	<p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%>
<div id="salaryEditDiv"></div>