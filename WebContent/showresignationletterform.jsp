<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%" style="background:#eee">
		<tr>
			<td width="30%" align="right"><font color="red">*</font>Please Select Employee:</td>
			<td>
				<select name="slctemployee" id="slctemployee" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Employee> employeeList = Employee.getAllEmployees();
						Iterator<Employee> employeeItr = employeeList.iterator();
						while(employeeItr.hasNext()){
							Employee employee = employeeItr.next();
							String fullName = employee.getFirstName()+" "+employee.getLastName();
							%>
								<option value="<%=employee.getId() %>"><%=fullName %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td width="30%" align="right"><font color="red">*</font>Date of Submission of Resignation Letter:</td>
			<td>
				<input type="text" name="txtresignationletterdate" id="txtresignationletterdate"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtresignationletterdate');"/>
			</td>
		</tr>
		<tr>
			<td align="right" style="vertical-align:middle">Description</td>
			<td>
				<textarea class="jqte-test" name="textareadescription" id="textareadescription" rows="4" style="width:100%"></textarea>
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
	<div id="errorDiv"></div>
</form>
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
		
		$('#btnsave').click(function(){
			var employeeId = $('#slctemployee').val();
			var letterDate = $('#txtresignationletterdate').val();
			var description = $('#textareadescription').val();
			var dataString = "&employeeId="+employeeId+"&letterDate="+letterDate+
			"&description="+description;
			if(employeeId != "" && letterDate != ""){
				$.ajax({
				    url: 'saveresignationletter.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		alert(response);
				    		$('#formDetailDiv').load('showresignationletterform.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing Data! Please enter all required data fields!</p>");
			}
			
		});//end button.click function
	});//end document.ready function
</script>