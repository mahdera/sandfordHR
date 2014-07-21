<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long empId = Long.parseLong(request.getParameter("empId"));
	List<Attendance> attendanceList = Attendance.getAllAttendanceDetailsForThisEmployee(empId);
	Iterator<Attendance> attendanceItr = attendanceList.iterator();
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>Absent On (Start Date)</th>
		<th>Absent On (End Date)</th>
		<th>Number of Days</th>
		<th>Reason for Absence</th>
		<th>Edit</th>
	</tr>
	<%
		int ctr=1;
			while(attendanceItr.hasNext()){
		Attendance attDetail = attendanceItr.next();
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
	%>
				<td><%=ctr%></td>
				<td><%=attDetail.getAbsentOnStartDate()%></td>
				<td><%=attDetail.getAbsentOnEndDate()%></td>
				<td><%=Attendance.getHowManyDays(attDetail.getId())%></td>
				<td><%=attDetail.getReasonForAbsence() %></td>
				<td>
					<a href="#.jsp" onclick="showEditFieldsOfThisAttendanceDetail(<%=attDetail.getId() %>);">Edit</a>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<div id="attendanceDetailEditDiv"></div>