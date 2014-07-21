<%@page import="java.util.*" %>
<%@page import="com.empadmin.server.classes.*" %>
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
						<td><font color="red">*</font> Department/Unit:</td>
						<td>
							<select name="slctdepartment" id="slctdepartment" style="width:100%">								
								<option value='' selected="selected">--Select--</option>
								<%									
									List<Department> departmentList = Department.getAllDepartments();
									Iterator<Department> departmentItr = departmentList.iterator();
									while(departmentItr.hasNext()){
										Department dept = departmentItr.next();
										%>
										<option value="<%=dept.getId() %>" title="<%=dept.getDepartmentDescription() %>"><%=dept.getDepartmentName() %></option>
										<%
									}//end while loop
								%>
							</select>							
						</td>
					</tr>
					<tr style="background:#eeeeee">
						<td>Requester and Title:</td>
						<td>
							<input type="text" name="txtrequestertitle" id="txtrequestertitle"/>
						</td>
					</tr>
					<tr style="background:#eeeeee">
						<td><font color="red">*</font> Date of Request: <br/><input type="text" name="txtdateofrequest" id="txtdateofrequest"/> <img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofrequest')" /></td>
						<td><font color="red">*</font> Desired Hire Date: <br/><input type="text" name="txtdesiredhiredate" id="txtdesiredhiredate"/> <img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdesiredhiredate')" /></td>
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
						<td><input type="checkbox" name="chkreplacementfor" id="chkreplacementfor" value="Replacement for"/> Replacement for</td>
						<td colspan="5"><input type="text" name="txtreplacementfor" id="txtreplacementfor"/></td>						
					</tr>
					<tr>
						<td><input type="checkbox" name="chknewposition" id="chknewposition"/> New Position</td>
						<td colspan="5"><input type="text" name="txtnewposition" id="txtnewposition"/></td>						
					</tr>
					<tr>
						<td><input type="checkbox" name="chkadministrative" id="chkadministrative" value="Administrative/Support"/> Administrative/Support</td>
						<td><input type="checkbox" name="chkmanagerial" id="chkmanagerial" value="Managerial"/> Managerial</td>
						<td><input type="checkbox" name="chknontrades" id="chknontrades" value="Non-Trades"/> Non-Trades</td>
						<td><input type="checkbox" name="chkoperationssupport" id="chkoperationssupport" value="Operations Support"/> Operations Support</td>
						<td><input type="checkbox" name="chkprofessional" id="chkprofessional" value="Professional"/> Professional</td>
						<td><input type="checkbox" name="chktrades" id="chktrades" value="Trades"/> Trades</td>
					</tr>
					<tr>
						<td colspan="3"><font color="red">*</font> Proposed Job Title: <input type="text" name="txtproposedjobtitle" id="txtproposedjobtitle"/></td>
						<td colspan="3">Budgeted Rate: <input type="text" name="txtbudgetedrate" id="txtbudgetedrate"/></td>
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
						<td>Number of Days:<br/><input type="text" size="10" name="txtnumberofdays" id="txtnumberofdays"/></td>
						<td>Number of Weeks:<br/><input type="text" size="10" name="txtnumberofweeks" id="txtnumberofweeks"/></td>
						<td>Number of Months:<br/><input type="text" size="10" name="txtnumberofmonths" id="txtnumberofmonths"/></td>
						<td>Start Date:<br/><input type="text" name="txtstartdate" id="txtstartdate" size="10"/><img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtstartdate')" /></td>
						<td>End Date:<br/><input type="text" name="txtenddate" id="txtenddate" size="10"/><img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtenddate')" /></td>
						<td>Hourly Rate:<br/><input type="text" size="10" name="txthourlyrate" id="txthourlyrate"/></td>
						<td>How Many?<br/><input type="text" size="10" name="txthowmany" id="txthowmany"/></td>
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
						<td><textarea class="jqte-test" name="textarearequired" id="textarearequired" cols="50" rows="3" style="width:100%"></textarea></td>
						<td><textarea class="jqte-test" name="textareadesired" id="textareadesired" cols="50" rows="3" style="width:100%"></textarea></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr style="background:#eeeeee">
			<td align="right">
				<input type="button" name="btnsave" id="btnsave" value="Save" class="input-submit"/>				
				<input type="reset" class="input-submit"/>
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
		$('.jqte-test').jqte();			
		// settings of status
		var jqteStatus = true;
		$(".status").click(function()
		{
			jqteStatus = jqteStatus ? false : true;
			$('.jqte-test').jqte({"status" : jqteStatus})
		});
		
		$('#txtreplacementfor').attr("disabled", "disabled");
		$('#txtnewposition').attr("disabled", "disabled");
		
		$('#chkreplacementfor').click(function(){
			if($(this).is(":checked")){
				$('#txtreplacementfor').removeAttr("disabled");
				$('#txtreplacementfor').focus();
			}else{
				$('#txtreplacementfor').attr("disabled", "disabled");
				$('#txtreplacementfor').val('');
			}
		});
		
		$('#chknewposition').click(function(){
			if($(this).is(":checked")){
				$('#txtnewposition').removeAttr("disabled");
				$('#txtnewposition').focus();
			}else{
				$('#txtnewposition').attr("disabled", "disabled");
				$('#txtnewposition').val('');
			}
		});
		
		$('#btnsave').click(function(){
			var departmentId = $('#slctdepartment').val();
			var requesterTitle = $('#txtrequestertitle').val();
			var requestDate = $('#txtdateofrequest').val();
			var desiredHireDate = $('#txtdesiredhiredate').val();
			var positionRequestedReplacementFor = $('#txtreplacementfor').val();
			var positionRequestedNew = $('#txtnewposition').val();
			var positionRequestedAdministrative = "";
			var positionRequestedManagerial = "";
			var positionRequestedNonTrades = "";
			var positionRequestedOperationsSupport = "";
			var positionRequestedProfessional = "";
			var positionRequestedTrades = "";
			if($('#chkadministrative').is(":checked")){
				positionRequestedAdministrative = $('#chkadministrative').val();
			}
			
			if($('#chkadministrative').is(":checked")){
				positionRequestedAdministrative = $('#chkadministrative').val();
			}
			
			if($('#chkmanagerial').is(":checked")){
				positionRequestedManagerial = $('#chkmanagerial').val();
			}
			
			if($('#chknontrades').is(":checked")){
				positionRequestedNonTrades = $('#chknontrades').val();
			}
			
			if($('#chkoperationssupport').is(":checked")){
				positionRequestedOperationsSupport = $('#chkoperationssupport').val();
			}
			
			if($('#chkprofessional').is(":checked")){
				positionRequestedProfessional = $('#chkprofessional').val();
			}
			
			if($('#chktrades').is(":checked")){
				positionRequestedTrades = $('#chktrades').val();
			}
			
			var positionRequestedProposedJobTitle = $('#txtproposedjobtitle').val();
			var positionRequestedBudgetedRate = $('#txtbudgetedrate').val();
			var temporaryWorkerNumberOfDays = $('#txtnumberofdays').val();
			var temporaryWorkerNumberOfWeeks = $('#txtnumberofweeks').val();
			var temporaryWorkerNumberOfMonths = $('#txtnumberofmonths').val();
			var temporaryWorkerStartDate = $('#txtstartdate').val();
			var temporaryWorkerEndDate = $('#txtenddate').val();
			var temporaryWorkerHourlyRate = $('#txthourlyrate').val();
			var temporaryWorkerHowMany = $('#txthowmany').val();
			var additionalInformationRequired = $('#textarearequired').val();
			var additionalInformationDesired = $('#textareadesired').val();
			
			
			
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
			additionalInformationRequired+"&additionalInformationDesired="+additionalInformationDesired;
			
			if(departmentId != "" && requestDate != "" && desiredHireDate != "" && positionRequestedProposedJobTitle != ""){			
				$.ajax({
				    url: 'saverecruitmentrequestform.jsp',		
				    data: stringValues,
				    type:'POST',
				    success:function(response){
				    		alert(response);
				    		$('#tabDetailDiv').load('showaddrecruitmentrequestform.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing Data! Please enter all the required data fields!</p>");
			}
			
		});//end button save click function
	});//end document ready function
</script>