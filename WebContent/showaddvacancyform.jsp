<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<form style="background:#eeeeee">
	<table border="0" width="100%">
		<tr>
			<td align="right" width="30%"><font color="red">*</font> Job Title:</td>
			<td>
				<input type="text" name="txtjobtitle" id="txtjobtitle"/>
			</td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> Vacancy Name:</td>
			<td>
				<input type="text" name="txtvacancyname" id="txtvacancyname"/>
			</td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> Location:</td>
			<td>
				<input type="text" name="txtlocation" id="txtlocation"/>				
			</td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> Sub Unit:</td>
			<td>
				<input type="text" name="txtsubunit" id="txtsubunit"/>
			</td>
		</tr>
		<tr>
			<td align="right">Hiring Manager:</td>
			<td>
				<input type="text" name="txthiringmanager" id="txthiringmanager"/>
			</td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> Number of Positions:</td>
			<td>
				<input type="text" name="txtnumberofpositions" id="txtnumberofpositions"/>
			</td>
		</tr>
		<tr>
			<td align="right" style="vertical-align:middle">Description:</td>
			<td>
				<textarea class="jqte-test" name="textareadescription" id="textareadescription" rows="10" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Save" class="input-submit" id="btnsave"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<p class="msg info">N.B. Fields indicated with <font color="red">*</font> are required!</p>
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
		
		$('#txtjobtitle').focus();
		$('#btnsave').click(function(){
			var jobTitle = $('#txtjobtitle').val();
			var vacancyName = $('#txtvacancyname').val();
			var location = $('#txtlocation').val();
			var subUnit = $('#txtsubunit').val();
			var hiringManager = $('#txthiringmanager').val();
			var numberOfPositions = $('#txtnumberofpositions').val();
			var description = $('#textareadescription').val();
			
			var dataString = "jobTitle="+jobTitle+"&vacancyName="+vacancyName+
			"&location="+location+"&subUnit="+subUnit+"&hiringManager="+hiringManager+
			"&numberOfPositions="+numberOfPositions+"&description="+description;
			
			if(jobTitle != "" && vacancyName != "" && location != "" &&
					subUnit != "" && numberOfPositions != ""){
				$.ajax({
				    url: 'savevacancy.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		alert(response);
				    		$('#tabDetailDiv').load('showaddvacancyform.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing Data! Please enter all the required data fields!</p>");
			}
		});
	});//end document.ready function
</script>