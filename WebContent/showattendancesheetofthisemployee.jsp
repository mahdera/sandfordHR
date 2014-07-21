<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long empId = Long.parseLong(request.getParameter("empId"));
	List<Attendance> attendanceList = Attendance.getAllAttendanceDetailsForThisEmployee(empId);
	Iterator<Attendance> attendanceItr = attendanceList.iterator();
%>
<div id="printReportDiv">
<table border="1" width="100%" rules="rows,cols">
	<tr>
		<td align="center" colspan="5">
			<img src="design/juticeogo.PNG" border="0" width=15%/><br/>
			<h2>Attendance Sheet Report</h2>
		</td>
	</tr>
	<tr>
		<td colspan="1">Employee Name:</td>
		<td colspan="4">
			<%
				Employee emp = Employee.getEmployee(empId);
					String empFullName = emp.getFirstName()+" "+emp.getFatherName()+" "+emp.getGrandFatherName();
					out.print("<h4>"+empFullName+"</h4>");
			%>
		</td>
	</tr>
	<tr>
		<th>Ser.No</th>
		<th>Absent On (Start Date)</th>
		<th>Absent On (End Date)</th>
		<th>Number of Days</th>
		<th>Reason for Absence</th>
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
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
</div>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="printDiv('printReportDiv')"><img src="images/printer.jpg" align="absmiddle"/> Print</a>
		</td>
	</tr>
</table>