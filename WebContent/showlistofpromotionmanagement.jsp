<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Promotion> promotionList = Promotion.getAllPromotions();
	Iterator<Promotion> promotionItr = promotionList.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder">
		<td>Ser.No.</td>
		<td>Employee</td>
		<td>From Department</td>
		<td>To Department</td>
		<td>Promotion Detail</td>
		<td>Promotion Date</td>
		<td>Job</td>		
	</tr>	
	<%
		int ctr = 1;
		while(promotionItr.hasNext()){
			Promotion promotion = promotionItr.next();
			Employee employee = Employee.getEmployee(promotion.getEmployeeId());
			Department fromDepartment = Department.getDepartment(promotion.getFromDepartmentId());
			Department toDepartment = Department.getDepartment(promotion.getToDepartmentId());
			Job job = Job.getJob(promotion.getJobId());
			String fullName = employee.getFirstName()+" "+employee.getLastName();
			%>
			<tr>
				<td><%=ctr %></td>
				<td><%=fullName %></td>
				<td><%=fromDepartment.getDepartmentName() %></td>
				<td><%=toDepartment.getDepartmentName() %></td>
				<td><%=promotion.getPromotionDetail() %></td>
				<td><%=promotion.getPromotionDate() %></td>
				<td><%=job.getJobTitle() %></td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>