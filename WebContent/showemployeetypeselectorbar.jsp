<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Select the employee type:</h5>
			</td>
			<td width="60%">
				<%
				List<EmployeeType> employeeTypeList = EmployeeType.getAllEmployeeTypes();
				Iterator<EmployeeType> employeeTypeItr = employeeTypeList.iterator();
				out.print("<select name='slctemployeetype' id='slctemployeetype' style='width:100%'>");
					out.print("<option value=''>--Select--</option>");
					while(employeeTypeItr.hasNext()){
						EmployeeType empType = employeeTypeItr.next();
						%>
						<option value="<%=empType.getId() %>"><%=empType.getEmployeeType() %></option>
						<%
					}//end class
				out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="go" onclick="showEmployeesWhoseEmployeeTypeIs(document.getElementById('slctemployeetype').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>