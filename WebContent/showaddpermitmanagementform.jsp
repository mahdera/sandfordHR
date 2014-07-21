<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<form>
	<table border="1" width="100%" style="background:#eee">
		<tr>
			<td width="30%"><font color="red">*</font>Select Employee:</td>
			<td>
				<select name="slctemployee" id="slctemployee" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Employee> employeeList = Employee.getAllEmployeesOfCategory("International");
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
			<td><font color="red">*</font>Work Permit Number:</td>
			<td>
				<input type="text" name="txtworkpermitnumber" id="txtworkpermitnumber" style="width:50%"/>
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Work Permit From:</td>
			<td>
				<input type="text" name="txtworkpermitfrom" id="txtworkpermitfrom"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtworkpermitfrom');" />
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Work Permit Up to:</td>
			<td>
				<input type="text" name="txtworkpermitupto" id="txtworkpermitupto"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtworkpermitupto');" />
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Residence Id Number:</td>
			<td>
				<input type="text" name="txtresidenceidnumber" id="txtresidenceidnumber" style="width:50%"/>
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Residence Permit From:</td>
			<td>
				<input type="text" name="txtresidencepermitfrom" id="txtresidencepermitfrom"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtresidencepermitfrom');" />
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Residence Permit Up to:</td>
			<td>
				<input type="text" name="txtresidencepermitupto" id="txtresidencepermitupto"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtresidencepermitupto');" />
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Passport Number:</td>
			<td>
				<input type="text" name="txtpassportnumber" id="txtpassportnumber" style="width:50%"/>
			</td>
		</tr>
		<tr>
			<td>Passport Issue Date:</td>
			<td>
				<input type="text" name="txtpassportissuedate" id="txtpassportissuedate"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtpassportissuedate');" />
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Passport Expiry Date:</td>
			<td>
				<input type="text" name="txtpassportexpirydate" id="txtpassportexpirydate"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtpassportexpirydate');" />
			</td>
		</tr>
		<tr>
			<td>Dependent:</td>
			<td>
				<input type="text" name="txtdependent" id="txtdependent" style="width:50%"/>
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
		$('#btnsave').click(function(){
			var employeeId = $('#slctemployee').val();
			var workPermitNumber = $('#txtworkpermitnumber').val();
			var workPermitFrom = $('#txtworkpermitfrom').val();
			var workPermitUpto = $('#txtworkpermitupto').val();
			var residenceIdNumber = $('#txtresidenceidnumber').val();
			var residencePermitFrom = $('#txtresidencepermitfrom').val();
			var residencePermitUpto = $('#txtresidencepermitupto').val();
			var passportNumber = $('#txtpassportnumber').val();
			var passportIssueDate = $('#txtpassportissuedate').val();
			var passportExpiryDate = $('#txtpassportexpirydate').val();
			var dependent = $('#txtdependent').val();
			
			var dataString = "employeeId="+employeeId+"&workPermitNumber="+workPermitNumber+
			"&workPermitFrom="+workPermitFrom+"&workPermitUpto="+workPermitUpto+"&residenceIdNumber="+
			residenceIdNumber+"&residencePermitFrom="+residencePermitFrom+"&residencePermitUpto="+
			residencePermitUpto+"&passportNumber="+passportNumber+"&passportIssueDate="+passportIssueDate+
			"&passportExpiryDate="+passportExpiryDate+"&dependent="+dependent;
			
			if(employeeId != "" && workPermitNumber != "" && workPermitFrom != "" && workPermitUpto != "" &&
					residenceIdNumber != "" && residencePermitFrom != "" && residencePermitUpto != "" &&
					passportNumber != "" && passportExpiryDate != ""){
			
				$.ajax({
				    url: 'savepermit.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		$('#successDiv').html(response);			    		
				    		$('#tabDetailDiv').load('showaddpermitmanagementform.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing Data! Please enter all required data fields!</p>");
			}
		});//end save function
	});//end document ready function
</script>