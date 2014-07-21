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
		<td>Delete</td>
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
				<td>
					<a href="#.jsp" onclick="deletePromotionManagement(<%=promotion.getId() %>);">Delete</a>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function deletePromotionManagement(promotionId){
		if(window.confirm("Are you sure you want to delete this promotion record?")){
			var dataString = "promotionId="+promotionId;
			$.ajax({
			    url: 'deletepromotionmanagement.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		alert(response);
			    		$('#tabDetailDiv').load('showlistofpromotionmanagementfordelete.jsp');					
			    },
			    error:function(error){
					alert(error);
			    }
			});			
		}		
	}
</script>