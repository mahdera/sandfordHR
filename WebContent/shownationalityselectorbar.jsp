<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Select the employee nationality:</h5>
			</td>
			<td width="60%">
				<%
				List<String> employeeNationalityList = Employee.getAllEmployeeNationalities();
				Iterator<String> employeeNationalityItr = employeeNationalityList.iterator();
				out.print("<select name='slctemployenationality' id='slctemployenationality' style='width:100%'>");
					out.print("<option value=''>--Select--</option>");
					while(employeeNationalityItr.hasNext()){
						String empNationality = employeeNationalityItr.next();
						%>
						<option value="<%=empNationality %>"><%=empNationality %></option>
						<%
					}//end class
				out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="go" onclick="showEmployeesWithThisEmployeeNationality(document.getElementById('slctemployenationality').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>