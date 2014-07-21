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
	</tr>
	<%
	while(benefitManagementItr.hasNext()){
		BenefitManagement benefitManagement = benefitManagementItr.next();
		%>
		<tr>
			<td><%=benefitManagement.getBenefitName() %></td>
			<td><%=benefitManagement.getBenefitDate() %></td>
			<td><%=benefitManagement.getDescription() %></td>
		</tr>
		<%
	}
	%>
</table>
