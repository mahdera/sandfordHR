<table border="0" width="100%">
	<tr>
		<td width="40%">How many previous post forms do you want to add?</td>
		<td width="50%">
			<input type="text" name="txthowmany" id="txthowmany" style="width:98%"/>
		</td>
		<td style="text-align:left">
			<input type="button" value="Show previous post forms" id="showPreviousPostForms"/>
		</td>
	</tr>
</table>
<script type="text/javascript">
$(document).ready(function(){
	$('#txthowmany').focus();
	
	$('#showPreviousPostForms').click(function(){
		var howMany = $('#txthowmany').val();		
		if(howMany != ""){
			$('#addedPreviousPostDiv').load('showthismuchpreviouspostentryforms.jsp?howMany='+howMany);
		}
	});
});
</script>