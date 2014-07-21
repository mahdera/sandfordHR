<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<LeaveType> leaveTypeList = LeaveType.getAllLeaveTypes();
	Iterator<LeaveType> leaveTypeItr = leaveTypeList.iterator();
%>
<table border="0" width="100%">
	<tr style="background:#eee;font-weight:bolder">
		<td>Ser.No.</td>
		<td>Leave Type Abbrivation</td>
		<td>Leave Type Name</td>
		<td>Description</td>		
	</tr>
	<%
		int ctr=1;
		while(leaveTypeItr.hasNext()){
			LeaveType leaveType = leaveTypeItr.next();
			%>
			<tr>
				<td><%=ctr %></td>
				<td><%=leaveType.getLeaveTypeAbbrivation() %></td>
				<td><%=leaveType.getLeaveTypeName() %></td>
				<td><%=leaveType.getDescription() %></td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>