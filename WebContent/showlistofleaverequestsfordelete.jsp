<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<div style="background:#eee">
	<table border="1" width="100%">
		<tr style="background:#ccc;font-weight:bolder">
			<td>Ser.No.</td>
			<td>Employee</td>
			<td>Leave Request Date</td>
			<td>Leave Type</td>
			<td>Number of Days</td>
			<td>Delete</td>
		</tr>
		<%
			List<LeaveRequest> leaveRequestList = LeaveRequest.getAllLeaveRequests();
			Iterator<LeaveRequest> leaveRequestItr = leaveRequestList.iterator();
			int ctr=1;
			while(leaveRequestItr.hasNext()){
				LeaveRequest leaveRequest = leaveRequestItr.next();
				Employee employee = Employee.getEmployee(leaveRequest.getEmployeeId());
				String fullName = employee.getFirstName()+" "+employee.getLastName();
				%>
				<tr>
					<td><%=ctr %></td>
					<td><%=fullName %></td>
					<td><%=leaveRequest.getLeaveRequestDate() %></td>
					<td><%=LeaveType.getLeaveType(leaveRequest.getLeaveTypeId()).getLeaveTypeName() %></td>
					<td><%=leaveRequest.getNumberOfDays() %></td>
					<td>
						<a href="#.jsp" onclick="deleteThisLeaveRequest(<%=leaveRequest.getId() %>);">Delete Detail</a>
					</td>
				</tr>
				<%
					String divId = "leaveRequestDetailDiv" + leaveRequest.getId();
				%>
				<tr>
					<td colspan="6">
						<div id="<%=divId %>"></div>
					</td>
				</tr>
				<%
			}//end while loop
		%>
	</table>
</div>
<script type="text/javascript">
	function deleteThisLeaveRequest(leaveRequestId){
		if(window.confirm('Are you sure you want to delete this leave request record?')){
			var divId = "leaveRequestDetailDiv" + leaveRequestId;
			var dataString = "leaveRequestId="+leaveRequestId;
			$.ajax({
			    url: 'deletethisleaverequest.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){			    		
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});	
		}//end if confirmation		
	}	
</script>