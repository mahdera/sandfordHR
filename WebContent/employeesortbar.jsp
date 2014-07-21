<form>
<table border="1" width="100%">
	<tr>
		<td>Sort employee records by</td>
		<td>
			<select name="slctsortfield" id="slctsortfield" style="width:70%">
				<option value="" selected="selected">--Select--</option>
				<option value="department">Department</option>
				<option value="first name">First Name</option>
				<option value="father name">Father Name</option>				
				<option value="grand father name">Grand Father Name</option>
				<option value="id number">Identification Number</option>
				<option value="type">Type</option>
				<option value="education level">Education Level</option>
				<option value="field of study">Field of Study</option>
				<option value="basic salary">Basic Salary</option>
			</select>
		</td>
		<td>in</td>
		<td>
			<select name="slctorder" id="slctorder" style="width:80%">
				<option value="" selected="selected">--Select--</option>
				<option value="ASC">Ascending</option>
				<option value="DESC">Descending</option>
			</select>
		</td>
		<td>
			<input type="button" value="go" onclick="sortEmployeeRecord(document.getElementById('slctsortfield').value,
					document.getElementById('slctorder').value);"/>
			<input type="reset" value="Clear"/>
		</td>
	</tr>
</table>
</form>