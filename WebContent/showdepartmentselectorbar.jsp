<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Please select the Department:</h5>
			</td>
			<td width="50%">
				<%
					List<Department> departmentList = Department.getAllDepartments();
					Iterator<Department> departmentItr = departmentList.iterator();
					out.print("<select name='slctdepartment' id='slctdepartment' style='width:100%'>");
						out.print("<option value='' selected='selected'>--Select--</option>");
						while(departmentItr.hasNext()){
							Department dept = departmentItr.next();
							%>
							<option value="<%=dept.getId() %>"><%=dept.getDepartmentName() %></option>
							<%
						}//end while loop
					out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="Go" onclick="showReportForAllEmployeesOfThisDepartment(document.getElementById('slctdepartment').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>