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
			<td>Select Education Level:</td>
			<td>
				<select name="slcteducationlevel" id="slcteducationlevel" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<EducationLevel> educationLevelList = EducationLevel.getAllEducationLevels();
						Iterator<EducationLevel> educationLevelItr = educationLevelList.iterator();
						educationLevelList = null;
						while(educationLevelItr.hasNext()){
							EducationLevel educationLevel = educationLevelItr.next();
							%>
							<option value="<%=educationLevel.getId() %>"><%=educationLevel.getEducationLevel() %></option>
							<%
						}//end while loop
						educationLevelItr = null;
					%>
				</select>
			</td>
			<td>
				<input type="button" value="Show Employees" onclick="showListOfEmployeesFromThisDepartmentByEducationLevel(document.getElementById('slctdepartment').value,
						document.getElementById('slcteducationlevel').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="employeeByDepartmentDiv"></div>