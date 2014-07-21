<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Demotion> demotionList = Demotion.getAlldemotions();
	Iterator<Demotion> demotionItr = demotionList.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder">
		<td>Ser.No.</td>
		<td>Employee</td>
		<td>From Department</td>
		<td>To Department</td>
		<td>Demotion Detail</td>
		<td>Demotion Date</td>
		<td>Job</td>		
		<td>Delete</td>
	</tr>	
	<%
		int ctr = 1;
		while(demotionItr.hasNext()){
			Demotion demotion = demotionItr.next();
			Employee employee = Employee.getEmployee(demotion.getEmployeeId());
			Department fromDepartment = Department.getDepartment(demotion.getFromDepartmentId());
			Department toDepartment = Department.getDepartment(demotion.getToDepartmentId());
			Job job = Job.getJob(demotion.getJobId());
			String fullName = employee.getFirstName()+" "+employee.getLastName();
			%>
			<tr>
				<td><%=ctr %></td>
				<td><%=fullName %></td>
				<td><%=fromDepartment.getDepartmentName() %></td>
				<td><%=toDepartment.getDepartmentName() %></td>
				<td><%=demotion.getDemotionDetail() %></td>
				<td><%=demotion.getDemotionDate() %></td>
				<td><%=job.getJobTitle() %></td>
				<td>
					<a href="#.jsp" onclick="deleteDemotionManagement(<%=demotion.getId() %>);">Delete</a>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function deleteDemotionManagement(demotionId){
		if(window.confirm("Are you sure you want to delete this demotion record?")){
			var dataString = "demotionId="+demotionId;
			$.ajax({
			    url: 'deletedemotionmanagement.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		alert(response);
			    		$('#tabDetailDiv').load('showlistofdemotionmanagementfordelete.jsp');					
			    },
			    error:function(error){
					alert(error);
			    }
			});			
		}		
	}
</script>