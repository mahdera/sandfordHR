<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	List<BenefitManagement> benefitManagementList = BenefitManagement.getAllBenefitManagementsForThisEmployee(employeeId);
	Iterator<BenefitManagement> benefitManagementItr = benefitManagementList.iterator();
%>
<table border="1" width="100%">
	<tr>
		<th>Benefit Name</th>
		<th>Benefit Date</th>
		<th>Description</th>
		<th>Edit</th>
	</tr>
	<%
	while(benefitManagementItr.hasNext()){
		BenefitManagement benefitManagement = benefitManagementItr.next();
		%>
		<tr>
			<td><%=benefitManagement.getBenefitName() %></td>
			<td><%=benefitManagement.getBenefitDate() %></td>
			<td><%=benefitManagement.getDescription() %></td>
			<td>
				<a href="#.jsp" onclick="deleteThisBenefit(<%=benefitManagement.getId() %>);"><img src="design/delete.png" align="absmiddle" border="0"/></a>
			</td>
		</tr>
		<%
	}
	%>
</table>
<div id="benefitManagementEditDiv"></div>
