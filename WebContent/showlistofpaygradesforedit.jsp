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
	List<PayGrade> payGradeList = PayGrade.getAllPayGrades();
	Iterator<PayGrade> payGradeItr = payGradeList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Pay Grades</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Code</th>");
	out.print("<th>Name</th>");
	out.print("<th>Minimum Salary</th>");
	out.print("<th>Maximum Salary</th>");
	out.print("<th>Step Increase</th>");
	out.print("<th>Edit</th>");
	int ctr = 1;
	while(payGradeItr.hasNext()){
		PayGrade payGrade = payGradeItr.next();
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(payGrade.getCode());
			out.print("</td>");
			out.print("<td>");
				out.print(payGrade.getName());
			out.print("</td>");
			out.print("<td>");
				out.print(payGrade.getMinimumSalary());
			out.print("</td>");
			out.print("<td>");
				out.print(payGrade.getMaximumSalary());
			out.print("</td>");
			out.print("<td>");
				out.print(payGrade.getStepIncrease());
			out.print("</td>");
			out.print("<td>");
				%>
				<a href="#.jsp" onclick="showEditFieldsOfPayGrade(<%=payGrade.getId()%>);"><img src="design/edit-icon.gif" align="absmiddle" border="0"/></a>
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
<div id="payGradeEditDiv"></div>
