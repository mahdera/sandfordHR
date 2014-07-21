<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Please select Department:</td>
			<td>
				<select name="slctdepartment" id="slctdepartment" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Department> departmentList = Department.getAllDepartments();
						Iterator<Department> departmentItr = departmentList.iterator();
						departmentList = null;
						while(departmentItr.hasNext()){
							Department department = departmentItr.next();
							%>
							<option value="<%=department.getId() %>"><%=department.getDepartmentName() %></option>
							<%
						}//end while loop
						departmentItr = null;
					%>
				</select>
			</td>
			<td>Employees Hired Within (Month):</td>
			<td>
				<select name="slctmonthselector" id="slctmonthselector" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						for(int i=1;i<=12;i++){
							%>
							<option value="<%=i %>"><%=i %></option>
							<%
						}//end for loop
					%>
				</select>
			</td>
			<td>
				<input type="button" value="Show Employees" onclick="showListOfNewlyHiredEmployeesWithInThisMonth(document.getElementById('slctdepartment').value,
						document.getElementById('slctmonthselector').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="employeeByDepartmentDiv"></div>