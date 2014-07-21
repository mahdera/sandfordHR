<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<table border="0" width="100%">
	<tr>
		<th>Employee Promotion History Report:</th>
	</tr>
	<%
		List<Employee> employeeList = Employee.getAllEmployees();
		Iterator<Employee> employeeItr = employeeList.iterator();
		employeeList = null;
		%>
		<tr>
			<th colspan="6">Employee Full Name</th>
		</tr>
		<%
		while(employeeItr.hasNext()){
			Employee employee = employeeItr.next();
			%>
			<tr>
				<td><%=employee.getFirstName() %> <%=employee.getFatherName() %> <%=employee.getGrandFatherName() %></td>
			</tr>
			<%
			List<Promotion> promotionList = Promotion.getAllPromotionForThisEmployee(employee.getId());
			Iterator<Promotion> promotionItr = promotionList.iterator();
			promotionList = null;
			%>
			<tr>
				<tr>
					<th>Promoted From Division</th>
					<th>Promoted To Division</th>
					<th>Promoted From Department</th>
					<th>Promoted To Department</th>
					<th>Promotion Detail</th>
					<th>Promotion Date</th>
				</tr>
			</tr>
			<%
		
			while(promotionItr.hasNext()){
				Promotion promotion = promotionItr.next();
				%>
					<tr>
						<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getPromotedFromDivisionId()).getFisName() %></td>
						<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getPromotedToDivisionId()).getFisName() %></td>
						<td><%=Department.getDepartment(promotion.getPromotedFromDepartmentId()).getDepartmentName() %></td>
						<td><%=Department.getDepartment(promotion.getPromotedToDepartmentId()).getDepartmentName() %></td>
						<td><%=promotion.getPromotionDetail() %></td>
						<td><%=promotion.getPromotionDate() %></td>
					</tr>
				<%
			}//end inner while loop
		  
		}//end while loop
	%>
</table>