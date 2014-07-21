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
	<table border="1" width="100%" style="background:#eeeeee">
		<tr>
			<td align="right"><font color="red">*</font> Full Name:</td>
			<td>
				<input type="text" name="txtfullname" id="txtfullname"/>
			</td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> User Type:</td>
			<td>
				<select name="slctusertype" id="slctusertype">
					<option value="" selected="selected">--Select--</option>
					<option value="Administrator">Administrator</option>
					<option value="Data Clerk">Data Clerk</option>					
				</select>
			</td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> Username:</td>
			<td>
				<input type="text" name="txtusername" id="txtusername"/>
			</td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> Password:</td>
			<td>
				<input type="password" name="txtpassword" id="txtpassword"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Save" class="input-submit"
				onclick="saveUser(document.getElementById('txtfullname').value,
						document.getElementById('slctusertype').value,
						document.getElementById('txtusername').value,
						document.getElementById('txtpassword').value);"/>						
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<p class="msg info">N.B. Fields indicated with <font color="red">*</font> are required!</p>
			</td>
		</tr>
	</table>
	<%
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}	
%>
<div id="errorDiv"></div>
</form>