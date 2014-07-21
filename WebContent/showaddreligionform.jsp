<%@page import="com.empadmin.server.classes.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isWritable()){
%>
<form style="background:#eeeeee">
	<table border="0" width="100%">		
		<tr>
			<td align="right">Religion:</td>
			<td><input type="text" name="txtreligion" id="txtreligion"/></td>
		</tr>		
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Add" class="input-submit" onclick="saveReligion(document.getElementById('txtreligion').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div id="religionErrorDiv"></div>
			</td>
		</tr>
	</table>
</form>
<%
	}
	else{	
%>
	<p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%>