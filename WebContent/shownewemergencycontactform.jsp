<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
%>
<form style="background:#eeeeee">
	<fieldset>
		<legend>8. Add New Emergency Contact</legend>
		<table border="1" width="100%">
			<tr>
				<td>
					First Name:<br/>
					<input type="text" name="txtnewemergencycontactfirstname" id="txtnewemergencycontactfirstname"/>
				</td>
				<td>
					Father Name:<br/>
					<input type="text" name="txtnewemergencycontactfathername" id="txtnewemergencycontactfathername"/>
				</td>
				<td>
					Relationship:<br/>
					<input type="text" name="txtnewemergencycontactrelationship" id="txtnewemergencycontactrelationship"/>
				</td>
			</tr>
			<tr>
				<td>				
					Home Telephone:<br/>
					<input type="text" name="txtnewemergencycontacthometelephone" id="txtnewemergencycontacthometelephone"/>
				</td>
				<td>Mobile:<br /> <input type="text" name="txtnewemergencycontactmobile"
					id="txtnewemergencycontactmobile" /></td>
				<td>Work Telephone:<br /> <input type="text" name="txtnewemergencycontactworktelephone"
					id="txtnewemergencycontactworktelephone" /></td>
			</tr>
			<tr>
				<td colspan="3" align="right">
					<input type="button" value="Save" class="input-submit"
					onclick="saveNewEmergencyContact(<%=empRecId%>,document.getElementById('txtnewemergencycontactfirstname').value,
					document.getElementById('txtnewemergencycontactfathername').value,
					document.getElementById('txtnewemergencycontactrelationship').value,
					document.getElementById('txtnewemergencycontacthometelephone').value,
					document.getElementById('txtnewemergencycontactmobile').value,
					document.getElementById('txtnewemergencycontactworktelephone').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>