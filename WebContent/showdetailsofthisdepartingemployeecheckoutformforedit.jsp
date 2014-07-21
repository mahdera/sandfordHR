<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long departingEmployeeCheckoutFormId = Long.parseLong(request.getParameter("departingEmployeeCheckoutFormId"));
	DepartingEmployeeCheckoutForm departingEmployeeCheckoutForm = DepartingEmployeeCheckoutForm.getDepartingEmployeeCheckoutForm(departingEmployeeCheckoutFormId);
	//now define the control names in here...
	String employeeControlName = "slctemployee" + departingEmployeeCheckoutFormId;
	String reasonForLeavingControlName = "slctreasonforleaving" + departingEmployeeCheckoutFormId;
	String otherCausesOfLeavingControlName = "textareaspecifyothercauses" + departingEmployeeCheckoutFormId;
	String librarySignatureControlName = "slctsignaturelibrarybooks" + departingEmployeeCheckoutFormId;
	String libraryDateClearedControlName = "txtdateclearedlibrarybooks" + departingEmployeeCheckoutFormId;
	String libraryRemarkControlName = "textarearemarklibrarybooks" + departingEmployeeCheckoutFormId;
	String curriculumSignatureControlName = "slctsignaturecurriculumnotes" + departingEmployeeCheckoutFormId;
	String curriculumDateClearedControlName = "txtdateclearedcurriculumnotes" + departingEmployeeCheckoutFormId;
	String curriculumRemarkControlName = "textarearemarkcurriculumnotes" + departingEmployeeCheckoutFormId;
	String textbookSignatureControlName = "slctsignaturetextbooks" + departingEmployeeCheckoutFormId;
	String textbookDateClearedControlName = "txtdateclearedtextbooks" + departingEmployeeCheckoutFormId;
	String textbookRemarkControlName = "textarearemarktextbooks" + departingEmployeeCheckoutFormId;
	String roomSignatureControlName = "slctsignatureroomoffice" + departingEmployeeCheckoutFormId;
	String roomDateClearedControlName = "txtdateclearedroomoffice" + departingEmployeeCheckoutFormId;
	String roomRemarkControlName = "textarearemarkroomoffice" + departingEmployeeCheckoutFormId;
	String propertySignatureControlName = "slctsignaturepropertyhousing" + departingEmployeeCheckoutFormId;
	String propertyDateClearedControlName = "txtdateclearedpropertyhousing" + departingEmployeeCheckoutFormId;
	String propertyRemarkControlName = "textarearemarkpropertyhousing" + departingEmployeeCheckoutFormId;
	String accountsSignatureControlName = "slctsignatureaccountsandutilities" + departingEmployeeCheckoutFormId;
	String accountsDateClearedControlName = "txtdateclearedaccountsandutilities" + departingEmployeeCheckoutFormId;
	String accountsRemarkControlName = "textarearemarkaccountsandutilities" + departingEmployeeCheckoutFormId;
	String purchasingSignatureControlName = "slctsignaturepurchasing" + departingEmployeeCheckoutFormId;
	String purchasingDateClearedControlName = "txtdateclearedpurchasing" + departingEmployeeCheckoutFormId;
	String purchasingRemarkControlName = "textarearemarkpurchasing" + departingEmployeeCheckoutFormId;
	String personnelSignatureControlName = "slctsignaturepersonnelandbenefits" + departingEmployeeCheckoutFormId;
	String personnelDateClearedControlName = "txtdateclearedpersonnelandbenefits" + departingEmployeeCheckoutFormId;
	String personnelRemarkControlName = "textarearemarkpersonnelandbenefits" + departingEmployeeCheckoutFormId;
	String maintainanceSignatureControlName = "slctsignaturemaintainancetransport" + departingEmployeeCheckoutFormId;
	String maintainanceDateClearedControlName = "txtdateclearedmaintainancetransport" + departingEmployeeCheckoutFormId;
	String maintainanceRemarkControlName = "textarearemarkmaintainancetransport" + departingEmployeeCheckoutFormId;
	String itSignatureControlName = "slctsignatureit" + departingEmployeeCheckoutFormId;
	String itDateClearedControlName = "txtdateclearedit" + departingEmployeeCheckoutFormId;
	String itRemarkControlName = "textarearemarkit" + departingEmployeeCheckoutFormId;
	String clearedForFinalPaymentControlName = "slctclearedforfinalpayment" + departingEmployeeCheckoutFormId;
