<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long recruitmentRequestId = Long.parseLong(request.getParameter("recruitmentRequestId"));
	RecruitmentRequest recruitmentRequest = RecruitmentRequest.getRecruitmentRequest(recruitmentRequestId);
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
							<select name="slctdepartment" id="slctdepartment" style="width:100%" disabled="disabled">								
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
							<input type="text" name="txtrequestertitle" id="txtrequestertitle" value="<%=recruitmentRequest.getRequesterTitle() %>" disabled="disabled"/>
						</td>
					</tr>
					<tr style="background:#eeeeee">
						<td>Date of Request: <br/><input type="text" name="txtdateofrequest" id="txtdateofrequest" value="<%=recruitmentRequest.getRequestDate() %>" disabled="disabled"/></td>
						<td>Desired Hire Date: <br/><input type="text" name="txtdesiredhiredate" id="txtdesiredhiredate" value="<%=recruitmentRequest.getDesiredHireDate() %>" disabled="disabled"/></td>
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
									<input type="checkbox" name="chkreplacementfor" id="chkreplacementfor" value="Replacement for" checked="checked" disabled="disabled"/> Replacement for
							<%
								}else{
							%>
									<input type="checkbox" name="chkreplacementfor" id="chkreplacementfor" value="Replacement for" disabled="disabled"/> Replacement for
							<%
								}
							%>
						</td>
						<td colspan="5"><input type="text" name="txtreplacementfor" id="txtreplacementfor" value="<%=(recruitmentRequest.getPositionRequestedReplacementFor() != null ? recruitmentRequest.getPositionRequestedReplacementFor() : "") %>" disabled="disabled"/></td>						
					</tr>
					<tr>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedNewPosition() != ""){
							%>
									<input type="checkbox" name="chknewposition" id="chknewposition" checked="checked" disabled="disabled"/> New Position
							<%
								}else{
							%>
									<input type="checkbox" name="chknewposition" id="chknewposition" disabled="disabled"/> New Position
							<%
								}
							%>
						</td>
						<td colspan="5"><input type="text" name="txtnewposition" id="txtnewposition" value="<%=(recruitmentRequest.getPositionRequestedNewPosition() != null ? recruitmentRequest.getPositionRequestedNewPosition() : "") %>" disabled="disabled"/></td>						
					</tr>
					<tr>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedAdministrative() != ""){
							%>
									<input type="checkbox" name="chkadministrative" id="chkadministrative" value="Administrative/Support" checked="checked" disabled="disabled"/> Administrative/Support
							<%
								}else{
							%>
									<input type="checkbox" name="chkadministrative" id="chkadministrative" value="Administrative/Support" disabled="disabled"/> Administrative/Support
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedManagerial() != ""){
							%>
									<input type="checkbox" name="chkmanagerial" id="chkmanagerial" value="Managerial" checked="checked" disabled="disabled"/> Managerial
							<%
								}else{
							%>
									<input type="checkbox" name="chkmanagerial" id="chkmanagerial" value="Managerial" disabled="disabled"/> Managerial
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedNonTrades() != ""){
							%>
									<input type="checkbox" name="chknontrades" id="chknontrades" value="Non-Trades" checked="checked" disabled="disabled"/> Non-Trades
							<%
								}else{
							%>
									<input type="checkbox" name="chknontrades" id="chknontrades" value="Non-Trades" disabled="disabled"/> Non-Trades
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedOperationsSupport() != ""){
							%>
									<input type="checkbox" name="chkoperationssupport" id="chkoperationssupport" value="Operations Support" checked="checked" disabled="disabled"/> Operations Support
							<%
								}else{
							%>
									<input type="checkbox" name="chkoperationssupport" id="chkoperationssupport" value="Operations Support" disabled="disabled"/> Operations Support
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedProfessional() != ""){
							%>
									<input type="checkbox" name="chkprofessional" id="chkprofessional" value="Professional" checked="checked" disabled="disabled"/> Professional
							<%
								}else{
							%>
									<input type="checkbox" name="chkprofessional" id="chkprofessional" value="Professional" disabled="disabled"/> Professional
							<%
								}
							%>
						</td>
						<td>
							<%
								if(recruitmentRequest.getPositionRequestedTrades() != ""){
							%>
									<input type="checkbox" name="chktrades" id="chktrades" value="Trades" checked="checked" disabled="disabled"/> Trades
							<%
								}else{
							%>
									<input type="checkbox" name="chktrades" id="chktrades" value="Trades" disabled="disabled"/> Trades
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td colspan="3">Proposed Job Title: <input type="text" name="txtproposedjobtitle" id="txtproposedjobtitle" value="<%=(recruitmentRequest.getPositionRequestedProposedJobTitle() != null ? recruitmentRequest.getPositionRequestedProposedJobTitle() : "")%>" disabled="disabled"/></td>
						<td colspan="3">Budgeted Rate: <input type="text" name="txtbudgetedrate" id="txtbudgetedrate" value="<%=(recruitmentRequest.getPositionRequestedBudgetedRate() != null ? recruitmentRequest.getPositionRequestedBudgetedRate() : "")%>" disabled="disabled"/></td>
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
						<td>Number of Days:<br/><input type="text" size="10" name="txtnumberofdays" id="txtnumberofdays" value="<%=(recruitmentRequest.getTemporaryWorkerNumberOfDays() != null ? recruitmentRequest.getTemporaryWorkerNumberOfDays() : "")%>" disabled="disabled"/></td>
						<td>Number of Weeks:<br/><input type="text" size="10" name="txtnumberofweeks" id="txtnumberofweeks" value="<%=(recruitmentRequest.getTemporaryWorkerNumberOfWeeks() != null ? recruitmentRequest.getTemporaryWorkerNumberOfWeeks() : "")%>" disabled="disabled"/></td>
						<td>Number of Months:<br/><input type="text" size="10" name="txtnumberofmonths" id="txtnumberofmonths" value="<%=(recruitmentRequest.getTemporaryWorkerNumberOfMonths() != null ? recruitmentRequest.getTemporaryWorkerNumberOfMonths() : "")%>" disabled="disabled"/></td>
						<td>Start Date:<br/><input type="text" name="txtstartdate" id="txtstartdate" size="10" value="<%=(recruitmentRequest.getTemporaryWorkerStartDate() != null ? recruitmentRequest.getTemporaryWorkerStartDate() : "")%>" disabled="disabled"/></td>
						<td>End Date:<br/><input type="text" name="txtenddate" id="txtenddate" size="10" value="<%=(recruitmentRequest.getTemporaryWorkerEndDate() != null ? recruitmentRequest.getTemporaryWorkerEndDate() : "")%>" disabled="disabled"/></td>
						<td>Hourly Rate:<br/><input type="text" size="10" name="txthourlyrate" id="txthourlyrate" value="<%=(recruitmentRequest.getTemporaryWorkerHourlyRate() != null ? recruitmentRequest.getTemporaryWorkerHourlyRate() : "")%>" disabled="disabled"/></td>
						<td>How Many?<br/><input type="text" size="10" name="txthowmany" id="txthowmany" value="<%=(recruitmentRequest.getTemporaryWorkerHowMany() != null ? recruitmentRequest.getTemporaryWorkerHowMany() : "")%>" disabled="disabled"/></td>
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
						<td><textarea name="textarearequired" id="textarearequired" cols="50" rows="3" style="width:100%" disabled="disabled"><%=(recruitmentRequest.getAdditionalInformationRequired() != null ? recruitmentRequest.getAdditionalInformationRequired() : "")%></textarea></td>
						<td><textarea name="textareadesired" id="textareadesired" cols="50" rows="3" style="width:100%" disabled="disabled"><%=(recruitmentRequest.getAdditionalInformationDesired() != null ? recruitmentRequest.getAdditionalInformationDesired() : "")%></textarea></td>
					</tr>
				</table>
			</td>
		</tr>		
	</table>
</form>