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
		<td>Edit</td>
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
				<td>
					<a href="#.jsp" onclick="showEditFieldsOfThisLeaveType(<%=leaveType.getId()%>);">Edit</a>
				</td>
			</tr>
			<%
				String divId = "leaveTypeEditDiv" + leaveType.getId();
			%>
			<tr>
				<td colspan="5">
					<div id="<%=divId%>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function showEditFieldsOfThisLeaveType(leaveTypeId){
		var divId = "leaveTypeEditDiv" + leaveTypeId;
		$('#'+divId).load('showeditfieldsofthisleavetype.jsp?leaveTypeId='+leaveTypeId);
	}
</script>