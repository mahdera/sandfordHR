<%@page import="com.empadmin.server.classes.*" %>
<%
	int maritalStatusId = Integer.parseInt(request.getParameter("maritalStatusId"));
	MaritalStatus mStatus = MaritalStatus.getMaritalStatus(maritalStatusId);		
%>
<form>
<table border="1" width="100%">
	<tr>
		<td align="right">Marital Status</td>
		<td>
			<input type="text" name="txteditmaritalstatus" id="txteditmaritalstatus" value="<%=mStatus.getMaritalStatus() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateMaritalStatus(<%=mStatus.getId() %>, document.getElementById('txteditmaritalstatus').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>