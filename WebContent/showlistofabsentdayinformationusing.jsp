<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));
	
	List<AbsentDayInformation> absentDayInformationList = AbsentDayInformation.getAllAbsentDayInformationsForYearAndMonth(year,month);
	if(!absentDayInformationList.isEmpty()){
		Iterator<AbsentDayInformation> absentDayInformationItr = absentDayInformationList.iterator();
		%>
			<table border="0" width="100%">
				<tr style="background:#eee;font-weight:bolder">
					<td>Ser.No</td>
					<td>Employee</td>
					<td>Number of Days Absent</td>					
				</tr>
				<%
					int ctr=1;
					while(absentDayInformationItr.hasNext()){
						AbsentDayInformation absentDayInformation = absentDayInformationItr.next();
						Employee employee = Employee.getEmployee(absentDayInformation.getEmployeeId());
						String fullName = employee.getFirstName()+" "+employee.getMiddleName()+" "+employee.getLastName();
						%>
							<tr>
								<td><%=ctr++ %></td>
								<td><%=fullName %></td>
								<td><%=absentDayInformation.getNumberOfDaysToBeDeducted() %></td>
							</tr>
						<%
					}//end while loop
				%>
			</table>
		<%
	}else{
		%>
			<p class="msg warning">There is/are no absent day information record saved in the database!</p>
		<%
	}
%>