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
			<td align="right">Marital Status:</td>
			<td><input type="text" name="txtmaritalstatus" id="txtmaritalstatus"/></td>
		</tr>		
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Add" class="input-submit" onclick="saveMaritalStatus(document.getElementById('txtmaritalstatus').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div id="maritalStatusErrorDiv"></div>
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