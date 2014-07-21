<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long clearanceFormId = Long.parseLong(request.getParameter("clearanceFormId"));
	CleranceForm clearanceForm = CleranceForm.getCleranceForm(clearanceFormId);
%>
<div>
	<form>
	<table border="1" width="100%" style="background:#eee">
		<tr>
			<td valign="top" colspan="6">
				<strong>
					<p style="text-align:center">
						<font size="4"><label id="lbljusticeprofessionalassociationemployeeinformationregistrationform">
						Sandford International School<br/>
						Clerance Form for Administrative Staff</label></font>					
					</p>
				</strong>
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<strong>To All Concerned Divisions</strong>
				<p>
				Please be informed that the employment contract of 
				<select name="slctemployee" id="slctemployee" style="width:30%" disabled="disabled">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Employee> employeeList = Employee.getAllEmployees();
						Iterator<Employee> employeeItr = employeeList.iterator();
						while(employeeItr.hasNext()){
							Employee employee = employeeItr.next();
							String fullName = employee.getFirstName()+" "+employee.getLastName();
							if(clearanceForm.getEmployeeId() == employee.getId()){
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
				with Sandford International School has terminated effective as of
				<input type="text" name="txtdateoftermination" id="txtdateoftermination" value="<%=clearanceForm.getTerminationDate() %>" disabled="disabled"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateoftermination')"/>.
				</p>
				<p>
					Therefore, this is to advise you to collect any Sandford Cash, resource borrowd
					and property issued to the employee and settle any outstanding issue related
					to the interest of the school. Please confirm your action by signing in the space 
					provided below.
				</p>
			</td>
		</tr>
		<tr style="font-weight:bolder;">
			<td>Sr.No.</td>
			<td>Department/Work Unit</td>
			<td>Name of Person in charge</td>
			<td>Signature (Cleared)</td>
			<td>Date of Clearance</td>
			<td>Remark</td>
		</tr>
		<tr>
			<td>1</td>
			<td>Immediate Supervisor</td>
			<td><input type="text" name="txtnameofpersoninchargeimmediatesupervisor" id="txtnameofpersoninchargeimmediatesupervisor" disabled="disabled" value="<%=clearanceForm.getImmediateSupervisorName() %>"/></td>
			<td>
				<select name="slctsignatureclearedimmediatesupervisor" id="slctsignatureclearedimmediatesupervisor" style="width:100%" disabled="disabled">
					<%
						if(clearanceForm.getImmediateSupervisorCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceimmediatesupervisor" id="txtdateofclearanceimmediatesupervisor" disabled="disabled" size="8" value="<%=clearanceForm.getImmediateSupervisorClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceimmediatesupervisor')" />
			</td>
			<td>
				<textarea name="textarearemarkimmediatesupervisor" id="textarearemarkimmediatesupervisor" style="width:100%" rows="3" disabled="disabled"><%=clearanceForm.getImmediateSupervisorRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Head of Library</td>
			<td><input type="text" name="txtnameofpersoninchargeheadoflibrary" id="txtnameofpersoninchargeheadoflibrary" disabled="disabled" value="<%=clearanceForm.getLibraryHeadName() %>"/></td>
			<td>
				<select name="slctsignatureclearedheadoflibrary" id="slctsignatureclearedheadoflibrary" style="width:100%" disabled="disabled">
					<%
						if(clearanceForm.getLibraryHeadCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceheadoflibrary" id="txtdateofclearanceheadoflibrary" disabled="disabled" size="8" value="<%=clearanceForm.getLibraryHeadClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceheadoflibrary')" />
			</td>
			<td>
				<textarea name="textarearemarkheadoflibrary" id="textarearemarkheadoflibrary" style="width:100%" rows="3" disabled="disabled"><%=clearanceForm.getLibraryHeadRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Head of Finance, P & P</td>
			<td><input type="text" name="txtnameofpersoninchargeheadoffinance" id="txtnameofpersoninchargeheadoffinance" disabled="disabled" value="<%=clearanceForm.getFinanceHeadName() %>"/></td>
			<td>
				<select name="slctsignatureclearedheadoffinance" id="slctsignatureclearedheadoffinance" style="width:100%" disabled="disabled">
					<%
						if(clearanceForm.getFinanceHeadCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceheadoffinance" id="txtdateofclearanceheadoffinance" size="8" disabled="disabled" value="<%=clearanceForm.getFinanceHeadClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceheadoffinance')" />
			</td>
			<td>
				<textarea name="textarearemarkheadoffinance" id="textarearemarkheadoffinance" style="width:100%" rows="3" disabled="disabled"><%=clearanceForm.getFinanceHeadRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Property & Housing</td>
			<td><input type="text" name="txtnameofpersoninchargepropertyandhousing" id="txtnameofpersoninchargepropertyandhousing" disabled="disabled" value="<%=clearanceForm.getPropertyHousingName() %>"/></td>
			<td>
				<select name="slctsignatureclearedpropertyandhousing" id="slctsignatureclearedpropertyandhousing" style="width:100%" disabled="disabled">
					<%
						if(clearanceForm.getPropertyHousingCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearancepropertyandhousing" id="txtdateofclearancepropertyandhousing" disabled="disabled" size="8" value="<%=clearanceForm.getPropertyHousingClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearancepropertyandhousing')" />
			</td>
			<td>
				<textarea name="textarearemarkpropertyandhousing" id="textarearemarkpropertyandhousing" style="width:100%" disabled="disabled" rows="3"><%=clearanceForm.getPropertyHousingRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Accounts & Budget</td>
			<td><input type="text" name="txtnameofpersoninchargeaccountsandbudget" id="txtnameofpersoninchargeaccountsandbudget" disabled="disabled" value="<%=clearanceForm.getAccountsBudgetName() %>"/></td>
			<td>
				<select name="slctsignatureclearedaccountsandbudget" id="slctsignatureclearedaccountsandbudget" style="width:100%" disabled="disabled">
					<%
						if(clearanceForm.getAccountsBudgetCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceaccountsandbudget" id="txtdateofclearanceaccountsandbudget" disabled="disabled" size="8" value="<%=clearanceForm.getAccountsBudgetClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceaccountsandbudget')" />
			</td>
			<td>
				<textarea name="textarearemarkaccountsandbudget" id="textarearemarkaccountsandbudget" style="width:100%" rows="3" disabled="disabled"><%=clearanceForm.getAccountsBudgetRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Procurement</td>
			<td><input type="text" name="txtnameofpersoninchargeprocurment" id="txtnameofpersoninchargeprocurment" disabled="disabled" value="<%=clearanceForm.getProcurmentName() %>"/></td>
			<td>
				<select name="slctsignatureclearedprocurment" id="slctsignatureclearedprocurment" style="width:100%" disabled="disabled">
					<%
						if(clearanceForm.getProcurmentCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceprocurment" id="txtdateofclearanceprocurment" size="8" disabled="disabled" value="<%=clearanceForm.getProcurmentClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceprocurment')" />
			</td>
			<td>
				<textarea name="textarearemarkprocurment" id="textarearemarkprocurment" style="width:100%" rows="3" disabled="disabled"><%=clearanceForm.getProcurmentRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Head of HR and Admin</td>
			<td><input type="text" name="txtnameofpersoninchargeheadofhr" id="txtnameofpersoninchargeheadofhr" disabled="disabled" value="<%=clearanceForm.getHrHeadName() %>"/></td>
			<td>
				<select name="slctsignatureclearedheadofhr" id="slctsignatureclearedheadofhr" style="width:100%" disabled="disabled">
					<%
						if(clearanceForm.getHrHeadCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceheadofhr" id="txtdateofclearanceheadofhr" size="8" disabled="disabled" value="<%=clearanceForm.getHrHeadClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceheadofhr')" />
			</td>
			<td>
				<textarea name="textarearemarkheadofhr" id="textarearemarkheadofhr" style="width:100%" disabled="disabled" rows="3"><%=clearanceForm.getHrHeadRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Personnel and Benefits</td>
			<td><input type="text" name="txtnameofpersoninchargepersonnelandbenefits" id="txtnameofpersoninchargepersonnelandbenefits" disabled="disabled" value="<%=clearanceForm.getPersonnelBenefitsName() %>"/></td>
			<td>
				<select name="slctsignatureclearedpersonnelandbenefits" id="slctsignatureclearedpersonnelandbenefits" style="width:100%" disabled="disabled">
					<%
						if(clearanceForm.getPersonnelBenefitsCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearancepersonnelandbenefits" id="txtdateofclearancepersonnelandbenefits" disabled="disabled" size="8" value="<%=clearanceForm.getPersonnelBenefitsClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearancepersonnelandbenefits')" />
			</td>
			<td>
				<textarea name="textarearemarkpersonnelandbenefits" id="textarearemarkpersonnelandbenefits" style="width:100%" disabled="disabled" rows="3"><%=clearanceForm.getPersonnelBenefitsRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Maintainance G/Service</td>
			<td><input type="text" name="txtnameofpersoninchargemaintainancegeneralservice" id="txtnameofpersoninchargemaintainancegeneralservice" disabled="disabled" value="<%=clearanceForm.getMaintainanceGeneralServiceName() %>"/></td>
			<td>
				<select name="slctsignatureclearedmaintainancegeneralservice" id="slctsignatureclearedmaintainancegeneralservice" style="width:100%" disabled="disabled">
					<%
						if(clearanceForm.getMaintainanceGeneralServiceCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearancemaintainancegeneralservice" id="txtdateofclearancemaintainancegeneralservice" disabled="disabled" size="8" value="<%=clearanceForm.getMaintainanceGeneralServiceClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearancemaintainancegeneralservice')" />
			</td>
			<td>
				<textarea name="textarearemarkmaintainancegeneralservice" id="textarearemarkmaintainancegeneralservice" style="width:100%" disabled="disabled" rows="3"><%=clearanceForm.getMaintainanceGeneralServiceRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>IT</td>
			<td><input type="text" name="txtnameofpersoninchargeit" id="txtnameofpersoninchargeit" value="<%=clearanceForm.getItName() %>" disabled="disabled"/></td>
			<td>
				<select name="slctsignatureclearedit" id="slctsignatureclearedit" style="width:100%">
					<%
						if(clearanceForm.getItCleared().equalsIgnoreCase("cleared")){
					%>
							<option value="Cleared" selected="selected">Cleared</option>
							<option value="Not Cleared">Not Cleared</option>
					<%
						}else{
					%>
							<option value="Cleared">Cleared</option>
							<option value="Not Cleared" selected="selected">Not Cleared</option>
					<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceit" id="txtdateofclearanceit" size="8" value="<%=clearanceForm.getItClearanceDate() %>" disabled="disabled"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceit')" />
			</td>
			<td>
				<textarea name="textarearemarkit" id="textarearemarkit" style="width:100%" rows="3" disabled="disabled"><%=clearanceForm.getItRemark() %></textarea>
			</td>
		</tr>
	</table>
	</form>
</div>