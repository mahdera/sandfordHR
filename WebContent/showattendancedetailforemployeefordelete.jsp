<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	//now get the attendance details for this particular employee
	List<Attendance> attendanceList = Attendance.getAllAttendanceDataForEmployee(employeeId);
	Iterator<Attendance> attendanceItr = attendanceList.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder;">
		<td>Ser.No.</td>		
		<td>Punch In</td>
		<td>Punch In Note</td>
		<td>Punch Out</td>
		<td>Punch Out Note</td>
		<td>Total</td>
		<td>Delete</td>
	</tr>
	<%
		int ctr=1;
		while(attendanceItr.hasNext()){
			Attendance attendance = attendanceItr.next();
			%>
			<tr>
				<td><%=ctr %></td>
				<td><%=String.valueOf(attendance.getPunchIn()) %></td>
				<td><%=attendance.getPunchInNote() %></td>
				<td><%=String.valueOf(attendance.getPunchOut()) %></td>
				<td><%=attendance.getPunchOutNote() %></td>
				<td>total</td>
				<td>
					<a href="#.jsp" onclick="deleteThisAttendanceRecord(<%=attendance.getId() %>);">Delete</a>					
				</td>
			</tr>
			<%
				String divId = "attendanceEditDetailDiv" + attendance.getId();
			%>
			<tr>
				<td colspan="7">
					<div id="<%=divId%>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function deleteThisAttendanceRecord(attendanceId){
		var divId = "attendanceEditDetailDiv" + attendanceId;
		if(window.confirm("Are you sure you want to delete this attendance record?")){
			var dataString = "attendanceId="+attendanceId;
			$.ajax({
			    url: 'deletethisattendancerecord.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){			    		
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		}		
	}
	
	function hideEditFieldsOfThisAttendance(attendanceId){
		var divId = "attendanceEditDetailDiv" + attendanceId;
		$('#'+divId).html('');
	}
</script>