<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Select the employee position:</h5>
			</td>
			<td width="60%">
				<%
				List<String> employeePositionList = Employee.getAllEmployeePositions();
				Iterator<String> employeePositionItr = employeePositionList.iterator();
				out.print("<select name='slctemployeeposition' id='slctemployeeposition' style='width:100%'>");
					out.print("<option value=''>--Select--</option>");
					while(employeePositionItr.hasNext()){
						String empPosition = employeePositionItr.next();
						%>
						<option value="<%=empPosition %>"><%=empPosition %></option>
						<%
					}//end class
				out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="go" onclick="showEmployeesWithThisEmployeePosition(document.getElementById('slctemployeeposition').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>