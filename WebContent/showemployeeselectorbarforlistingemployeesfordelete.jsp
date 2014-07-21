<div style="background:#eee">
	<table border="1" width="100%">
		<tr>
			<td>	Please select employee type</td>
			<td>
				<select name="slctemployeetypedropdownforedit" id="slctemployeetypedropdownforedit" style="width:100%">
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
	$('#slctemployeetypedropdownforedit').change(function(){
		var selectedEmployeeType = $(this).val();
		if(selectedEmployeeType != ''){
			if(selectedEmployeeType == 'International Employee'){
				$('#employeeListDetailDiv').load('showlistofinternationalemployeesfordelete.jsp');
			}else if(selectedEmployeeType == 'National Employee'){
				$('#employeeListDetailDiv').load('showlistofnationalemployeesfordelete.jsp');
			}
		}else{
			$('#employeeListDetailDiv').html('');
		}
	});
</script>
