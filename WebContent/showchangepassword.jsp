<%@page import="com.empadmin.server.classes.*" %>
<form>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "accountManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isWritable())
	{
%>
<table border="0" width="100%" style="background:#eeeeee">
	<tr>
		<td colspan="2">
			<div id="passwordErrorDiv"></div>
		</td>
	</tr>
	<tr>
		<td align="right">Enter current username</td>
		<td><input type="text" name="txtcurrentusername" id="txtcurrentusername"/></td>
	</tr>
	<tr>
		<td align="right">Enter current password</td>
		<td><input type="password" name="txtcurrentpassword" id="txtcurrentpassword"/></td>
	</tr>
	<tr>
		<td align="right">Enter new password</td>
		<td><input type="password" name="txtnewpassword" id="txtnewpassword"/></td>
	</tr>
	<tr>
		<td align="right">Enter confirmation password</td>
		<td><input type="password" name="txtconfirmpassword" id="txtconfirmpassword"/></td>
	</tr>
	<tr>
		<td align="right" colspan="2">
			<input type="button" value = "Change" class="input-submit" onclick="changePassword(document.getElementById('txtcurrentusername').value,
					document.getElementById('txtcurrentpassword').value,document.getElementById('txtnewpassword').value,
					document.getElementById('txtconfirmpassword').value);"/>
			<input type="reset" value="Clear" class="input-submit"/>
		</td>		
	</tr>
</table>
<%
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}	
%>
</form>