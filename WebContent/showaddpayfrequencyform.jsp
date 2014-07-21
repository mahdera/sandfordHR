<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(true){
%>
<form style="background:#eeeeee">
	<table border="0" width="100%">
		<tr>
			<td align="right">Frequency Name:</td>
			<td>
				<input type="text" name="txtfrequencyname" id="txtfrequencyname" size="30"/>
			</td>
		</tr>		
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Add" class="input-submit" id="btnsave"/>
				<input type="reset" value="Clear" class="input-submit"/>
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
		$('#btnsave').click(function(){
			var frequencyName = $('#txtfrequencyname').val();
			if(frequencyName != ""){
				var dataString = "frequencyName="+frequencyName;
				$.ajax({
				    url: 'savepayfrequency.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){			    		
				    		$('#subTabDetailDiv').load('showaddpayfrequencyform.jsp');			
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}//end if condition...
		});
	});//end document.ready function
</script>