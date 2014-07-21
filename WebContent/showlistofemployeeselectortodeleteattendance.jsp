<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Please select an employee:</td>
			<td>
				<select name="slctemployeeattendance" id="slctemployeeattendance" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Employee> employeeList = Employee.getAllEmployees();
						Iterator<Employee> employeeItr = employeeList.iterator();
						while(employeeItr.hasNext()){
							Employee emp = employeeItr.next();
							%>
							<option value="<%=emp.getId() %>"><%=emp.getFirstName() %> <%=emp.getFatherName() %> <%=emp.getGrandFatherName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
			<td>
				<input type="button" value="Show Attendance Sheet" onclick="showAttendanceSheetForThisEmployeeToDelete(document.getElementById('slctemployeeattendance').value);"/>
				<input type="reset" value="Reset"/>
			</td>
		</tr>
	</table>
</form>
<div id="attendanceSheetDiv"></div>