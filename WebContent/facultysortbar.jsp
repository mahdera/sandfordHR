<form>
<table border="1" width="100%">
	<tr>
		<td>Sort faculty records by</td>
		<td>
			<select name="slctsortfield" id="slctsortfield" style="width:70%">
				<option value="" selected="selected">--Select--</option>
				<option value="faculty name">Faculty Name</option>				
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
			<input type="button" value="go" onclick="sortFacultyRecord(document.getElementById('slctsortfield').value,
					document.getElementById('slctorder').value);"/>
			<input type="reset" value="Clear"/>
		</td>
	</tr>
</table>
</form>