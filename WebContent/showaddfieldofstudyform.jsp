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
			<td align="right">Field of Study:</td>
			<td><input type="text" name="txtfieldofstudy" id="txtfieldofstudy"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Add" class="input-submit" onclick="saveFieldOfStudy(document.getElementById('txtfieldofstudy').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div id="employeeTypeLevelErrorDiv"></div>
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