<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<fieldset>
	<legend>Register Division</legend>
	<%
		//Account account = (Account) session.getAttribute("account");
		String functionalityName = "fisManagement";
		//Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
		//Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
		if (true) {
	%>
	<form style="background:#eeeeee">
		<table border='1' width='100%'>
			<tr>
				<td align="center">Organization</td>
				<td>
					<%
						List<College> collegeList = College.getAllColleges();
							Iterator<College> collegeItr = collegeList.iterator();
							out.print("<select name='slctcollege' id='slctcollege' style='width:30%'>");
							
							while (collegeItr.hasNext()) {
								College college = collegeItr.next();
					%>
					<option value="<%=college.getId()%>" selected="selected"
						title="<%=college.getCollegeDescription()%>"><%=college.getCollegeCode()%>:
						<%=college.getCollegeName()%></option> <%
 	}//end while loop
 		out.print("</select>");
 %>
				</td>
			</tr>
			<tr>
				<td align="center">Division Code:</td>
				<td><input type="text" size="40" name="txtfiscode"
					id="txtfiscode" class="input-text" /></td>
			</tr>
			<tr>
				<td align="center">Division Name:</td>
				<td><input type="text" size="40" name="txtfisname"
					id="txtfisname" class="input-text" /></td>
			</tr>
			<tr>
				<td align="center">Division Description:</td>
				<td><textarea name="textareafisdescription"
						id="textareafisdescription" cols="100" rows="4"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" class="t-right"><input type="button"
					value="Save"
					onclick="saveFIS(document.getElementById('txtfiscode').value,document.getElementById('txtfisname').value,document.getElementById('slctcollege').value,
							document.getElementById('textareafisdescription').value);"
					class="input-submit" /> <input type="reset" value="Clear"
					class="input-submit" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<div id="facultySaveDiv"></div>
				</td>
			</tr>
		</table>
	</form>
	<%
		} else {
			out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
		}
	%>
</fieldset>