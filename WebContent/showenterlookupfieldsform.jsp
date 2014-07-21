<%@page import="com.empadmin.server.classes.*"%>
<form>
	<table border="1" width="100%" style="background:#eee">
		<tr>
			<td width="40%">Alert Before (X-months): Work Permit:</td>
			<td>
				<select name="slctworkpermitalert" id="slctworkpermitalert" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="1">One Month</option>
					<option value="2">Two Months</option>
					<option value="3">Three Months</option>
					<option value="4">Four Months</option>
					<option value="5">Five Months</option>
					<option value="6">Six Months</option>
					<option value="7">Seven Months</option>
					<option value="8">Eight Months</option>
					<option value="9">Nine Months</option>
					<option value="10">Ten Months</option>
					<option value="11">Eleven Months</option>
					<option value="12">Twelve Months</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Alert Before (X-months): Residence Permit:</td>
			<td>
				<select name="slctresidencepermitalert" id="slctresidencepermitalert" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="1">One Month</option>
					<option value="2">Two Months</option>
					<option value="3">Three Months</option>
					<option value="4">Four Months</option>
					<option value="5">Five Months</option>
					<option value="6">Six Months</option>
					<option value="7">Seven Months</option>
					<option value="8">Eight Months</option>
					<option value="9">Nine Months</option>
					<option value="10">Ten Months</option>
					<option value="11">Eleven Months</option>
					<option value="12">Twelve Months</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Alert Before (X-months): Passport Expire:</td>
			<td>
				<select name="slctpassportexpiryalert" id="slctpassportexpiryalert" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="1">One Month</option>
					<option value="2">Two Months</option>
					<option value="3">Three Months</option>
					<option value="4">Four Months</option>
					<option value="5">Five Months</option>
					<option value="6">Six Months</option>
					<option value="7">Seven Months</option>
					<option value="8">Eight Months</option>
					<option value="9">Nine Months</option>
					<option value="10">Ten Months</option>
					<option value="11">Eleven Months</option>
					<option value="12">Twelve Months</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Save" class="input-submit" id="btnsave"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnsave').click(function(){
			var workPermitPeriod = $('#slctworkpermitalert').val();
			var residencePermitPeriod = $('#slctresidencepermitalert').val();
			var passportExpiryPeriod = $('#slctpassportexpiryalert').val();
			
			if(workPermitPeriod != "" && residencePermitPeriod != "" && passportExpiryPeriod != ""){
				var dataString = "workPermitPeriod="+workPermitPeriod+"&residencePermitPeriod="+
				residencePermitPeriod+"&passportExpiryPeriod="+passportExpiryPeriod;
				$.ajax({
				    url: 'savepermitalertlookup.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		alert(response);
				    		$('#lookupDetailDiv').load('showenterlookupfieldsform.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}
		});
	});//end document.ready function
</script>