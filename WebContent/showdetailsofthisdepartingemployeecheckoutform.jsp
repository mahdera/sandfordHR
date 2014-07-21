<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long departingEmployeeCheckoutFormId = Long.parseLong(request.getParameter("departingEmployeeCheckoutFormId"));
	DepartingEmployeeCheckoutForm departingEmployeeCheckoutForm = DepartingEmployeeCheckoutForm.getDepartingEmployeeCheckoutForm(departingEmployeeCheckoutFormId);
%>
<div>
	<table border="1" width="100%" style="background:#eee">
		<tr>
			<td>1.</td>
			<td width="30%">Please Select The Employee</td>
			<td colspan="4">
				<select name="slctemployee" id="slctemployee" style="width:100%" disabled="disabled">					
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
				<select name="slctreasonforleaving" id="slctreasonforleaving" style="width:100%" disabled="disabled">
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
							<textarea name="textareaothercausesofleaving" disabled="disabled" id="textareaothercausesofleaving" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getOtherCauses() %></textarea>
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
							<select name="slctsignaturelibrarybooks" disabled="disabled" id="slctsignaturelibrarybooks" style="width:100%">
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
							<input type="text" name="txtdateclearedlibrarybooks" disabled="disabled" id="txtdateclearedlibrarybooks" size="8" value="<%=departingEmployeeCheckoutForm.getLibraryBooksDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedlibrarybooks')"/>.
						</td>
						<td><textarea name="textarearemarklibrarybooks" disabled="disabled" id="textarearemarklibrarybooks" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getLibraryBooksRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Curriculum notes and mark books</td>
						<td>Last day of academic year</td>
						<td>Head of Section/Department</td>
						<td>
							<select name="slctsignaturecurriculumnotes" disabled="disabled" id="slctsignaturecurriculumnotes" style="width:100%">
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
							<input type="text" name="txtdateclearedcurriculumnotes" disabled="disabled" id="txtdateclearedcurriculumnotes" size="8" value="<%=departingEmployeeCheckoutForm.getCurriculumNotesDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedcurriculumnotes')"/>.
						</td>
						<td><textarea name="textarearemarkcurriculumnotes" disabled="disabled" id="textarearemarkcurriculumnotes" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getCurriculumNotesRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Textbooks and Other Class Resources</td>
						<td>Last day of academic year</td>
						<td>Head of Section/Department</td>
						<td>
							<select name="slctsignaturetextbooks" disabled="disabled" id="slctsignaturetextbooks" style="width:100%">
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
							<input type="text" name="txtdateclearedtextbooks" disabled="disabled" id="txtdateclearedtextbooks" size="8" value="<%=departingEmployeeCheckoutForm.getTextbookDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedtextbooks')"/>.
						</td>
						<td><textarea name="textarearemarktextbooks" disabled="disabled" id="textarearemarktextbooks" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getTextbookRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Room, office, Desk, filing cabinet, Lockers keys etc.</td>
						<td>Last day of academic year</td>
						<td>Head of Section</td>
						<td>
							<select name="slctsignatureroomoffice" disabled="disabled" id="slctsignatureroomoffice" style="width:100%">
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
							<input type="text" name="txtdateclearedroomoffice" disabled="disabled" id="txtdateclearedroomoffice" size="8" value="<%=departingEmployeeCheckoutForm.getRoomOfficeDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedroomoffice')"/>.
						</td>
						<td><textarea name="textarearemarkroomoffice" disabled="disabled" id="textarearemarkroomoffice" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getRoomOfficeRemark() %></textarea></td>
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
							<select name="slctsignaturepropertyhousing" disabled="disabled" id="slctsignaturepropertyhousing" style="width:100%">
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
							<input type="text" name="txtdateclearedpropertyhousing" disabled="disabled" id="txtdateclearedpropertyhousing" size="8" value="<%=departingEmployeeCheckoutForm.getPropertyFinanceDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedpropertyhousing')"/>.
						</td>
						<td><textarea name="textarearemarkpropertyhousing" disabled="disabled" id="textarearemarkpropertyhousing" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getPropertyFinanceRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Accounts and Utilities</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Accounts</td>
						<td>
							<select name="slctsignatureaccountsandutilities" disabled="disabled" id="slctsignatureaccountsandutilities" style="width:100%">
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
							<input type="text" name="txtdateclearedaccountsandutilities" disabled="disabled" id="txtdateclearedaccountsandutilities" size="8" value="<%=departingEmployeeCheckoutForm.getAccountsUtilitiesDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedaccountsandutilities')"/>.
						</td>
						<td><textarea name="textarearemarkaccountsandutilities" disabled="disabled" id="textarearemarkaccountsandutilities" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getAccountsUtilitiesRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Purchasing</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Purchasing</td>
						<td>
							<select name="slctsignaturepurchasing" id="slctsignaturepurchasing" disabled="disabled" style="width:100%">
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
							<input type="text" name="txtdateclearedpurchasing" id="txtdateclearedpurchasing" disabled="disabled" size="8" value="<%=departingEmployeeCheckoutForm.getPurchasingDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedpurchasing')"/>.
						</td>
						<td><textarea name="textarearemarkpurchasing" id="textarearemarkpurchasing" disabled="disabled" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getPurchasingRemark() %></textarea></td>
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
							<select name="slctsignaturepersonnelandbenefits" disabled="disabled" id="slctsignaturepersonnelandbenefits" style="width:100%">
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
							<input type="text" name="txtdateclearedpersonnelandbenefits" disabled="disabled" id="txtdateclearedpersonnelandbenefits" size="8" value="<%=departingEmployeeCheckoutForm.getPersonnelBenefitsDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedpersonnelandbenefits')"/>.
						</td>
						<td><textarea name="textarearemarkpersonnelandbenefits" disabled="disabled" id="textarearemarkpersonnelandbenefits" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getPersonnelBenefitsRemark() %></textarea></td>
					</tr>
					<tr>
						<td>Maintainance, transport and General service</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Maintainance</td>
						<td>
							<select name="slctsignaturemaintainancetransport" disabled="disabled" id="slctsignaturemaintainancetransport" style="width:100%">
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
							<input type="text" name="txtdateclearedmaintainancetransport" disabled="disabled" id="txtdateclearedmaintainancetransport" size="8" value="<%=departingEmployeeCheckoutForm.getMaintainanceTransportDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedmaintainancetransport')"/>.
						</td>
						<td><textarea name="textarearemarkmaintainancetransport" disabled="disabled" id="textarearemarkmaintainancetransport" rows="3" style="width:100%"><%=departingEmployeeCheckoutForm.getMaintainanceTransportRemark() %></textarea></td>
					</tr>
					<tr>
						<td>IT - Network Administrator</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Network Administrator</td>
						<td>
							<select name="slctsignatureit" id="slctsignatureit" disabled="disabled" style="width:100%">
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
							<input type="text" name="txtdateclearedit" disabled="disabled" id="txtdateclearedit" size="8" value="<%=departingEmployeeCheckoutForm.getItSignatureDateCleared() %>"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedit')"/>.
						</td>
						<td><textarea name="textarearemarkit" id="textarearemarkit" rows="3" style="width:100%" disabled="disabled"><%=departingEmployeeCheckoutForm.getItRemark() %></textarea></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>Cleared for Final Payment</td>
			<td colspan="5">
				<select name="slctclearedforfinalpayment" disabled="disabled" id="slctclearedforfinalpayment" style="width:100%">
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
	</table>
</div>