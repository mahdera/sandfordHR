<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "roleManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isReadable() && role.isWritable() && role.isUpdateable() && role.isDeletable())
	{
	%>	
		<table border="0" width="100%">
		<tr>
			<th class="full" colspan="2">Role creation form</th>
		</tr>
		<tr>			
			<td colspan="1">
				Please select a user:
				<%
					//show all employees ordered by there first and last name for selection
					List<User> userList = User.getAllUsers();
					Iterator<User> userItr = userList.iterator();
					out.print("<select name='slctuser' id='slctuser' onchange='showRoleForUser(this.value);' style='width:50%'>");
					out.print("<option value='' selected='selected'>--Select--</option>");
					while (userItr.hasNext()) {
						User user = userItr.next();						
						int userId = user.getId();
						Account acct = Account.getAccountForUser(userId);						
				%>
				<option value="<%=userId%>"><%=User.getUser(userId).getFullName() %></option> <%
 	}//end while loop
 	out.print("</select>");
 %>
				<hr />
				<div id="roleDetailForEmployee"></div>
			</td>
		</tr>
	</table>
	<%
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
	%>
</div>