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
		<td>Edit</td>
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
					<a href="#.jsp" onclick="showEditFiedlsOfDemotionManagement(<%=demotion.getId() %>);">Edit</a>
				</td>
			</tr>
			<%
				String divId = "demotionEditDiv" + demotion.getId();
			%>
			<tr>
				<td colspan="8">
					<div id="<%=divId %>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function showEditFiedlsOfDemotionManagement(demotionId){
		var divId = "demotionEditDiv" + demotionId; 
		$('#'+divId).load('showeditfieldsofdemotionmanagement.jsp?demotionId='+demotionId);
	}
</script>