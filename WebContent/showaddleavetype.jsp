<%@page import="com.empadmin.server.classes.*"%>
<form>	
	<table border="1" width="100%">
		<tr>
			<td width="20%"><font color="red">*</font> Leave Type Abbrivation:</td>
			<td>
				<input type="text" name="txtabbr" id="txtabbr"/>
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font> Leave Type Name:</td>
			<td>
				<input type="text" name="txtleavetypename" id="txtleavetypename"/>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:middle">Description:</td>
			<td>
				<textarea class="jqte-test" name="textareadescription" id="textareadescription" rows="3" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<p class="msg info">N.B. Fields indicated by <font color='red'>*</font> are required!</p>
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
<div id="errorDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('.jqte-test').jqte();			
		// settings of status
		var jqteStatus = true;
		$(".status").click(function()
		{
			jqteStatus = jqteStatus ? false : true;
			$('.jqte-test').jqte({"status" : jqteStatus})
		});
		
		$('#txtabbr').focus();
		$('#btnsave').click(function(){
			var abbr = $('#txtabbr').val();
			var leaveTypeName = $('#txtleavetypename').val();
			var description = $('#textareadescription').val();
			
			if(abbr != "" && leaveTypeName != ""){
				var dataString = "abbr="+abbr+"&leaveTypeName="+leaveTypeName+"&description="+description;
				$.ajax({
				    url: 'saveleavetype.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		alert(response);
				    		$('#leaveTypeDetailDiv').load('showaddleavetype.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing Data! Please enter all the required data fileds!</p>");
			}
		});
	});//end document.ready function
</script>