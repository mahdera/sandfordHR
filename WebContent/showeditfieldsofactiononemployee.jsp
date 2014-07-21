<%@page import="com.empadmin.server.classes.*" %>
<%
	long actionId = Long.parseLong(request.getParameter("actionId"));
	ActionOnEmployee aEmp = ActionOnEmployee.getActionOnEmployee(actionId);
%>
<form>
	<fieldset>
		<legend>7. Edit Actions on Employee</legend>
		<table border="1" width="100%">
			<tr>
				<td colspan="4">Promotion/Demotion or Disiplinary actions on
					employee with in the last two years:</td>
			</tr>
			<tr>				
				<td>
				<input type="text" name="txteditactiontaken" id="txteditactiontaken" value="<%=aEmp.getActionTaken() %>"/><br/>
				Action<br /> <font color="red">* </font> <select
					name="slcteditactiontaken" id="slcteditactiontaken" onchange="changeExistingActionTakenOnEmployee(this.value);">
						<option value="" selected="selected">--Select--</option>
						<option value="Demotion">Demotion</option>
						<option value="Promotion">Promotion</option>
						<option value="Displinary Measure">Displinary Measure</option>
				</select></td>
				<td>Date of Action:<br />
				<font color="red">* </font> <input type="text"
					name="txteditdateofaction" id="txteditdateofaction" size="12" value="<%=aEmp.getDateOfAction() %>" /> <img
					src="sample/images/cal.gif"
					onclick="javascript:NewCssCal('txteditdateofaction')" /></td>
				<td>Description:<br /> <textarea name="textareaeditdescription"
						id="textareaeditdescription" cols="60" rows="4"><%=aEmp.getDescription() %></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="right">
					<input type="button" value="Update" class="input-submit"
					onclick="updateActionTakenOnEmployee(<%=actionId%>,
					document.getElementById('txteditactiontaken').value,
					document.getElementById('txteditdateofaction').value,
					document.getElementById('textareaeditdescription').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>