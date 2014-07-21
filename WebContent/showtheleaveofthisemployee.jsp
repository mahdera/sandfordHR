<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	List<LeaveRequest> leaveManagementList = LeaveRequest.getAllLeavesOfThisEmployee(employeeId);
	Iterator<LeaveRequest> leaveManagementItr = leaveManagementList.iterator();
%>
<table border="1" width="100%">
	<tr>
		<th>Starting From</th>
		<th>Up to</th>
		<th>Leave Type</th>
		<th>Leave From Last Leave Period</th>
		<th>Leave Taken</th>
		<th>Leave To Next Leave Period</th>
	</tr>
	<%
		while(leaveManagementItr.hasNext()){
			LeaveRequest leave = leaveManagementItr.next();
	%>
		<tr>
			<td><%=leave.getLeaveStartFrom() %></td>
			<td><%=leave.getLeaveEndTo() %></td>
			<td><%=LeaveType.getLeaveType(leave.getLeaveTypeId()).getLeaveType() %></td>
			<td><%=leave.getLeaveFromLastLeavePeriod() %></td>
			<td><%=leave.getLeaveTaken() %></td>
			<td><%=leave.getLeaveToNextLeavePeriod() %></td>
		</tr>
		<%
	}
	%>
</table>
