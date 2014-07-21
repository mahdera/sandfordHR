<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long recruitmentRequestId = Long.parseLong(request.getParameter("recruitmentRequestId"));
	RecruitmentRequest recruitmentRequest = RecruitmentRequest.getRecruitmentRequest(recruitmentRequestId);
	
	//now define the control names for each form variable/control
	String departmentControlName = "slctdepartment" + recruitmentRequestId;
	String requesterTitleControlName = "txtrequestertitle" + recruitmentRequestId;
	String dateOfRequestControlName = "txtdateofrequest" + recruitmentRequestId;
	String desiredHireDateControlName = "txtdesiredhiredate" + recruitmentRequestId;
	String replacementForCheckboxControlName = "chkreplacementfor" + recruitmentRequestId;
	String replacementForTextboxControlName = "txtreplacementfor" + recruitmentRequestId;
	String newPositionCheckboxControlName = "chknewposition" + recruitmentRequestId;
	String newPositionTextboxControlName = "txtnewposition" + recruitmentRequestId;
	String administrativeSupportControlName = "chkadministrative" + recruitmentRequestId;
	String managerialControlName = "chkmanagerial" + recruitmentRequestId;
	String nonTradesControlName = "chknontrades" + recruitmentRequestId;
	String opperationsSupportControlName = "chkoperationssupport" + recruitmentRequestId;
	String professionalControlName = "chkprofessional" + recruitmentRequestId;
	String tradesControlName = "chktrades" + recruitmentRequestId;
	String proposedJobTitleControlName = "txtproposedjobtitle" + recruitmentRequestId;
	String budgetedRateControlName = "txtbudgetedrate" + recruitmentRequestId;
	String numberOfDaysControlName = "txtnumberofdays" + recruitmentRequestId;
	String numberOfWeeksControlName = "txtnumberofweeks" + recruitmentRequestId;
	String numberOfMonthsControlName = "txtnumberofmonths" + recruitmentRequestId;
	String startDateControlName = "txtstartdate" + recruitmentRequestId;
	String endDateControlName = "txtenddate" + recruitmentRequestId;
	String hourlyRateControlName = "txthourlyrate" + recruitmentRequestId;
	String howManyControlName = "txthowmany" + recruitmentRequestId;
	String requiredControlName = "textarearequired" + recruitmentRequestId;
	String desiredControlName = "textareadesired" + recruitmentRequestId;
