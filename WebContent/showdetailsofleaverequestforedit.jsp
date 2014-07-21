<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%
	long leaveRequestId = Long.parseLong(request.getParameter("leaveRequestId"));
	LeaveRequest leaveRequest = LeaveRequest.getLeaveRequest(leaveRequestId);
	long employeeId = leaveRequest.getEmployeeId();
	//define the control names in here...
	String employeeIdControlName = "slctemployee" + leaveRequestId;
	String leaveRequestDateControlName = "txtdate" + leaveRequestId;
	String leaveTypeIdControlName = "slcttypeofleave" + leaveRequestId;
	String numberOfDaysControlName = "txtnumberofdays" + leaveRequestId;
	String oldNumberOfDaysControlName = "hiddennumberofdays" + leaveRequestId;
	String purposeControlName = "textareapurpose" + leaveRequestId;
	String dateFromControlName = "txtdatefrom" + leaveRequestId;
	String dateToControlName = "txtdateto" + leaveRequestId;
%>
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
				<td>Select Employee:</td>
				<td>
					<select name="<%=employeeIdControlName %>" id="<%=employeeIdControlName %>" style="width:100%" disabled="disabled">
						<option value="" selected="selected">--Select--</option>
						<%
							List<Employee> employeeList = Employee.getAllEmployees();
							Iterator<Employee> employeeItr = employeeList.iterator();
							while(employeeItr.hasNext()){
								Employee employee = employeeItr.next();
								String fullName = employee.getFirstName()+" "+employee.getLastName();
								if(leaveRequest.getEmployeeId() == employee.getId()){
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
				<td>Date:</td>
				<td>
					<input type="text" style="width:80%" name="<%=leaveRequestDateControlName %>" id="<%=leaveRequestDateControlName %>" value="<%=leaveRequest.getLeaveRequestDate() %>"/>									
					<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=leaveRequestDateControlName %>');" />
				</td>
				<td>Type of Leave:</td>
				<td>
					<select name="<%=leaveTypeIdControlName %>" id="<%=leaveTypeIdControlName %>" style="width:100%">
						<option value="" selected="selected">--Select--</option>
						<%
							List<LeaveType> leaveTypeList = LeaveType.getAllLeaveTypes();
							Iterator<LeaveType> leaveTypeItr = leaveTypeList.iterator();
							while(leaveTypeItr.hasNext()){
								LeaveType leaveType = leaveTypeItr.next();
								if(leaveRequest.getLeaveTypeId() == leaveType.getId()){
								%>
									<option value="<%=leaveType.getId() %>" selected="selected"><%="("+leaveType.getLeaveTypeAbbrivation()+") "+ leaveType.getLeaveTypeName() %></option>
								<%
								}else{
								%>
									<option value="<%=leaveType.getId() %>"><%="("+leaveType.getLeaveTypeAbbrivation()+") "+ leaveType.getLeaveTypeName() %></option>
								<%
								}
							}//end while loop
						%>
					</select>
				</td>
			</tr>
			<tr>
				<td>Number of Days:</td>
				<td>
					<input type="text" name="<%=numberOfDaysControlName %>" id="<%=numberOfDaysControlName %>" value="<%=leaveRequest.getNumberOfDays() %>" disabled="disabled"/>
					<input type="hidden" name="<%=oldNumberOfDaysControlName %>" id="<%=oldNumberOfDaysControlName %>" value="<%=leaveRequest.getNumberOfDays() %>"/>
				</td>
				<td>Purpose </td>
				<td colspan="3">
					<textarea name="<%=purposeControlName %>" id="<%=purposeControlName %>" rows="3" style="width:100%"><%=leaveRequest.getPurpose() %></textarea>
				</td>
			</tr>
			<tr>
				<td>Date From:</td>
				<td>
					<%
						//SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aaa");
					%>
					<input type="text" style="width:80%" name="<%=dateFromControlName %>" id="<%=dateFromControlName %>" value="<%=String.valueOf(leaveRequest.getDateFrom()) %>"/>					
					<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=dateFromControlName %>','yyyyMMdd','dropdown',true,'12',true);" /> 
				</td>
				<td colspan="2"></td>
				<td>Date To:</td>
				<td>
					<input type="text" style="width:80%" name="<%=dateToControlName %>" id="<%=dateToControlName %>" value="<%=String.valueOf(leaveRequest.getDateTo()) %>"/>									
					<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=dateToControlName %>','yyyyMMdd','dropdown',true,'12',true);" />
				</td>
			</tr>
			<tr>
				<td colspan="6" align="right">
					<%
						String buttonId = "btnupdate" + leaveRequestId;
						String buttonValidateId = "btnvalidate" + leaveRequestId;
					%>
					<input type="button" value="Validate" class="input-submit" id="<%=buttonValidateId%>"/>
					<input type="button" value="Update" class="input-submit" id="<%=buttonId %>"/>
					<input type="reset" value="Undo" class="input-submit"/>
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
						<%
							String availableDivId = "annualAvailableDiv" + leaveRequestId;
							String requestedDivId = "annualRequestedDiv" + leaveRequestId;
							String remainingDivId = "annualRemainingDiv" + leaveRequestId;
						%>
						<tr>
							<td>AVAILABLE</td>
							<td><div id="<%=availableDivId%>"></div></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>REQUESTED</td>
							<td><div id="<%=requestedDivId%>"></div></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>REMAINING</td>
							<td><div id="<%=remainingDivId%>"></div></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){		
		var leaveRequestId = "<%=leaveRequestId%>";
		var employeeId = "<%=employeeId%>";
		$('#annualAvailableDiv'+leaveRequestId).load('getavailableleaveforemployee.jsp?employeeId='+employeeId);
		
		var buttonId = "btnupdate" + leaveRequestId;
		$('#'+buttonId).attr('disabled','disabled');
		var buttonValidateId = "btnvalidate" + leaveRequestId;
		
		$('#'+buttonValidateId).click(function(){		
			var leaveRequestId = "<%=leaveRequestId%>";
			var dateFromControlName = "txtdatefrom" + leaveRequestId;
			var dateToControlName = "txtdateto" + leaveRequestId;
			var dateFromStr = $('#'+dateFromControlName).val();
			var dateToStr = $('#'+dateToControlName).val();						
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
					$('#txtnumberofdays'+leaveRequestId).val('0.5');
					$('#annualRequestedDiv'+leaveRequestId).html('0.5');
					var available = $('#annualAvailableDiv'+leaveRequestId).html();
					var requested = $('#annualRequestedDiv'+leaveRequestId).html();
					var remaining = available - requested;
					$('#annualRemainingDiv'+leaveRequestId).html(remaining);
					if(remaining < 0){
						$('#btnupdate'+leaveRequestId).attr("disabled", "disabled");
						$('#errorDiv'+leaveRequestId).html('<p class="msg error">Number of days requested can not be greater than number of days available!</p>');
					}else{
						$('#btnupdate'+leaveRequestId).removeAttr("disabled");
						$('#errorDiv'+leaveRequestId).html('');
					}
				}else{
					var monthDiff = toMonth - fromMonth;
					var dateDiff = toDate - fromDate;
					var totalDays = (oneMonth * monthDiff) + dateDiff;
					$('#txtnumberofdays'+leaveRequestId).val(totalDays);
					$('#annualRequestedDiv'+leaveRequestId).html(totalDays);
					var available = $('#annualAvailableDiv'+leaveRequestId).html();
					var requested = $('#annualRequestedDiv'+leaveRequestId).html();
					var remaining = available - requested;
					$('#annualRemainingDiv'+leaveRequestId).html(remaining);
					if(remaining < 0){
						$('#btnupdate'+leaveRequestId).attr("disabled", "disabled");
						$('#errorDiv'+leaveRequestId).html('<p class="msg error">Number of days requested can not be greater than number of days available!</p>');
					}else{
						$('#btnupdate'+leaveRequestId).removeAttr("disabled");
						$('#errorDiv'+leaveRequestId).html('');
					}
				}
			}else{
				$('#errorDiv'+leaveRequestId).html("<p class='msg error'>Invalid leave request date range!</p>");
			}
		});
		
		$('.input-submit').click(function(){
			var buttonVal = $(this).val();
			if(buttonVal == "Update"){
				var leaveRequestId = "<%=leaveRequestId%>";
				var employeeId = $('#slctemployee' + leaveRequestId).val();
				var leaveRequestDate = $('#txtdate' + leaveRequestId).val();
				var leaveType = $('#slcttypeofleave' + leaveRequestId).val();
				var numberOfDays = $('#txtnumberofdays' + leaveRequestId).val();
				var purpose = $('#textareapurpose' + leaveRequestId).val();
				var dateFrom = $('#txtdatefrom' + leaveRequestId).val();
				var dateTo = $('#txtdateto' + leaveRequestId).val();
				var oldRequest = $('#hiddennumberofdays' + leaveRequestId).val();
				var newRequest = $('#txtnumberofdays' + leaveRequestId).val();
				var result = Math.abs(oldRequest - newRequest);
				var available = $('#annualAvailableDiv'+leaveRequestId).html();
				var newBalance = (parseFloat(available) + parseFloat(result));
				
				var dataString = "employeeId="+employeeId+"&leaveRequestDate="+
				leaveRequestDate+"&leaveType="+leaveType+"&numberOfDays="+numberOfDays+
				"&purpose="+purpose+"&dateFrom="+dateFrom+"&dateTo="+dateTo+
				"&leaveRequestId="+leaveRequestId+"&newBalance="+newBalance;
				
				alert(dataString);
				
				$.ajax({
				    url: 'updateleaverequest.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		var divId = "leaveRequestDetailDiv" + leaveRequestId;
				    		$('#'+divId).html(response);					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}//end button val if condition
		});//end button.save function
	});//end document.ready function
</script>
