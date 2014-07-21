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
			<div id="usernameErrorDiv"></div>
		</td>
	</tr>
	<tr>
		<td align="right">Enter current username</td>
		<td><input type="text" name="txtcurrentusername" id="txtcurrentusername"/></td>
	</tr>
	<tr>
		<td align="right">Enter new username</td>
		<td><input type="text" name="txtnewusername" id="txtnewusername"/></td>
	</tr>
	<tr>
		<td align="right">Enter password</td>
		<td><input type="password" name="txtpassword" id="txtpassword"/></td>
	</tr>
	<tr>
		<td align="right" colspan="2">
			<input type="button" value = "Change" class="input-submit" onclick="changeUsername(document.getElementById('txtcurrentusername').value,
					document.getElementById('txtnewusername').value,document.getElementById('txtpassword').value);"/>
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