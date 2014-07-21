<%@page import="com.empadmin.server.classes.*" %>
<%
	int employeeTypeId = Integer.parseInt(request.getParameter("employeeTypeId"));
	EmployeeType empTypeObj = EmployeeType.getEmployeeType(employeeTypeId);		
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Employee Type</td>
		<td>
			<input type="text" name="txteditemployeetype" id="txteditemployeetype" value="<%=empTypeObj.getEmployeeType() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateEmployeeType(<%=empTypeObj.getId() %>, document.getElementById('txteditemployeetype').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>