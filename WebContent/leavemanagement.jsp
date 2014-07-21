<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<div style="background:#eee">
	<form>
		<table border="1" width="100%">
			<tr>
				<td align="center" colspan="6">
					SANDFORD INTERNATIONAL SCHOOL<br/>
					LEAVE REQUEST FORM
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font> Select Employee:</td>
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
				<td><font color="red">*</font> Date:</td>
				<td>
					<input type="text" style="width:80%" name="txtdate" id="txtdate"/>									
					<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdate');" />
				</td>
				<td><font color="red">*</font> Type of Leave:</td>
				<td>
					<select name="slcttypeofleave" id="slcttypeofleave" style="width:100%">
						<option value="" selected="selected">--Select--</option>
						<%
							List<LeaveType> leaveTypeList = LeaveType.getAllLeaveTypes();
							Iterator<LeaveType> leaveTypeItr = leaveTypeList.iterator();
							while(leaveTypeItr.hasNext()){
								LeaveType leaveType = leaveTypeItr.next();
								%>
								<option value="<%=leaveType.getId() %>"><%="("+leaveType.getLeaveTypeAbbrivation()+") "+ leaveType.getLeaveTypeName() %></option>
								<%
							}//end while loop
						%>
					</select>
				</td>
			</tr>
			<tr>
				<td>Number of Days:</td>
				<td>
					<input type="text" name="txtnumberofdays" id="txtnumberofdays" disabled="disabled"/>
				</td>
				<td>Purpose </td>
				<td colspan="3">
					<textarea name="textareapurpose" id="textareapurpose" rows="3" style="width:100%"></textarea>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font> Date From:</td>
				<td>					
					<input type="text" style="width:80%" name="txtdatefrom" id="txtdatefrom"/>									
					<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdatefrom','yyyyMMdd','dropdown',true,'12',true);" />
				</td>
				<td colspan="2"></td>
				<td><font color="red">*</font> Date To:</td>
				<td>					
					<input type="text" style="width:80%" name="txtdateto" id="txtdateto"/>									
					<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateto','yyyyMMdd','dropdown',true,'12',true);" />
				</td>
			</tr>
			<tr>
				<td colspan="6" align="right">
					<input type="button" value="Validate" class="input-submit" id="btnvalidate"/>
					<input type="button" value="Save" class="input-submit" id="btnsave"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<table border="1" width="100%">
						<tr>
							<td rowspan="2" colspan="1">NO OF DAYS</td>
							<td colspan="4" align="center">TYPE OF LEAVE</td>
						</tr>
						<tr>
							<td align="center">ANNUAL</td>
							<td align="center">SICK</td>
							<td align="center">MATERNITY</td>
							<td align="center">OTHER</td>							
						</tr>
						<tr>
							<td>AVAILABLE</td>
							<td><div id="annualAvailableDiv"></div></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>REQUESTED</td>
							<td><div id="annualRequestedDiv"></div></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>REMAINING</td>
							<td><div id="annualRemainingDiv"></div></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
	<div id="errorDiv"></div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#btnsave').attr("disabled", "disabled");
		
		$('#btnsave').click(function(){
			var employeeId = $('#slctemployee').val();
			var leaveRequestDate = $('#txtdate').val();
			var leaveType = $('#slcttypeofleave').val();
			var numberOfDays = $('#txtnumberofdays').val();
			var purpose = $('#textareapurpose').val();
			var dateFrom = $('#txtdatefrom').val();
			var dateTo = $('#txtdateto').val();
			var remaining = $('#annualRemainingDiv').html();
			
			var dataString = "employeeId="+employeeId+"&leaveRequestDate="+
			leaveRequestDate+"&leaveType="+leaveType+"&numberOfDays="+numberOfDays+
			"&purpose="+purpose+"&dateFrom="+dateFrom+"&dateTo="+dateTo+
			"&remaining="+remaining;
			
			if(employeeId != "" && leaveRequestDate != "" && leaveType != "" && dateFrom != "" &&
					dateTo != ""){			
				$.ajax({
				    url: 'saveleaverequest.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		alert(response);
				    		$('#leaveRequestDetailDiv').load('leavemanagement.jsp');			    		
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing Data! Please enter all the required data fields!</p>");
			}
		});//end button.save function
		
		$('#btnvalidate').click(function(){		
			var dateFromStr = $('#txtdatefrom').val();
			var dateToStr = $('#txtdateto').val();						
			var bits = dateFromStr.split(/\D/);
			var fromYear = bits[0];
			var fromMonth = bits[1];
			var fromDate = bits[2];			
			var bits2 = dateToStr.split(/\D/);
			var toYear = bits2[0];
			var toMonth = bits2[1];
			var toDate = bits2[2];
			
			var oneMonth = 30;//oneMonth == 30 days...
			if(fromYear == toYear){
				if(toMonth == fromMonth && toDate == fromDate){
					//half day type leave request
					$('#txtnumberofdays').val('0.5');
					$('#annualRequestedDiv').html('0.5');
					var available = $('#annualAvailableDiv').html();
					var requested = $('#annualRequestedDiv').html();
					var remaining = available - requested;
					$('#annualRemainingDiv').html(remaining);
					if(remaining < 0){
						$('#btnsave').attr("disabled", "disabled");
						$('#errorDiv').html('<p class="msg error">Number of days requested can not be greater than number of days available!</p>');
					}else{
						$('#btnsave').removeAttr("disabled");
						$('#errorDiv').html('');
					}
				}else{
					var monthDiff = toMonth - fromMonth;
					var dateDiff = toDate - fromDate;
					var totalDays = (oneMonth * monthDiff) + dateDiff;
					$('#txtnumberofdays').val(totalDays);
					$('#annualRequestedDiv').html(totalDays);
					var available = $('#annualAvailableDiv').html();
					var requested = $('#annualRequestedDiv').html();
					var remaining = available - requested;
					$('#annualRemainingDiv').html(remaining);
					if(remaining < 0){
						$('#btnsave').attr("disabled", "disabled");
						$('#errorDiv').html('<p class="msg error">Number of days requested can not be greater than number of days available!</p>');
					}else{
						$('#btnsave').removeAttr("disabled");
						$('#errorDiv').html('');
					}
				}
			}else{
				$('#errorDiv').html("<p class='msg error'>Invalid leave request date range!</p>");
			}
		});//end input.blur function
		
		$('#slctemployee').change(function(){
			//now get the leave status detail and set it to the leave form...
			var employeeId = $(this).val();
			if(employeeId != ""){
				$('#annualAvailableDiv').load('getavailableleaveforemployee.jsp?employeeId='+employeeId);
			}
		});
		
	});//end document.ready function
</script>
