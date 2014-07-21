<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Select the marital status:</h5>
			</td>
			<td width="60%">
				<%
				List<MaritalStatus> maritalStatusList = MaritalStatus.getAllMaritalStatses();
				Iterator<MaritalStatus> maritalStatusItr = maritalStatusList.iterator();
				out.print("<select name='slctmaritalstatus' id='slctmaritalstatus' style='width:100%'>");
					out.print("<option value=''>--Select--</option>");
					while(maritalStatusItr.hasNext()){
						MaritalStatus maritalStatus = maritalStatusItr.next();
						%>
						<option value="<%=maritalStatus.getId() %>"><%=maritalStatus.getMaritalStatus() %></option>
						<%
					}//end class
				out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="go" onclick="showEmployeesWhoseMaritalStatusIs(document.getElementById('slctmaritalstatus').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>