%>
<div>
	<table border="1" width="100%" style="background:#eee">
		<tr>
			<td>1.</td>
			<td width="30%">Please Select The Employee</td>
			<td colspan="4">
				<select name="<%=employeeControlName %>" id="<%=employeeControlName %>" style="width:100%">					
					<%
						List<Employee> employeeList = Employee.getAllEmployees();
						Iterator<Employee> employeeItr = employeeList.iterator();
						while(employeeItr.hasNext()){
							Employee employee = employeeItr.next();
							String fullName = employee.getFirstName()+" "+employee.getLastName();
							if(employee.getId() == departingEmployeeCheckoutForm.getEmployeeId()){
							%>
								<option value="<%=employee.getId()%>" selected="selected"><%=fullName %></option>
							<%
							}else{
							%>
								<option value="<%=employee.getId()%>"><%=fullName %></option>
							<%
							}
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>2.</td>
			<td>Reason for Leaving</td>
			<td colspan="4">
				<select name="<%=reasonForLeavingControlName %>" id="<%=reasonForLeavingControlName %>" style="width:100%">
					<%
						if(departingEmployeeCheckoutForm.getReasonForLeaving().equalsIgnoreCase("end of contract")){
						%>
							<option value="End of Contract" selected="selected">End of Contract</option>
							<option value="Retirement">Retirement</option>
							<option value="Resignation">Resignation</option>
							<option value="Other causes">Other causes</option>
						<%
						}else if(departingEmployeeCheckoutForm.getReasonForLeaving().equalsIgnoreCase("retirement")){
						%>
							<option value="End of Contract">End of Contract</option>
							<option value="Retirement" selected="selected">Retirement</option>
							<option value="Resignation">Resignation</option>
							<option value="Other causes">Other causes</option>
						<%	
						}else if(departingEmployeeCheckoutForm.getReasonForLeaving().equalsIgnoreCase("resignation")){
						%>
							<option value="End of Contract">End of Contract</option>
							<option value="Retirement">Retirement</option>
							<option value="Resignation" selected="selected">Resignation</option>
							<option value="Other causes">Other causes</option>
						<%	
						}else if(departingEmployeeCheckoutForm.getReasonForLeaving().equalsIgnoreCase("other causes")){
						%>
							<option value="End of Contract">End of Contract</option>
							<option value="Retirement">Retirement</option>
							<option value="Resignation">Resignation</option>
							<option value="Other causes" selected="selected">Other causes</option>
						<%	
						}
					%>					
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<div id="otherCausesDiv">
					<%
						if(departingEmployeeCheckoutForm.getOtherCauses() != ""){
							%>
							<textarea name="<%=otherCausesOfLeavingControlName %>" id="<%=otherCausesOfLeavingControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getOtherCauses() %></textarea>
							<%
						}
					%>
				</div>
			</td>
		</tr>
		<tr>
			<td>3</td>
			<td colspan="5">
				Primary/Secondary
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<table border="1" width="100%">
					<tr style="background:#ccc">
						<td width="20%">Action</td>
						<td width="10%">Deadline on/or before</td>
						<td width="20%">Name of person in Charge/department</td>
						<td>Signature</td>
						<td>Date cleared</td>
						<td>Remark</td>
					</tr>
					<tr>
						<td>Library Books and Resources</td>
						<td>Last day of academic year</td>
						<td>Head of Library</td>
						<td>
							<select name="<%=librarySignatureControlName %>" id="<%=librarySignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getLibraryBooksSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>								
							</select>
						</td>
						<td>
							<input type="text" name="<%=libraryDateClearedControlName %>" id="<%=libraryDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getLibraryBooksDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=libraryDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=libraryRemarkControlName %>" id="<%=libraryRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getLibraryBooksRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Curriculum notes and mark books</td>
						<td>Last day of academic year</td>
						<td>Head of Section/Department</td>
						<td>
							<select name="<%=curriculumSignatureControlName %>" id="<%=curriculumSignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getCurriculumNotesSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<input type="text" name="<%=curriculumDateClearedControlName %>" id="<%=curriculumDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getCurriculumNotesDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=curriculumDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=curriculumRemarkControlName %>" id="<%=curriculumRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getCurriculumNotesRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Textbooks and Other Class Resources</td>
						<td>Last day of academic year</td>
						<td>Head of Section/Department</td>
						<td>
							<select name="<%=textbookSignatureControlName %>" id="<%=textbookSignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getTextbookSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<input type="text" name="<%=textbookDateClearedControlName %>" id="<%=textbookDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getTextbookDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=textbookDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=textbookRemarkControlName %>" id="<%=textbookRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getTextbookRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Room, office, Desk, filing cabinet, Lockers keys etc.</td>
						<td>Last day of academic year</td>
						<td>Head of Section</td>
						<td>
							<select name="<%=roomSignatureControlName %>" id="<%=roomSignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getRoomOfficeSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<input type="text" name="<%=roomDateClearedControlName %>" id="<%=roomDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getRoomOfficeDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=roomDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=roomRemarkControlName %>" id="<%=roomRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getRoomOfficeRemark() %></textarea></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>4</td>
			<td colspan="5">
				Finance, Property and Purchasing
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<table border="1" width="100%">
					<tr style="background:#ccc">
						<td width="15%">Action</td>
						<td width="15%">Deadline on/or before</td>
						<td width="15%">Name of person in Charge/department</td>
						<td>Signature</td>
						<td>Date cleared</td>
						<td>Remark</td>						
					</tr>
					<tr>
						<td>Property, Housing</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Property</td>
						<td>
							<select name="<%=propertySignatureControlName %>" id="<%=propertySignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getPropertyFinanceSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<input type="text" name="<%=propertyDateClearedControlName %>" id="<%=propertyDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getPropertyFinanceDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=propertyDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=propertyRemarkControlName %>" id="<%=propertyRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getPropertyFinanceRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Accounts and Utilities</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Accounts</td>
						<td>
							<select name="<%=accountsSignatureControlName %>" id="<%=accountsSignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getAccountsUtilitiesSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<input type="text" name="<%=accountsDateClearedControlName %>" id="<%=accountsDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getAccountsUtilitiesDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=accountsDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=accountsRemarkControlName %>" id="<%=accountsRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getAccountsUtilitiesRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Purchasing</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Purchasing</td>
						<td>
							<select name="<%=purchasingSignatureControlName %>" id="<%=purchasingSignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getPurchasingSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<input type="text" name="<%=purchasingDateClearedControlName %>" id="<%=purchasingDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getPurchasingDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=purchasingDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=purchasingRemarkControlName %>" id="<%=purchasingRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getPurchasingRemark() %></textarea></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>5</td>
			<td colspan="5">
				Human resource and administration
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<table border="1" width="100%">
					<tr style="background:#ccc">
						<td width="15%">Action</td>
						<td width="15%">Deadline on/or before</td>
						<td width="15%">Name of person in Charge/department</td>
						<td>Signature</td>
						<td>Date cleared</td>
						<td>Remark</td>						
					</tr>
					<tr>
						<td>Personnel and Benefits</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Personnel</td>
						<td>
							<select name="<%=personnelSignatureControlName %>" id="<%=personnelSignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getPersonnelBenefitsSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<input type="text" name="<%=personnelDateClearedControlName %>" id="<%=personnelDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getPersonnelBenefitsDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=personnelDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=personnelRemarkControlName %>" id="<%=personnelRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getPersonnelBenefitsRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Maintainance, transport and General service</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Maintainance</td>
						<td>
							<select name="<%=maintainanceSignatureControlName %>" id="<%=maintainanceSignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getMaintainanceTransportSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<input type="text" name="<%=maintainanceDateClearedControlName %>" id="<%=maintainanceDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getMaintainanceTransportDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=maintainanceDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=maintainanceRemarkControlName %>" id="<%=maintainanceRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getMaintainanceTransportRemark() %></textarea></td>
					</tr>
					<tr>
						<td>IT - Network Administrator</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Network Administrator</td>
						<td>
							<select name="<%=itSignatureControlName %>" id="<%=itSignatureControlName %>" style="width:100%">
								<%
									if(departingEmployeeCheckoutForm.getItSignature().equalsIgnoreCase("signed")){
										%>
											<option value="Not Signed">Not Signed</option>
											<option value="Signed" selected="selected">Signed</option>
										<%
									}else{
										%>
											<option value="Not Signed" selected="selected">Not Signed</option>
											<option value="Signed">Signed</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<input type="text" name="<%=itDateClearedControlName %>" id="<%=itDateClearedControlName %>" size="8" value="<%=departingEmployeeCheckoutForm.getItSignatureDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=itDateClearedControlName %>')"/>.
						</td>
						<td><textarea name="<%=itRemarkControlName %>" id="<%=itRemarkControlName %>" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getItRemark() %></textarea></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>Cleared for Final Payment</td>
			<td colspan="5">
				<select name="<%=clearedForFinalPaymentControlName %>" id="<%=clearedForFinalPaymentControlName %>" style="width:100%">
					<%
									if(departingEmployeeCheckoutForm.getClearedForFinalPayment().equalsIgnoreCase("cleared")){
										%>
											<option value="Not Cleared">Not Cleared</option>
											<option value="Cleared" selected="selected">Cleared</option>
										<%
									}else{
										%>
											<option value="Not Cleared" selected="selected">Not Cleared</option>
											<option value="Cleared">Cleared</option>
										<%
									}
								%>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="6" align="right">
				<input type="button" value="Update" class="input-submit" id="btnupdate"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnupdate').click(function(){			
			var departingEmployeeCheckoutFormId = "<%=departingEmployeeCheckoutFormId %>";
			var employeeControlName = $("#slctemployee" + departingEmployeeCheckoutFormId).val();
			var reasonForLeavingControlName = $("#slctreasonforleaving" + departingEmployeeCheckoutFormId).val();
			var otherCausesOfLeavingControlName = $("#textareaspecifyothercauses" + departingEmployeeCheckoutFormId).val();
			var librarySignatureControlName = $("#slctsignaturelibrarybooks" + departingEmployeeCheckoutFormId).val();
			var libraryDateClearedControlName = $("#txtdateclearedlibrarybooks" + departingEmployeeCheckoutFormId).val();
			var libraryRemarkControlName = $("#textarearemarklibrarybooks" + departingEmployeeCheckoutFormId).val();
			var curriculumSignatureControlName = $("#slctsignaturecurriculumnotes" + departingEmployeeCheckoutFormId).val();
			var curriculumDateClearedControlName = $("#txtdateclearedcurriculumnotes" + departingEmployeeCheckoutFormId).val();
			var curriculumRemarkControlName = $("#textarearemarkcurriculumnotes" + departingEmployeeCheckoutFormId).val();
			var textbookSignatureControlName = $("#slctsignaturetextbooks" + departingEmployeeCheckoutFormId).val();
			var textbookDateClearedControlName = $("#txtdateclearedtextbooks" + departingEmployeeCheckoutFormId).val();
			var textbookRemarkControlName = $("#textarearemarktextbooks" + departingEmployeeCheckoutFormId).val();
			var roomSignatureControlName = $("#slctsignatureroomoffice" + departingEmployeeCheckoutFormId).val();
			var roomDateClearedControlName = $("#txtdateclearedroomoffice" + departingEmployeeCheckoutFormId).val();
			var roomRemarkControlName = $("#textarearemarkroomoffice" + departingEmployeeCheckoutFormId).val();
			var propertySignatureControlName = $("#slctsignaturepropertyhousing" + departingEmployeeCheckoutFormId).val();
			var propertyDateClearedControlName = $("#txtdateclearedpropertyhousing" + departingEmployeeCheckoutFormId).val();
			var propertyRemarkControlName = $("#textarearemarkpropertyhousing" + departingEmployeeCheckoutFormId).val();
			var accountsSignatureControlName = $("#slctsignatureaccountsandutilities" + departingEmployeeCheckoutFormId).val();
			var accountsDateClearedControlName = $("#txtdateclearedaccountsandutilities" + departingEmployeeCheckoutFormId).val();
			var accountsRemarkControlName = $("#textarearemarkaccountsandutilities" + departingEmployeeCheckoutFormId).val();
			var purchasingSignatureControlName = $("#slctsignaturepurchasing" + departingEmployeeCheckoutFormId).val();
			var purchasingDateClearedControlName = $("#txtdateclearedpurchasing" + departingEmployeeCheckoutFormId).val();
			var purchasingRemarkControlName = $("#textarearemarkpurchasing" + departingEmployeeCheckoutFormId).val();
			var personnelSignatureControlName = $("#slctsignaturepersonnelandbenefits" + departingEmployeeCheckoutFormId).val();
			var personnelDateClearedControlName = $("#txtdateclearedpersonnelandbenefits" + departingEmployeeCheckoutFormId).val();
			var personnelRemarkControlName = $("#textarearemarkpersonnelandbenefits" + departingEmployeeCheckoutFormId).val();
			var maintainanceSignatureControlName = $("#slctsignaturemaintainancetransport" + departingEmployeeCheckoutFormId).val();
			var maintainanceDateClearedControlName = $("#txtdateclearedmaintainancetransport" + departingEmployeeCheckoutFormId).val();
			var maintainanceRemarkControlName = $("#textarearemarkmaintainancetransport" + departingEmployeeCheckoutFormId).val();
			var itSignatureControlName = $("#slctsignatureit" + departingEmployeeCheckoutFormId).val();
			var itDateClearedControlName = $("#txtdateclearedit" + departingEmployeeCheckoutFormId).val();
			var itRemarkControlName = $("#textarearemarkit" + departingEmployeeCheckoutFormId).val();
			var clearedForFinalPaymentControlName = $("#slctclearedforfinalpayment" + departingEmployeeCheckoutFormId).val();
			
			var dataString = "departingEmployeeCheckoutFormId="+departingEmployeeCheckoutFormId+
			"&employeeControlName="+employeeControlName+"&reasonForLeavingControlName="+reasonForLeavingControlName+
			"&otherCausesOfLeavingControlName="+otherCausesOfLeavingControlName+"&librarySignatureControlName="+
			librarySignatureControlName+"&libraryDateClearedControlName="+libraryDateClearedControlName+
			"&libraryRemarkControlName="+libraryRemarkControlName+"&curriculumSignatureControlName="+
			curriculumSignatureControlName+"&curriculumDateClearedControlName="+curriculumDateClearedControlName+
			"&curriculumRemarkControlName="+curriculumRemarkControlName+"&textbookSignatureControlName="+
			textbookSignatureControlName+"&textbookDateClearedControlName="+textbookDateClearedControlName+
			"&textbookRemarkControlName="+textbookRemarkControlName+"&roomSignatureControlName="+roomSignatureControlName+
			"&roomDateClearedControlName="+roomDateClearedControlName+"&roomRemarkControlName="+roomRemarkControlName+
			"&propertySignatureControlName="+propertySignatureControlName+"&propertyDateClearedControlName="+
			propertyDateClearedControlName+"&propertyRemarkControlName="+propertyRemarkControlName+
			"&accountsSignatureControlName="+accountsSignatureControlName+"&accountsDateClearedControlName="+
			accountsDateClearedControlName+"&accountsRemarkControlName="+accountsRemarkControlName+
			"&purchasingSignatureControlName="+purchasingSignatureControlName+"&purchasingDateClearedControlName="+
			purchasingDateClearedControlName+"&purchasingRemarkControlName="+purchasingRemarkControlName+
			"&personnelSignatureControlName="+personnelSignatureControlName+"&personnelDateClearedControlName="+
			personnelDateClearedControlName+"&personnelRemarkControlName="+personnelRemarkControlName+
			"&maintainanceSignatureControlName="+maintainanceSignatureControlName+"&maintainanceDateClearedControlName="+
			maintainanceDateClearedControlName+"&maintainanceRemarkControlName="+maintainanceRemarkControlName+
			"&itSignatureControlName="+itSignatureControlName+"&itDateClearedControlName="+itDateClearedControlName+
			"&itRemarkControlName="+itRemarkControlName+"&clearedForFinalPaymentControlName="+clearedForFinalPaymentControlName;
			
			$.ajax({
			    url: 'updatedepartingemployeecheckoutform.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		var divId = "departingEmployeeCheckoutFormDetailDiv" + departingEmployeeCheckoutFormId;
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		});//end button.update function
	});//end document.ready function
</script>