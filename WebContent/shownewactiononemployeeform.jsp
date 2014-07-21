<%@page import="com.empadmin.server.classes.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));	
%>
<form style="background:#eeeeee">
	<fieldset>
		<legend>7. New Actions on Employee</legend>
		<table border="1" width="100%">
			<tr>
				<td colspan="4">Promotion/Demotion or Disiplinary actions on
					employee with in the last two years:</td>
			</tr>
			<tr>				
				<td>				
				Action<br /> <font color="red">* </font> <select
					name="slctnewactiontaken" id="slctnewactiontaken" >
						<option value="" selected="selected">--Select--</option>
						<option value="Demotion">Demotion</option>
						<option value="Promotion">Promotion</option>
						<option value="Displinary Measure">Displinary Measure</option>
				</select></td>
				<td>Date of Action:<br />
				<font color="red">* </font> <input type="text"
					name="txtnewdateofaction" id="txtnewdateofaction" size="12" /> <img
					src="sample/images/cal.gif"
					onclick="javascript:NewCssCal('txtnewdateofaction')" /></td>
				<td>Description:<br /> <textarea name="textareanewdescription"
						id="textareanewdescription" cols="60" rows="4"></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="right">
					<input type="button" value="Save" class="input-submit"
					onclick="saveNewActionTakenOnEmployee(<%=empRecId%>,
					document.getElementById('slctnewactiontaken').value,
					document.getElementById('txtnewdateofaction').value,
					document.getElementById('textareanewdescription').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>