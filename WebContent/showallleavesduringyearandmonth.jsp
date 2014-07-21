<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<div id="printReportDiv">
<%
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));

	List<LeaveRequest> leaveRequestList = LeaveRequest.getAllLeaveRequestsDuringYearAndMonth(year,month);
	if(!leaveRequestList.isEmpty()){
		Iterator<LeaveRequest> leaveRequestItr = leaveRequestList.iterator();
		%>
			<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
				<tr style="background:#eee;font-weight:bolder">
					<td>Ser.No</td>
					<td>Employee Id</td>
					<td>Name</td>
					<td>Leave Type</td>
					<td>Number of Days</td>
					<td>Date From</td>
					<td>Date To</td>
				</tr>
				<%
					int ctr=1;
					while(leaveRequestItr.hasNext()){
						LeaveRequest leaveRequest = leaveRequestItr.next();
						Employee employee = Employee.getEmployee(leaveRequest.getEmployeeId());
						String fullName = employee.getFirstName()+" "+employee.getMiddleName()+" "+employee.getLastName();
						LeaveType leaveType = LeaveType.getLeaveType(leaveRequest.getLeaveTypeId());
						%>
							<tr>
								<td><%=ctr++ %></td>
								<td><%=employee.getEmployeeIdNumber() %></td>
								<td><%=fullName %></td>
								<td><%=leaveType.getLeaveTypeName() %></td>
								<td><%=leaveRequest.getNumberOfDays() %></td>
								<td><%=leaveRequest.getDateFrom() %></td>
								<td><%=leaveRequest.getDateTo() %></td>
							</tr>
						<%
					}//end while loop
				%>
			</table>
		<%
	}else{
		%>
			<p class="msg warning">There is/are no leave requests during the selected year and month!</p>
		<%
	}
%>
</div>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="printDiv('printReportDiv')"><img src="images/printer.jpg" align="absmiddle"/> Print</a>
		</td>
	</tr>
</table>
<script type="text/javascript">
	$(document).ready(function(){
		$('#loadingDiv').hide();
	});//end document.ready function
</script>