<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isWritable()){
%>
<form style="background:#eeeeee">
	<table border="0" width="100%">
		<tr>
			<td align="right">Job Title:</td>
			<td><input type="text" name="txtjobtitle" id="txtjobtitle" value="---"/></td>
		</tr>		
		<tr>
			<td align="right">Job Classification:</td>
			<td><input type="text" name="txtjobclassification" id="txtjobclassification" value="---"/></td>
		</tr>
		<tr>
			<td align="right">Job Classification Number:</td>
			<td><input type="text" name="txtjobclassificationnumber" id="txtjobclassificationnumber" value="---"/></td>
		</tr>
		<tr>
			<td align="right" style="vertical-align:middle">Job Description:</td>
			<td>
				<textarea class="jqte-test" name="textareajobdescription" id="textareajobdescription" cols="100" rows="4">---</textarea>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Add" class="input-submit" id="btnsave"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div id="jobErrorDiv"></div>
			</td>
		</tr>
	</table>
</form>
<%
	}
	else{	
%>
	<p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%>
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
			var jobClassification = $('#txtjobclassification').val();
			var jobClassificationNumber = $('#txtjobclassificationnumber').val();
			var jobDescription = $('#textareajobdescription').val();
			
			var dataString = "jobTitle="+jobTitle+"&jobClassification="+jobClassification+
			"&jobClassificationNumber="+jobClassificationNumber+"&jobDescription="+jobDescription;
			
			$.ajax({
			    url: 'savejob.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){			    		
			    		$('#subTabDetailDiv').load('showaddjobform.jsp');					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		});//end button.save function
	});//end document.ready function
</script>