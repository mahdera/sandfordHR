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
		<td>Delete</td>
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
					<a href="#.jsp" onclick="deleteThisLeaveType(<%=leaveType.getId()%>);">Delete</a>
				</td>
			</tr>			
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function deleteThisLeaveType(leaveTypeId){
		if(window.confirm("Are you sure you want to delete this leave type?")){
			var dataString = "leaveTypeId="+leaveTypeId;
			$.ajax({
			    url: 'deleteleavetype.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		alert(response);
			    		$('#leaveTypeDetailDiv').load('showlistofleavetypesfordelete.jsp');					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		}
	}
</script>