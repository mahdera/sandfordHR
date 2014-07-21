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
			<td>Details</td>
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
						<a href="#.jsp" onclick="showDetailsOfThisLeaveRequest(<%=leaveRequest.getId() %>);">View Detail</a> | 
						<a href="#.jsp" onclick="hideDetailsOfThisLeaveRequest(<%=leaveRequest.getId() %>);">Hide Detail</a>
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
	function showDetailsOfThisLeaveRequest(leaveRequestId){
		var divId = "leaveRequestDetailDiv" + leaveRequestId;
		$('#'+divId).load('showdetailsofleaverequest.jsp?leaveRequestId='+leaveRequestId);
	}	
</script>