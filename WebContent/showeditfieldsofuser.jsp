<%@page import="com.empadmin.server.classes.*" %>
<%
	int userId = Integer.parseInt(request.getParameter("userId"));
	User u = User.getUser(userId);
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Full Name:</td>
		<td>
			<input type="text" name="txteditfullname" id="txteditfullname" value="<%=u.getFullName() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">User Type:</td>
		<td>
			<input type="text" name="txteditusertype" id="txteditusertype" value="<%=u.getUserType() %>"/><br/>
			<select name="slcteditusertype" id="slcteditusertype" onchange="changeExistingUserType(this.value);">
				<option value="" selected="selected">--Select--</option>
				<option value="Administrator">Administrator</option>
				<option value="Data Clerk">Data Clerk</option>
			</select>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateSystemUser(<%=userId %>,document.getElementById('txteditfullname').value, document.getElementById('txteditusertype').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>