<table border="1" width="100%">
	<tr style="background:#eee">
		<td width="20%">Select Employee Type</td>
		<td>
			<select name="slctemployeetype" id="slctemployeetype" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<option value="International">International</option>
				<option value="National">National</option>
			</select>
		</td>
	</tr>
</table>
<div id="employeeTypeDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctemployeetype').change(function(){
			var employeeType = $(this).val();
			$('#employeeTypeDiv').load('showemployeeprofileemployeeselectbar.jsp?employeeType='+employeeType);
		});
	});//end document.ready function
</script>