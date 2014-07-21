<div style="background:#eee">
	<table border="0" width="100%">
		<tr>
			<td>Select Employee Type:</td>
			<td>
				<select name="slctemployeetype" id="slctemployeetype" style="width:100%">
					<option value="" selected="selected">--Select--</option>					
					<option value="National Employee">National Employee</option>
				</select>
			</td>
		</tr>
	</table>
</div>
<div id="employeeListDetailDiv"></div>
<script type="text/javascript">
	$('#slctemployeetype').change(function(){
		var selectedEmployeeType = $(this).val();
		if(selectedEmployeeType != ''){
			if(selectedEmployeeType == 'International Employee'){				
				$('#employeeListDetailDiv').load('showinternationalemployeesselectorbar.jsp');
			}else if(selectedEmployeeType == 'National Employee'){
				$('#employeeListDetailDiv').load('shownationalemployeesselectorbarpensionlaw.jsp');
			}
		}else{
			$('#employeeListDetailDiv').html('');
		}
	});
</script>