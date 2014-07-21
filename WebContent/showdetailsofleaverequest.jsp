<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long leaveRequestId = Long.parseLong(request.getParameter("leaveRequestId"));
	LeaveRequest leaveRequest = LeaveRequest.getLeaveRequest(leaveRequestId);
	long employeeId = leaveRequest.getEmployeeId();
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
					<select name="slctemployee" id="slctemployee" style="width:100%" disabled="disabled">
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
					<input type="text" style="width:80%" name="txtdate" id="txtdate" value="<%=leaveRequest.getLeaveRequestDate() %>" disabled="disabled"/>									
					<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdate');" />
				</td>
				<td>Type of Leave:</td>
				<td>
					<select name="slcttypeofleave" id="slcttypeofleave" style="width:100%" disabled="disabled">
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
					<input type="text" name="txtnumberofdays" id="txtnumberofdays" disabled="disabled" value="<%=leaveRequest.getNumberOfDays() %>"/>
				</td>
				<td>Purpose </td>
				<td colspan="3">
					<textarea name="textareapurpose" id="textareapurpose" rows="3" disabled="disabled" style="width:100%"><%=leaveRequest.getPurpose() %></textarea>
				</td>
			</tr>
			<tr>
				<td>Date From:</td>
				<td>
					<input type="text" style="width:80%" name="txtdatefrom" disabled="disabled" id="txtdatefrom" value="<%=String.valueOf(leaveRequest.getDateFrom()) %>"/>									
					<img src="sample/images/cal.gif"/>
				</td>
				<td colspan="2"></td>
				<td>Date To:</td>
				<td>
					<input type="text" style="width:80%" name="txtdateto" disabled="disabled" id="txtdateto" value="<%=String.valueOf(leaveRequest.getDateTo()) %>"/>									
					<img src="sample/images/cal.gif"/>
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
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>REMAINING</td>
							<td></td>
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
		var employeeId = "<%=employeeId%>";
		$('#annualAvailableDiv').load('getavailableleaveforemployee.jsp?employeeId='+employeeId);
		
		$('#btnsave').click(function(){
			var employeeId = $('#slctemployee').val();
			var leaveRequestDate = $('#txtdate').val();
			var leaveType = $('#slcttypeofleave').val();
			var numberOfDays = $('#txtnumberofdays').val();
			var purpose = $('#textareapurpose').val();
			var dateFrom = $('#txtdatefrom').val();
			var dateTo = $('#txtdateto').val();
			
			var dataString = "employeeId="+employeeId+"&leaveRequestDate="+
			leaveRequestDate+"&leaveType="+leaveType+"&numberOfDays="+numberOfDays+
			"&purpose="+purpose+"&dateFrom="+dateFrom+"&dateTo="+dateTo;
			
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
		});//end button.save function
	});//end document.ready function
</script>
