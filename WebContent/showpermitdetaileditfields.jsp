<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long permitId = Long.parseLong(request.getParameter("permitId"));
	Permit permit = Permit.getPermit(permitId);
%>
<form>
	<table border="1" width="100%" style="background:#eee">
		<tr>
			<td width="50%">Select Employee:</td>
			<td>
				<select name="slctemployee" id="slctemployee" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Employee> employeeList = Employee.getAllEmployeesOfCategory("International");
						Iterator<Employee> employeeItr = employeeList.iterator();
						while(employeeItr.hasNext()){
							Employee employee = employeeItr.next();
							String fullName = employee.getFirstName()+" "+employee.getLastName();
							if(permit.getEmployeeId() == employee.getId()){
							%>
								<option value="<%=employee.getId() %>" selected="selected"><%=fullName %></option>
							<%
							}else{
							%>
								<option value="<%=employee.getId() %>"><%=fullName %></option>
							<%
							}
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Work Permit Number:</td>
			<td>
				<input type="text" name="txtworkpermitnumber" id="txtworkpermitnumber" style="width:50%" value="<%=(permit.getWorkPermitNumber() != null ? permit.getWorkPermitNumber() : "")%>"/>
			</td>
		</tr>
		<tr>
			<td>Work Permit From:</td>
			<td>
				<input type="text" name="txtworkpermitfrom" id="txtworkpermitfrom" value="<%=(permit.getWorkPermitFrom() != null ? permit.getWorkPermitFrom() : "")%>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtworkpermitfrom');" />
			</td>
		</tr>
		<tr>
			<td>Work Permit Up to:</td>
			<td>
				<input type="text" name="txtworkpermitupto" id="txtworkpermitupto" value="<%=(permit.getWorkPermitTo() != null ? permit.getWorkPermitTo() : "") %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtworkpermitupto');" />
			</td>
		</tr>
		<tr>
			<td>Residence Id Number:</td>
			<td>
				<input type="text" name="txtresidenceidnumber" id="txtresidenceidnumber" style="width:50%" value="<%=(permit.getResidenceIdNumber() != null ? permit.getResidenceIdNumber() : "")%>"/>
			</td>
		</tr>
		<tr>
			<td>Residence Permit From:</td>
			<td>
				<input type="text" name="txtresidencepermitfrom" id="txtresidencepermitfrom" value="<%=(permit.getResidencePermitFrom() != null ? permit.getResidencePermitFrom() : "") %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtresidencepermitfrom');" />
			</td>
		</tr>
		<tr>
			<td>Residence Permit Up to:</td>
			<td>
				<input type="text" name="txtresidencepermitupto" id="txtresidencepermitupto" value="<%=(permit.getResidencePermitTo() != null ? permit.getResidencePermitTo() : "") %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtresidencepermitupto');" />
			</td>
		</tr>
		<tr>
			<td>Passport Number:</td>
			<td>
				<input type="text" name="txtpassportnumber" id="txtpassportnumber" style="width:50%" value="<%=(permit.getPassportNumber() != null ? permit.getPassportNumber() : "")%>"/>
			</td>
		</tr>
		<tr>
			<td>Passport Issue Date:</td>
			<td>
				<input type="text" name="txtpassportissuedate" id="txtpassportissuedate" value="<%=(permit.getPassportIssueDate() != null ? permit.getPassportIssueDate() : "")%>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtpassportissuedate');" />
			</td>
		</tr>
		<tr>
			<td>Passport Expiry Date:</td>
			<td>
				<input type="text" name="txtpassportexpirydate" id="txtpassportexpirydate" value="<%=(permit.getPassportExpiryDate() != null ? permit.getPassportExpiryDate() : "")%>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtpassportexpirydate');" />
			</td>
		</tr>
		<tr>
			<td>Dependent:</td>
			<td>
				<input type="text" name="txtdependent" id="txtdependent" style="width:50%" value="<%=(permit.getDependent() != null ? permit.getDependent() : "")%>"/>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Update" class="input-submit" id="btnupdate"/>
				<input type="reset" value="Undo" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnupdate').click(function(){
			var permitId = "<%=permitId%>";
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
			"&passportExpiryDate="+passportExpiryDate+"&dependent="+dependent+"&permitId="+permitId;
			
			$.ajax({
			    url: 'updatepermit.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		var divId = "permitDetailEditDiv" + permitId;	    		
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		});//end save function
	});//end document ready function
</script>