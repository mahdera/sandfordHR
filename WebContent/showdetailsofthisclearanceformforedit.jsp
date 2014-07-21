<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long clearanceFormId = Long.parseLong(request.getParameter("clearanceFormId"));
	CleranceForm clearanceForm = CleranceForm.getCleranceForm(clearanceFormId);
	//now define the form control names here....
	String employeeIdControlName = "slctemployee" + clearanceFormId;
	String terminationDateControlName = "txtdateoftermination" + clearanceFormId;
	String immediateSupervisorNameControlName = "txtnameofpersoninchargeimmediatesupervisor" + clearanceFormId;
	String immediateSupervisorSignatureControlName = "slctsignatureclearedimmediatesupervisor" + clearanceFormId;
	String immediateSupervisorClearanceDateControlName = "txtdateofclearanceimmediatesupervisor" + clearanceFormId;
	String immediateSupervisorRemarkControlName = "textarearemarkimmediatesupervisor" + clearanceFormId;
	String libraryHeadNameControlName = "txtnameofpersoninchargeheadoflibrary" + clearanceFormId;
	String libraryHeadSignatureControlName = "slctsignatureclearedheadoflibrary" + clearanceFormId;
	String libraryHeadClearanceDateControlName = "txtdateofclearanceheadoflibrary" + clearanceFormId;
	String libraryHeadRemarkControlName = "textarearemarkheadoflibrary" + clearanceFormId;
	String financeHeadNameControlName = "txtnameofpersoninchargeheadoffinance" + clearanceFormId;
	String financeHeadSignatureControlName = "slctsignatureclearedheadoffinance" + clearanceFormId;
	String financeHeadClearanceDateControlName = "txtdateofclearanceheadoffinance" + clearanceFormId;
	String financeHeadRemarkControlName = "textarearemarkheadoffinance" + clearanceFormId;
	String propertyHousingNameControlName = "txtnameofpersoninchargepropertyandhousing" + clearanceFormId;
	String propertyHousingSignatureControlName = "slctsignatureclearedpropertyandhousing" + clearanceFormId;
	String propertyHousingClearanceDateControlName = "txtdateofclearancepropertyandhousing" + clearanceFormId;
	String propertyHousingRemarkControlName = "textarearemarkpropertyandhousing" + clearanceFormId;
	String accountsBudgetNameControlName = "txtnameofpersoninchargeaccountsandbudget" + clearanceFormId;
	String accountsBudgetSignatureControlName = "slctsignatureclearedaccountsandbudget" + clearanceFormId;
	String accountsBudgetClearanceDateControlName = "txtdateofclearanceaccountsandbudget" + clearanceFormId;
	String accountsBudgetRemarkControlName = "textarearemarkaccountsandbudget" + clearanceFormId;
	String procurementNameControlName = "txtnameofpersoninchargeprocurment" + clearanceFormId;
	String procurementSignatureControlName = "slctsignatureclearedprocurment" + clearanceFormId;
	String procurementClearanceDateControlName = "txtdateofclearanceprocurment" + clearanceFormId;
	String procurementRemarkControlName = "textarearemarkprocurment" + clearanceFormId;
	String hrAdminHeadNameControlName = "txtnameofpersoninchargeheadofhr" + clearanceFormId;
	String hrAdminHeadSignatureControlName = "slctsignatureclearedheadofhr" + clearanceFormId;
	String hrAdminHeadClearanceDateControlName = "txtdateofclearanceheadofhr" + clearanceFormId;
	String hrAdminHeadRemarkControlName = "textarearemarkheadofhr" + clearanceFormId;
	String personnelAndBenefitsNameControlName = "txtnameofpersoninchargepersonnelandbenefits" + clearanceFormId;
	String personnelAndBenefitsSignatureControlName = "slctsignatureclearedpersonnelandbenefits" + clearanceFormId;
	String personnelAndBenefitsClearanceDateControlName = "txtdateofclearancepersonnelandbenefits" + clearanceFormId;
	String personnelAndBenefitsRemarkControlName = "textarearemarkpersonnelandbenefits" + clearanceFormId;
	String maintainanceGeneralServiceNameControlName = "txtnameofpersoninchargemaintainancegeneralservice" + clearanceFormId;
	String maintainanceGeneralServiceSignatureControlName = "slctsignatureclearedmaintainancegeneralservice" + clearanceFormId;
	String maintainanceGeneralServiceClearanceDateControlName = "txtdateofclearancemaintainancegeneralservice" + clearanceFormId;
	String maintainanceGeneralServiceRemarkControlName = "textarearemarkmaintainancegeneralservice" + clearanceFormId;
	String itNameControlName = "txtnameofpersoninchargeit" + clearanceFormId;
	String itSignatureControlName = "slctsignatureclearedit" + clearanceFormId;
	String itClearanceDateControlName = "txtdateofclearanceit" + clearanceFormId;
	String itRemarkControlName = "textarearemarkit" + clearanceFormId;
