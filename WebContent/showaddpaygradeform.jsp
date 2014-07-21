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
			<td align="right">Code:</td>
			<td><input type="text" name="txtcode" id="txtcode"/></td>
		</tr>		
		<tr>
			<td align="right">Name:</td>
			<td><input type="text" name="txtname" id="txtname"/></td>
		</tr>
		<tr>
			<td align="right">Minimum Salary:</td>
			<td><input type="text" name="txtminimumsalary" id="txtminimumsalary"/></td>
		</tr>
		<tr>
			<td align="right">Maximum Salary:</td>
			<td>
				<input type="text" name="txtmaximumsalary" id="txtmaximumsalary"/>
			</td>
		</tr>
		<tr>
			<td align="right">Step Increase</td>
			<td>
				<input type="text" name="txtstepincrease" id="txtstepincrease"/>
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
			var code = $('#txtcode').val();
			var name = $('#txtname').val();
			var minimumSalary = $('#txtminimumsalary').val();
			var maximumSalary = $('#txtmaximumsalary').val();
			var stepIncrease = $('#txtstepincrease').val();
			
			if(code != "" && name != "" && minimumSalary != "" && maximumSalary != "" && stepIncrease != ""){
				var dataString = "code="+code+"&name="+name+"&minimumSalary="+minimumSalary+
				"&maximumSalary="+maximumSalary+"&stepIncrease="+stepIncrease;
				
				$.ajax({
				    url: 'savepaygrade.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){			    		
				    		$('#subTabDetailDiv').load('showaddpaygradeform.jsp');			
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}
		});
	});//end document.ready function
</script>