<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	//String rptType = request.getParameter("rptType");
	//out.print(rptType);
	List<Employee> employeeList = Employee.getAllEmployees();
	Iterator<Employee> employeeItr = employeeList.iterator();
%>
<table border="0" width="100%">
	<tr>
		<th>Select An Employee:</th>
		<th>
			<select name="slctemployee" id="slctemployee" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					while(employeeItr.hasNext()){
						Employee employee = employeeItr.next();
						%>
						<option value="<%=employee.getId() %>"><%=employee.getFirstName() %> <%=employee.getFatherName() %></option>
						<%
					}//end while loop
				%>
			</select>
		</th>
		<th>
			<input type="button" value="Show Attendance Sheet" onclick="showAttendanceSheetOfThisEmployee(document.getElementById('slctemployee').value);"/>		
		</th>
	</tr>
</table>
<div id="attendanceSheetDiv"></div>