%>
<form>
	<table border="1" width="100%">
		<tr>
			<td align="center">
				<h4>Recruitment Request Form</h4>
			</td>
		</tr>
		<tr>
			<td>
				<table border="1" width="100%">
					<tr style="background:#eeeeee">
						<td>Department/Unit:</td>
						<%
							int departmentId = recruitmentRequest.getDepartmentId();
						%>
						<td>
							<select name="<%=departmentControlName %>" id="<%=departmentControlName %>" style="width:100%">								
								<%									
									List<Department> departmentList = Department.getAllDepartments();
									Iterator<Department> departmentItr = departmentList.iterator();
									while(departmentItr.hasNext()){
										Department dept = departmentItr.next();
										if(departmentId == dept.getId()){
										%>
											<option value="<%=dept.getId() %>" title="<%=dept.getDepartmentDescription() %>" selected="selected"><%=dept.getDepartmentName() %></option>
										<%
										}else{
										%>
											<option value="<%=dept.getId() %>" title="<%=dept.getDepartmentDescription() %>"><%=dept.getDepartmentName() %></option>
										<%
										}
									}//end while loop
								%>
							</select>							
						</td>
					</tr>
					<tr style="background:#eeeeee">
						<td>Requester and Title:</td>
						<td>
							<input type="text" name="<%=requesterTitleControlName %>" id="<%=requesterTitleControlName %>" value="<%=recruitmentRequest.getRequesterTitle() %>"/>
						</td>
					</tr>
					<tr style="background:#eeeeee">
						<td>Date of Request: <br/><input type="text" name="<%=dateOfRequestControlName %>" id="<%=dateOfRequestControlName %>" value="<%=recruitmentRequest.getRequestDate() %>"/> <img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=dateOfRequestControlName %>')" /></td>
						<td>Desired Hire Date: <br/><input type="text" name="<%=desiredHireDateControlName %>" id="<%=desiredHireDateControlName %>" value="<%=recruitmentRequest.getDesiredHireDate() %>"/> <img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=desiredHireDateControlName %>')" /></td>
					</tr>									
				</table>
			</td>			
		</tr>
		<tr>
			<td align="center">
				POSITION REQUESTED
			</td>
		</tr>
		<tr>
			<td style="background:#000000;color:#ffffff">STAFF(Regular/Full Time)</td>
		</tr>
		<tr style="background:#eeeeee">
			<td style="font-style:italic;">
				(Requires completed Recruitment Request form, Justification to Open a Personnel Requisition Form and organizational chart, with 
				appropriate approvals.) 				
			</td>
		</tr>
		<tr style="background:#eeeeee">
			<td>
				<table border="1" width="100%">
					<tr>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedReplacementFor() != ""){
							%>
									<input type="checkbox" name="<%=replacementForCheckboxControlName %>" id="<%=replacementForCheckboxControlName %>" value="Replacement for" checked="checked"/> Replacement for
							<%
								}else{
							%>
									<input type="checkbox" name="<%=replacementForCheckboxControlName %>" id="<%=replacementForCheckboxControlName %>" value="Replacement for"/> Replacement for
							<%
								}
							%>
						</td>
						<td colspan="5"><input type="text" name="<%=replacementForTextboxControlName %>" id="<%=replacementForTextboxControlName %>" value="<%=(recruitmentRequest.getPositionRequestedReplacementFor() != null ? recruitmentRequest.getPositionRequestedReplacementFor() : "") %>"/></td>						
					</tr>
					<tr>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedNewPosition() != ""){
							%>
									<input type="checkbox" name="<%=newPositionCheckboxControlName %>" id="<%=newPositionCheckboxControlName %>" checked="checked"/> New Position
							<%
								}else{
							%>
									<input type="checkbox" name="<%=newPositionCheckboxControlName %>" id="<%=newPositionCheckboxControlName %>"/> New Position
							<%
								}
							%>
						</td>
						<td colspan="5"><input type="text" name="<%=newPositionTextboxControlName %>" id="<%=newPositionTextboxControlName %>" value="<%=(recruitmentRequest.getPositionRequestedNewPosition() != null ? recruitmentRequest.getPositionRequestedNewPosition() : "") %>"/></td>						
					</tr>
					<tr>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedAdministrative() != ""){
							%>
									<input type="checkbox" name="<%=administrativeSupportControlName %>" id="<%=administrativeSupportControlName %>" value="Administrative/Support" checked="checked"/> Administrative/Support
							<%
								}else{
							%>
									<input type="checkbox" name="<%=administrativeSupportControlName %>" id="<%=administrativeSupportControlName %>" value="Administrative/Support"/> Administrative/Support
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedManagerial() != ""){
							%>
									<input type="checkbox" name="<%=managerialControlName %>" id="<%=managerialControlName %>" value="Managerial" checked="checked"/> Managerial
							<%
								}else{
							%>
									<input type="checkbox" name="<%=managerialControlName %>" id="<%=managerialControlName %>" value="Managerial"/> Managerial
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedNonTrades() != ""){
							%>
									<input type="checkbox" name="<%=nonTradesControlName %>" id="<%=nonTradesControlName %>" value="Non-Trades" checked="checked"/> Non-Trades
							<%
								}else{
							%>
									<input type="checkbox" name="<%=nonTradesControlName %>" id="<%=nonTradesControlName %>" value="Non-Trades"/> Non-Trades
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedOperationsSupport() != ""){
							%>
									<input type="checkbox" name="<%=opperationsSupportControlName %>" id="<%=opperationsSupportControlName %>" value="Operations Support" checked="checked"/> Operations Support
							<%
								}else{
							%>
									<input type="checkbox" name="<%=opperationsSupportControlName %>" id="<%=opperationsSupportControlName %>" value="Operations Support"/> Operations Support
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedProfessional() != ""){
							%>
									<input type="checkbox" name="<%=professionalControlName %>" id="<%=professionalControlName %>" value="Professional" checked="checked"/> Professional
							<%
								}else{
							%>
									<input type="checkbox" name="<%=professionalControlName %>" id="<%=professionalControlName %>" value="Professional"/> Professional
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedTrades() != ""){
							%>
									<input type="checkbox" name="<%=tradesControlName %>" id="<%=tradesControlName %>" value="Trades" checked="checked"/> Trades
							<%
								}else{
							%>
									<input type="checkbox" name="<%=tradesControlName %>" id="<%=tradesControlName %>" value="Trades"/> Trades
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td colspan="3">Proposed Job Title: <input type="text" name="<%=proposedJobTitleControlName %>" id="<%=proposedJobTitleControlName %>" value="<%=(recruitmentRequest.getPositionRequestedProposedJobTitle() != null ? recruitmentRequest.getPositionRequestedProposedJobTitle() : "")%>"/></td>
						<td colspan="3">Budgeted Rate: <input type="text" name="<%=budgetedRateControlName %>" id="<%=budgetedRateControlName %>" value="<%=(recruitmentRequest.getPositionRequestedBudgetedRate() != null ? recruitmentRequest.getPositionRequestedBudgetedRate() : "")%>"/></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr style="background:#000000;color:#ffffff">
			<td>
				TEMPORARY WORKER 				
			</td>
		</tr>
		<tr style="font-style:italic;background:#eeeeee;">
			<td>
				(Requires completed Recruitment Request and Temporary Agency Staffing Project Justification & Approval forms with appropriate 
approvals.)
			</td>
		</tr>
		<tr style="background:#eeeeee">
			<td>
				<table border="1" width="100%">
					<tr>
						<td>Number of Days:<br/><input type="text" size="10" name="<%=numberOfDaysControlName %>" id="<%=numberOfDaysControlName %>" value="<%=(recruitmentRequest.getTemporaryWorkerNumberOfDays() != null ? recruitmentRequest.getTemporaryWorkerNumberOfDays() : "")%>"/></td>
						<td>Number of Weeks:<br/><input type="text" size="10" name="<%=numberOfWeeksControlName %>" id="<%=numberOfWeeksControlName %>" value="<%=(recruitmentRequest.getTemporaryWorkerNumberOfWeeks() != null ? recruitmentRequest.getTemporaryWorkerNumberOfWeeks() : "")%>"/></td>
						<td>Number of Months:<br/><input type="text" size="10" name="<%=numberOfMonthsControlName %>" id="<%=numberOfMonthsControlName %>" value="<%=(recruitmentRequest.getTemporaryWorkerNumberOfMonths() != null ? recruitmentRequest.getTemporaryWorkerNumberOfMonths() : "")%>"/></td>
						<td>Start Date:<br/><input type="text" name="<%=startDateControlName %>" id="<%=startDateControlName %>" size="10" value="<%=(recruitmentRequest.getTemporaryWorkerStartDate() != null ? recruitmentRequest.getTemporaryWorkerStartDate() : "")%>"/><img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=startDateControlName %>')" /></td>
						<td>End Date:<br/><input type="text" name="<%=endDateControlName %>" id="<%=endDateControlName %>" size="10" value="<%=(recruitmentRequest.getTemporaryWorkerEndDate() != null ? recruitmentRequest.getTemporaryWorkerEndDate() : "")%>"/><img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=endDateControlName %>')" /></td>
						<td>Hourly Rate:<br/><input type="text" size="10" name="<%=hourlyRateControlName %>" id="<%=hourlyRateControlName %>" value="<%=(recruitmentRequest.getTemporaryWorkerHourlyRate() != null ? recruitmentRequest.getTemporaryWorkerHourlyRate() : "")%>"/></td>
						<td>How Many?<br/><input type="text" size="10" name="<%=howManyControlName %>" id="<%=howManyControlName %>" value="<%=(recruitmentRequest.getTemporaryWorkerHowMany() != null ? recruitmentRequest.getTemporaryWorkerHowMany() : "")%>"/></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr style="background:#000000;color:#ffffff">
			<td>
				ADDITIONAL INFORMATION 				
			</td>
		</tr>
		<tr style="background:#eeeeee">
			<td>
				List any special skills outside the Job Description:				
			</td>
		</tr>
		<tr style="background:#eeeeee">
			<td>
				<table border="1" width="100%">
					<tr>	
						<td>Required</td>
						<td>Desired</td>
					</tr>
					<tr>
						<td><textarea class="jqte-test" name="<%=requiredControlName %>" id="<%=requiredControlName %>" cols="50" rows="3" style="width:100%"><%=(recruitmentRequest.getAdditionalInformationRequired() != null ? recruitmentRequest.getAdditionalInformationRequired() : "")%></textarea></td>
						<td><textarea class="jqte-test" name="<%=desiredControlName %>" id="<%=desiredControlName %>" cols="50" rows="3" style="width:100%"><%=(recruitmentRequest.getAdditionalInformationDesired() != null ? recruitmentRequest.getAdditionalInformationDesired() : "")%></textarea></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr style="background:#eeeeee">
			<td align="right">
				<input type="button" value="Update" class="input-submit"/>				
				<input type="reset" class="input-submit" value="Undo"/>
			</td>
		</tr>
	</table>
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
		
		$('.input-submit').click(function(){	
			var buttonVal = $(this).val();
			if(buttonVal == "Update"){
				var recruitmentRequestId = "<%=recruitmentRequestId%>";
				var departmentIdControlName = "slctdepartment" + recruitmentRequestId;
				var requesterTitleControlName = "txtrequestertitle" + recruitmentRequestId;
				var requestDateControlName = "txtdateofrequest" + recruitmentRequestId;
				var desiredHireDateControlName = "txtdesiredhiredate" + recruitmentRequestId;
				var positionRequestedReplacementForControlName = "txtreplacementfor" + recruitmentRequestId;
				var positionRequestedNewControlName = "txtnewposition" + recruitmentRequestId;
				var positionRequestedAdministrativeControlName = "chkadministrative" + recruitmentRequestId;
				var positionRequestedManagerialControlName = "chkmanagerial" + recruitmentRequestId;
				var positionRequestedNonTradesControlName = "chknontrades" + recruitmentRequestId;
				var positionRequestedOperationsSupportControlName = "chkoperationssupport" + recruitmentRequestId;
				var positionRequestedProfessionalControlName = "chkprofessional" + recruitmentRequestId;
				var positionRequestedTradesControlName = "chktrades" + recruitmentRequestId;
				var positionRequestedPropsedJobTitleControlName = "txtproposedjobtitle" + recruitmentRequestId;
				var positionRequestedBudgetedRateControlName = "txtbudgetedrate" + recruitmentRequestId;
				var temporaryWorkerNumberOfDaysControlName = "txtnumberofdays" + recruitmentRequestId;
				var temporaryWorkerNumberOfWeeksControlName = "txtnumberofweeks" + recruitmentRequestId;
				var temporaryWorkerNumberOfMonthsControlName = "txtnumberofmonths" + recruitmentRequestId;
				var temporaryWorkerStartDateControlName = "txtstartdate" + recruitmentRequestId;
				var temporaryWorkerEndDateControlName = "txtenddate" + recruitmentRequestId;
				var temporaryWorkerHourlyRateControlName = "txthourlyrate" + recruitmentRequestId;
				var temporaryWorkerHowManyControlName = "txthowmany" + recruitmentRequestId;
				var additionalInformationRequiredControlName = "textarearequired" + recruitmentRequestId;
				var additionalInformationDesiredControlName = "textareadesired" + recruitmentRequestId;
				
				var departmentId = $('#'+departmentIdControlName).val();
				var requesterTitle = $('#'+requesterTitleControlName).val();
				var requestDate = $('#'+requestDateControlName).val();
				var desiredHireDate = $('#'+desiredHireDateControlName).val();
				var positionRequestedReplacementFor = $('#'+positionRequestedReplacementForControlName).val();
				var positionRequestedNew = $('#'+positionRequestedNewControlName).val();
				var positionRequestedAdministrative = "";
				var positionRequestedManagerial = "";
				var positionRequestedNonTrades = "";
				var positionRequestedOperationsSupport = "";
				var positionRequestedProfessional = "";
				var positionRequestedTrades = "";				
				
							
				if($('#'+positionRequestedAdministrativeControlName).is(":checked")){
					positionRequestedAdministrative = $('#chkadministrative').val();
				}
				
				if($('#'+positionRequestedManagerialControlName).is(":checked")){
					positionRequestedManagerial = $('#chkmanagerial').val();
				}
				
				if($('#'+positionRequestedNonTradesControlName).is(":checked")){
					positionRequestedNonTrades = $('#chknontrades').val();
				}
				
				if($('#'+positionRequestedOperationsSupportControlName).is(":checked")){
					positionRequestedOperationsSupport = $('#chkoperationssupport').val();
				}
				
				if($('#'+positionRequestedProfessionalControlName).is(":checked")){
					positionRequestedProfessional = $('#chkprofessional').val();
				}
				
				if($('#'+positionRequestedTradesControlName).is(":checked")){
					positionRequestedTrades = $('#chktrades').val();
				}
				
				var positionRequestedProposedJobTitle = $('#'+positionRequestedPropsedJobTitleControlName).val();
				var positionRequestedBudgetedRate = $('#'+positionRequestedBudgetedRateControlName).val();
				var temporaryWorkerNumberOfDays = $('#'+temporaryWorkerNumberOfDaysControlName).val();
				var temporaryWorkerNumberOfWeeks = $('#'+temporaryWorkerNumberOfWeeksControlName).val();
				var temporaryWorkerNumberOfMonths = $('#'+temporaryWorkerNumberOfMonthsControlName).val();
				var temporaryWorkerStartDate = $('#'+temporaryWorkerStartDateControlName).val();
				var temporaryWorkerEndDate = $('#'+temporaryWorkerEndDateControlName).val();
				var temporaryWorkerHourlyRate = $('#'+temporaryWorkerHourlyRateControlName).val();
				var temporaryWorkerHowMany = $('#'+temporaryWorkerHowManyControlName).val();
				var additionalInformationRequired = $('#'+additionalInformationRequiredControlName).val();
				var additionalInformationDesired = $('#'+additionalInformationDesiredControlName).val();
				
				
				
				var stringValues = "departmentId="+departmentId+"&requesterTitle="+requesterTitle+
				"&requestDate="+requestDate+"&desiredHireDate="+desiredHireDate+"&positionRequestedReplacementFor="+
				positionRequestedReplacementFor+"&positionRequestedNew="+positionRequestedNew+
				"&positionRequestedAdministrative="+positionRequestedAdministrative+
				"&positionRequestedManagerial="+positionRequestedManagerial+
				"&positionRequestedNonTrades="+positionRequestedNonTrades+"&positionRequestedOperationsSupport="+
				positionRequestedOperationsSupport+"&positionRequestedProfessional="+positionRequestedProfessional+
				"&positionRequestedTrades="+positionRequestedTrades+"&positionRequestedProposedJobTitle="+
				positionRequestedProposedJobTitle+"&positionRequestedBudgetedRate="+positionRequestedBudgetedRate+
				"&temporaryWorkerNumberOfDays="+temporaryWorkerNumberOfDays+"&temporaryWorkerNumberOfWeeks="+
				temporaryWorkerNumberOfWeeks+"&temporaryWorkerNumberOfMonths="+temporaryWorkerNumberOfMonths+
				"&temporaryWorkerStartDate="+temporaryWorkerStartDate+"&temporaryWorkerEndDate="+
				temporaryWorkerEndDate+"&temporaryWorkerHourlyRate="+temporaryWorkerHourlyRate+
				"&temporaryWorkerHowMany="+temporaryWorkerHowMany+"&additionalInformationRequired="+
				additionalInformationRequired+"&additionalInformationDesired="+additionalInformationDesired+
				"&recruitmentRequestId="+recruitmentRequestId;
										
				$.ajax({
				    url: 'updaterecruitmentrequestform.jsp',		
				    data: stringValues,
				    type:'POST',
				    success:function(response){
				    		var divId = "recruitmentRequestDetailDiv" + recruitmentRequestId;				    		
				    		$('#'+divId).html(response);					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}//end update if...condition			
		});//end button save click function
	});//end document ready function
</script>