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
		<td>Edit</td>
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
					<a href="#.jsp" onclick="showEditFieldsOfThisAttendance(<%=attendance.getId() %>);">Edit</a> |
					<a href="#.jsp" onclick="hideEditFieldsOfThisAttendance(<%=attendance.getId() %>);">Hide</a>
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
	function showEditFieldsOfThisAttendance(attendanceId){
		var divId = "attendanceEditDetailDiv" + attendanceId;
		$('#'+divId).load('showeditfieldsofthisattendance.jsp?attendanceId='+attendanceId);
	}
	
	function hideEditFieldsOfThisAttendance(attendanceId){
		var divId = "attendanceEditDetailDiv" + attendanceId;
		$('#'+divId).html('');
	}
</script>