%>
<div>
	<form>
	<table border="1" width="100%" style="background:#eee">
		<tr>
			<td valign="top" colspan="6">
				<strong>
					<p style="text-align:center">
						<font size="4"><label>
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
				<select name="<%=employeeIdControlName %>" id="<%=employeeIdControlName %>" style="width:30%">
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
				<input type="text" name="<%=terminationDateControlName %>" id="<%=terminationDateControlName %>" value="<%=clearanceForm.getTerminationDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=terminationDateControlName%>')"/>.
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
			<td><input type="text" name="<%=immediateSupervisorNameControlName %>" id="<%=immediateSupervisorNameControlName %>" value="<%=clearanceForm.getImmediateSupervisorName() %>"/></td>
			<td>
				<select name="<%=immediateSupervisorSignatureControlName %>" id="<%=immediateSupervisorSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=immediateSupervisorClearanceDateControlName %>" id="<%=immediateSupervisorClearanceDateControlName %>" size="8" value="<%=clearanceForm.getImmediateSupervisorClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=immediateSupervisorClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=immediateSupervisorRemarkControlName %>" id="<%=immediateSupervisorRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getImmediateSupervisorRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Head of Library</td>
			<td><input type="text" name="<%=libraryHeadNameControlName %>" id="<%=libraryHeadNameControlName %>" value="<%=clearanceForm.getLibraryHeadName() %>"/></td>
			<td>
				<select name="<%=libraryHeadSignatureControlName %>" id="<%=libraryHeadSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=libraryHeadClearanceDateControlName %>" id="<%=libraryHeadClearanceDateControlName %>" size="8" value="<%=clearanceForm.getLibraryHeadClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=libraryHeadClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=libraryHeadRemarkControlName %>" id="<%=libraryHeadRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getLibraryHeadRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Head of Finance, P & P</td>
			<td><input type="text" name="<%=financeHeadNameControlName %>" id="<%=financeHeadNameControlName %>" value="<%=clearanceForm.getFinanceHeadName() %>"/></td>
			<td>
				<select name="<%=financeHeadSignatureControlName %>" id="<%=financeHeadSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=financeHeadClearanceDateControlName %>" id="<%=financeHeadClearanceDateControlName %>" size="8" value="<%=clearanceForm.getFinanceHeadClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=financeHeadClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=financeHeadRemarkControlName %>" id="<%=financeHeadRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getFinanceHeadRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Property & Housing</td>
			<td><input type="text" name="<%=propertyHousingNameControlName %>" id="<%=propertyHousingNameControlName %>" value="<%=clearanceForm.getPropertyHousingName() %>"/></td>
			<td>
				<select name="<%=propertyHousingSignatureControlName %>" id="<%=propertyHousingSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=propertyHousingClearanceDateControlName %>" id="<%=propertyHousingClearanceDateControlName %>" size="8" value="<%=clearanceForm.getPropertyHousingClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=propertyHousingClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=propertyHousingRemarkControlName %>" id="<%=propertyHousingRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getPropertyHousingRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Accounts & Budget</td>
			<td><input type="text" name="<%=accountsBudgetNameControlName %>" id="<%=accountsBudgetNameControlName %>" value="<%=clearanceForm.getAccountsBudgetName() %>"/></td>
			<td>
				<select name="<%=accountsBudgetSignatureControlName %>" id="<%=accountsBudgetSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=accountsBudgetClearanceDateControlName %>" id="<%=accountsBudgetClearanceDateControlName %>" size="8" value="<%=clearanceForm.getAccountsBudgetClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=accountsBudgetClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=accountsBudgetRemarkControlName %>" id="<%=accountsBudgetRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getAccountsBudgetRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Procurement</td>
			<td><input type="text" name="<%=procurementNameControlName %>" id="<%=procurementNameControlName %>" value="<%=clearanceForm.getProcurmentName() %>"/></td>
			<td>
				<select name="<%=procurementSignatureControlName %>" id="<%=procurementSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=procurementClearanceDateControlName %>" id="<%=procurementClearanceDateControlName %>" size="8" value="<%=clearanceForm.getProcurmentClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=procurementClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=procurementRemarkControlName %>" id="<%=procurementRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getProcurmentRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Head of HR and Admin</td>
			<td><input type="text" name="<%=hrAdminHeadNameControlName %>" id="<%=hrAdminHeadNameControlName %>" value="<%=clearanceForm.getHrHeadName() %>"/></td>
			<td>
				<select name="<%=hrAdminHeadSignatureControlName %>" id="<%=hrAdminHeadSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=hrAdminHeadClearanceDateControlName %>" id="<%=hrAdminHeadClearanceDateControlName %>" size="8" value="<%=clearanceForm.getHrHeadClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=hrAdminHeadClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=hrAdminHeadRemarkControlName %>" id="<%=hrAdminHeadRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getHrHeadRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Personnel and Benefits</td>
			<td><input type="text" name="<%=personnelAndBenefitsNameControlName %>" id="<%=personnelAndBenefitsNameControlName %>" value="<%=clearanceForm.getPersonnelBenefitsName() %>"/></td>
			<td>
				<select name="<%=personnelAndBenefitsSignatureControlName %>" id="<%=personnelAndBenefitsSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=personnelAndBenefitsClearanceDateControlName %>" id="<%=personnelAndBenefitsClearanceDateControlName %>" size="8" value="<%=clearanceForm.getPersonnelBenefitsClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=personnelAndBenefitsClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=personnelAndBenefitsRemarkControlName %>" id="<%=personnelAndBenefitsRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getPersonnelBenefitsRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Maintainance G/Service</td>
			<td><input type="text" name="<%=maintainanceGeneralServiceNameControlName %>" id="<%=maintainanceGeneralServiceNameControlName %>" value="<%=clearanceForm.getMaintainanceGeneralServiceName() %>"/></td>
			<td>
				<select name="<%=maintainanceGeneralServiceSignatureControlName %>" id="<%=maintainanceGeneralServiceSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=maintainanceGeneralServiceClearanceDateControlName %>" id="<%=maintainanceGeneralServiceClearanceDateControlName %>" size="8" value="<%=clearanceForm.getMaintainanceGeneralServiceClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=maintainanceGeneralServiceClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=maintainanceGeneralServiceRemarkControlName %>" id="<%=maintainanceGeneralServiceRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getMaintainanceGeneralServiceRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>IT</td>
			<td><input type="text" name="<%=itNameControlName %>" id="<%=itNameControlName %>" value="<%=clearanceForm.getItName() %>"/></td>
			<td>
				<select name="<%=itSignatureControlName %>" id="<%=itSignatureControlName %>" style="width:100%">
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
				<input type="text" name="<%=itClearanceDateControlName %>" id="<%=itClearanceDateControlName %>" size="8" value="<%=clearanceForm.getItClearanceDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=itClearanceDateControlName %>')" />
			</td>
			<td>
				<textarea name="<%=itRemarkControlName %>" id="<%=itRemarkControlName %>" style="width:100%" rows="3"><%=clearanceForm.getItRemark() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="6" align="right">
				<input type="button" value="Update" class="input-submit" id="btnupdate"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnupdate').click(function(){
			var clearanceFormId = "<%=clearanceFormId%>";
			var employeeId = $('#slctemployee'+clearanceFormId).val();
			var terminationDate = $('#txtdateoftermination'+clearanceFormId).val();
			var immediateSupervisorName = $('#txtnameofpersoninchargeimmediatesupervisor'+clearanceFormId).val();
			var immediateSupervisorCleared = $('#slctsignatureclearedimmediatesupervisor'+clearanceFormId).val();
			var immediateSupervisorClearanceDate = $('#txtdateofclearanceimmediatesupervisor'+clearanceFormId).val();
			var immediateSupervisorRemark = $('#textarearemarkimmediatesupervisor'+clearanceFormId).val();
			var libraryHeadName = $('#txtnameofpersoninchargeheadoflibrary'+clearanceFormId).val();
			var libraryHeadCleared = $('#slctsignatureclearedheadoflibrary'+clearanceFormId).val();
			var libraryHeadClearanceDate = $('#txtdateofclearanceheadoflibrary'+clearanceFormId).val();
			var libraryHeadRemark = $('#textarearemarkheadoflibrary'+clearanceFormId).val();
			var financeHeadName = $('#txtnameofpersoninchargeheadoffinance'+clearanceFormId).val();
			var financeHeadCleared = $('#slctsignatureclearedheadoffinance'+clearanceFormId).val();
			var financeHeadClearanceDate = $('#txtdateofclearanceheadoffinance'+clearanceFormId).val();
			var financeHeadRemark = $('#textarearemarkheadoffinance'+clearanceFormId).val();
			var propertyHousingName = $('#txtnameofpersoninchargepropertyandhousing'+clearanceFormId).val();
			var propertyHousingCleared = $('#slctsignatureclearedpropertyandhousing'+clearanceFormId).val();
			var propertyHousingClearanceDate = $('#txtdateofclearancepropertyandhousing'+clearanceFormId).val();
			var propertyHousingRemark = $('#textarearemarkpropertyandhousing'+clearanceFormId).val();
			var accountsBudgetName = $('#txtnameofpersoninchargeaccountsandbudget'+clearanceFormId).val();
			var accountsBudgetCleared = $('#slctsignatureclearedaccountsandbudget'+clearanceFormId).val();
			var accountsBudgetClearanceDate = $('#txtdateofclearanceaccountsandbudget'+clearanceFormId).val();
			var accountsBudgetRemark = $('#textarearemarkaccountsandbudget'+clearanceFormId).val();
			var procurmentName = $('#txtnameofpersoninchargeprocurment'+clearanceFormId).val();
			var procurmentCleared = $('#slctsignatureclearedprocurment'+clearanceFormId).val();
			var procurmentClearanceDate = $('#txtdateofclearanceprocurment'+clearanceFormId).val();
			var procurmentRemark = $('#textarearemarkprocurment'+clearanceFormId).val();
			var hrHeadName = $('#txtnameofpersoninchargeheadofhr'+clearanceFormId).val();
			var hrHeadCleared = $('#slctsignatureclearedheadofhr'+clearanceFormId).val();
			var hrHeadClearanceDate = $('#txtdateofclearanceheadofhr'+clearanceFormId).val();
			var hrHeadRemark = $('#textarearemarkheadofhr'+clearanceFormId).val();
			var personnelBenefitsName = $('#txtnameofpersoninchargepersonnelandbenefits'+clearanceFormId).val();
			var personnelBenefitsCleared = $('#slctsignatureclearedpersonnelandbenefits'+clearanceFormId).val();
			var personnelBenefitsClearanceDate = $('#txtdateofclearancepersonnelandbenefits'+clearanceFormId).val();
			var personnelBenefitsRemark = $('#textarearemarkpersonnelandbenefits'+clearanceFormId).val();
			var maintainanceGeneralServiceName = $('#txtnameofpersoninchargemaintainancegeneralservice'+clearanceFormId).val();
			var maintainanceGeneralServiceCleared = $('#slctsignatureclearedmaintainancegeneralservice'+clearanceFormId).val();
			var maintainanceGeneralServiceClearanceDate = $('#txtdateofclearancemaintainancegeneralservice'+clearanceFormId).val();
			var maintainanceGeneralServiceRemark = $('#textarearemarkmaintainancegeneralservice'+clearanceFormId).val();
			var itName = $('#txtnameofpersoninchargeit'+clearanceFormId).val();
			var itCleared = $('#slctsignatureclearedit'+clearanceFormId).val();
			var itClearanceDate = $('#txtdateofclearanceit'+clearanceFormId).val();
			var itRemark = $('#textarearemarkit'+clearanceFormId).val();
			
			var dataString = "employeeId="+employeeId+"&terminationDate="+terminationDate+"&immediateSupervisorName="+
			immediateSupervisorName+"&immediateSupervisorCleared="+immediateSupervisorCleared+
			"&immediateSupervisorClearanceDate="+immediateSupervisorClearanceDate+
			"&immediateSupervisorRemark="+immediateSupervisorRemark+"&libraryHeadName="+libraryHeadName+
			"&libraryHeadCleared="+libraryHeadCleared+"&libraryHeadClearanceDate="+libraryHeadClearanceDate+
			"&libraryHeadRemark="+libraryHeadRemark+"&financeHeadName="+financeHeadName+"&financeHeadCleared="+
			financeHeadCleared+"&financeHeadClearanceDate="+financeHeadClearanceDate+"&financeHeadRemark="+
			financeHeadRemark+"&propertyHousingName="+propertyHousingName+"&propertyHousingCleared="+
			propertyHousingCleared+"&propertyHousingClearanceDate="+propertyHousingClearanceDate+
			"&propertyHousingRemark="+propertyHousingRemark+"&accountsBudgetName="+accountsBudgetName+
			"&accountsBudgetCleared="+accountsBudgetCleared+"&accountsBudgetClearanceDate="+accountsBudgetClearanceDate+
			"&accountsBudgetRemark="+accountsBudgetRemark+"&procurmentName="+procurmentName+
			"&procurmentCleared="+procurmentCleared+"&procurmentClearanceDate="+procurmentClearanceDate+
			"&procurmentRemark="+procurmentRemark+"&hrHeadName="+hrHeadName+"&hrHeadCleared="+hrHeadCleared+
			"&hrHeadClearanceDate="+hrHeadClearanceDate+"&hrHeadRemark="+hrHeadRemark+"&personnelBenefitsName="+
			personnelBenefitsName+"&personnelBenefitsCleared="+personnelBenefitsCleared+"&personnelBenefitsClearanceDate="+
			personnelBenefitsClearanceDate+"&personnelBenefitsRemark="+personnelBenefitsRemark+
			"&maintainanceGeneralServiceName="+maintainanceGeneralServiceName+"&maintainanceGeneralServiceCleared="+
			maintainanceGeneralServiceCleared+"&maintainanceGeneralServiceClearanceDate="+maintainanceGeneralServiceClearanceDate+
			"&maintainanceGeneralServiceRemark="+maintainanceGeneralServiceRemark+"&itName="+itName+
			"&itCleared="+itCleared+"&itClearanceDate="+itClearanceDate+"&itRemark="+itRemark+
			"&clearanceFormId="+clearanceFormId;
			
			$.ajax({
			    url: 'updatecleranceforadminstaffform.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){	
			    		var divId = "clearanceDetailDiv" + clearanceFormId;
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		});//end form.update function
	});//end document.ready function
</script>