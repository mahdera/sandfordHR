<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Select the salary range:</h5>
			</td>
			<td width="60%">
				<select name='slctsalaryrange' id='slctsalaryrange' style='width:70%'>
					<option value="" selected="selected">--Select--</option>
					<option value="between 500 and 1000">between 500 and 1000</option>
					<option value="between 1001 and 1500">between 1001 and 1500</option>
					<option value="between 1001 and 1500">between 1501 and 2000</option>
					<option value="between 2001 and 2500">between 2001 and 2500</option>
					<option value="between 2501 and 3000">between 2501 and 3000</option>
					<option value="> 3000">above 3000</option>
				</select>
			</td>
			<td>
				<input type="button" value="go" onclick="showEmployeesWithThisSalaryRang(document.getElementById('slctsalaryrange').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>