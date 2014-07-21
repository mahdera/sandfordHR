<div>
	<table border="1" width="100%">
		<tr style="background:#eee">
			<td>Please select form type:</td>
			<td>
				<select name="slctformtype" id="slctformtype" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Clearance for Admin Staff">Clearance for Admin Staff</option>
					<option value="Departing Employee Checkout Form">Departing Employee Checkout Form</option>
					<option value="Medical Examination Form">Medical Examination Form</option>
					<option value="Resignation Letter Form">Resignation Letter Form</option>										
				</select>
			</td>
		</tr>
	</table>
</div>
<div id="formDetailDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctformtype').change(function(){
			var formType = $(this).val();
			if(formType == "Clearance for Admin Staff"){
				$('#formDetailDiv').load('showclearanceforadminstaff.jsp');
			}else if(formType == "Departing Employee Checkout Form"){
				$('#formDetailDiv').load('showdepartingemployeecheckoutform.jsp');
			}else if(formType == "Medical Examination Form"){
				$('#formDetailDiv').load('showmedicalexaminationform.jsp');
			}else if(formType == "Resignation Letter Form"){
				$('#formDetailDiv').load('showresignationletterform.jsp');
			}else{
				$('#formDetailDiv').html('');
			}
		});
	});//end document.redy function
</script>