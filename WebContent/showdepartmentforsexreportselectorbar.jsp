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
			<td>Select Sex:</td>
			<td>
				<select name="slctsex" id="slctsex" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Male">Male</option>
					<option value="Female">Female</option> 
				</select>
			</td>
			<td>
				<input type="button" value="Show Employees" onclick="showListOfEmployeesFromThisDepartmentBySex(document.getElementById('slctdepartment').value,
						document.getElementById('slctsex').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="employeeByDepartmentDiv"></div>