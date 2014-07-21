<%@page import="com.empadmin.server.classes.*" %>
<%
	int employementTypeId = Integer.parseInt(request.getParameter("employementTypeId"));
	EmployementType empTypeObj = EmployementType.getEmployementType(employementTypeId);	
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Employement Type</td>
		<td>
			<input type="text" name="txteditemployementtype" id="txteditemployementtype" value="<%=empTypeObj.getEmployementType() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateEmployementType(<%=empTypeObj.getId() %>, document.getElementById('txteditemployementtype').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>