<div style="background:#eee">
	<table border="1" width="100%">
		<tr>
			<td>	Please select employee type</td>
			<td>
				<select name="slctemployeetypedropdownforsalarymanagement" id="slctemployeetypedropdownforsalarymanagement" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="International Employee">International Employee</option>
					<option value="National Employee">National Employee</option>
				</select>
			</td>
		</tr>
	</table>
</div>
<div id="employeeListDiv"></div>
<div id="employeeListDetailDiv"></div>
<script type="text/javascript">
$(document).ready(function(){
	$('#slctemployeetypedropdownforsalarymanagement').change(function(){
		var selectedEmployeeType = $(this).val();
		if(selectedEmployeeType != ''){
			if(selectedEmployeeType == 'International Employee'){
				$('#employeeListDetailDiv').load('showlistofinternationalemployeesforsalarymanagement.jsp');
			}else if(selectedEmployeeType == 'National Employee'){
				$('#employeeListDetailDiv').load('showlistofnationalemployeesforsalarymanagement.jsp');
			}
		}else{
			$('#employeeListDetailDiv').html('');
		}
	});
});//end document.ready function
</script>
