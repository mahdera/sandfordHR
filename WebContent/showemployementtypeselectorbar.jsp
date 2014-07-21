<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Select the employement type:</h5>
			</td>
			<td width="60%">
				<%
				List<EmployementType> employementTypeList = EmployementType.getAllEmployementTypes();
				Iterator<EmployementType> employementTypeItr = employementTypeList.iterator();
				out.print("<select name='slctemployementtype' id='slctemployementtype' style='width:100%'>");
					out.print("<option value=''>--Select--</option>");
					while(employementTypeItr.hasNext()){
						EmployementType employmentType = employementTypeItr.next();
						%>
						<option value="<%=employmentType.getId() %>"><%=employmentType.getEmployementType() %></option>
						<%
					}//end class
				out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="go" onclick="showEmployeesWithThisEmployementType(document.getElementById('slctemployementtype').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>