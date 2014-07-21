<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
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
				Please be informed that the employment contract of <font color="red">*</font>
				<select name="slctemployee" id="slctemployee" style="width:30%">
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
				with Sandford International School has terminated effective as of <font color="red">*</font>
				<input type="text" name="txtdateoftermination" id="txtdateoftermination"/>
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
			<td>Name of Person in charge <font color='red'>* (All)</font></td>
			<td>Signature (Cleared) <font color='red'>* (All)</font></td>
			<td>Date of Clearance <font color='red'>* (All)</font></td>
			<td>Remark</td>
		</tr>
		<tr>
			<td>1</td>
			<td>Immediate Supervisor</td>
			<td><input type="text" name="txtnameofpersoninchargeimmediatesupervisor" id="txtnameofpersoninchargeimmediatesupervisor"/></td>
			<td>				
				<select name="slctsignatureclearedimmediatesupervisor" id="slctsignatureclearedimmediatesupervisor" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceimmediatesupervisor" id="txtdateofclearanceimmediatesupervisor" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceimmediatesupervisor')" />
			</td>
			<td>
				<textarea name="textarearemarkimmediatesupervisor" id="textarearemarkimmediatesupervisor" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Head of Library</td>
			<td><input type="text" name="txtnameofpersoninchargeheadoflibrary" id="txtnameofpersoninchargeheadoflibrary"/></td>
			<td>
				<select name="slctsignatureclearedheadoflibrary" id="slctsignatureclearedheadoflibrary" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceheadoflibrary" id="txtdateofclearanceheadoflibrary" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceheadoflibrary')" />
			</td>
			<td>
				<textarea name="textarearemarkheadoflibrary" id="textarearemarkheadoflibrary" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Head of Finance, P & P</td>
			<td><input type="text" name="txtnameofpersoninchargeheadoffinance" id="txtnameofpersoninchargeheadoffinance"/></td>
			<td>
				<select name="slctsignatureclearedheadoffinance" id="slctsignatureclearedheadoffinance" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceheadoffinance" id="txtdateofclearanceheadoffinance" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceheadoffinance')" />
			</td>
			<td>
				<textarea name="textarearemarkheadoffinance" id="textarearemarkheadoffinance" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Property & Housing</td>
			<td><input type="text" name="txtnameofpersoninchargepropertyandhousing" id="txtnameofpersoninchargepropertyandhousing"/></td>
			<td>
				<select name="slctsignatureclearedpropertyandhousing" id="slctsignatureclearedpropertyandhousing" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearancepropertyandhousing" id="txtdateofclearancepropertyandhousing" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearancepropertyandhousing')" />
			</td>
			<td>
				<textarea name="textarearemarkpropertyandhousing" id="textarearemarkpropertyandhousing" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Accounts & Budget</td>
			<td><input type="text" name="txtnameofpersoninchargeaccountsandbudget" id="txtnameofpersoninchargeaccountsandbudget"/></td>
			<td>
				<select name="slctsignatureclearedaccountsandbudget" id="slctsignatureclearedaccountsandbudget" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceaccountsandbudget" id="txtdateofclearanceaccountsandbudget" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceaccountsandbudget')" />
			</td>
			<td>
				<textarea name="textarearemarkaccountsandbudget" id="textarearemarkaccountsandbudget" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Procurment</td>
			<td><input type="text" name="txtnameofpersoninchargeprocurment" id="txtnameofpersoninchargeprocurment"/></td>
			<td>
				<select name="slctsignatureclearedprocurment" id="slctsignatureclearedprocurment" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceprocurment" id="txtdateofclearanceprocurment" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceprocurment')" />
			</td>
			<td>
				<textarea name="textarearemarkprocurment" id="textarearemarkprocurment" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Head of HR and Admin</td>
			<td><input type="text" name="txtnameofpersoninchargeheadofhr" id="txtnameofpersoninchargeheadofhr"/></td>
			<td>
				<select name="slctsignatureclearedheadofhr" id="slctsignatureclearedheadofhr" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceheadofhr" id="txtdateofclearanceheadofhr" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceheadofhr')" />
			</td>
			<td>
				<textarea name="textarearemarkheadofhr" id="textarearemarkheadofhr" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Personnel and Benefits</td>
			<td><input type="text" name="txtnameofpersoninchargepersonnelandbenefits" id="txtnameofpersoninchargepersonnelandbenefits"/></td>
			<td>
				<select name="slctsignatureclearedpersonnelandbenefits" id="slctsignatureclearedpersonnelandbenefits" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearancepersonnelandbenefits" id="txtdateofclearancepersonnelandbenefits" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearancepersonnelandbenefits')" />
			</td>
			<td>
				<textarea name="textarearemarkpersonnelandbenefits" id="textarearemarkpersonnelandbenefits" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>Maintainance G/Service</td>
			<td><input type="text" name="txtnameofpersoninchargemaintainancegeneralservice" id="txtnameofpersoninchargemaintainancegeneralservice"/></td>
			<td>
				<select name="slctsignatureclearedmaintainancegeneralservice" id="slctsignatureclearedmaintainancegeneralservice" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearancemaintainancegeneralservice" id="txtdateofclearancemaintainancegeneralservice" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearancemaintainancegeneralservice')" />
			</td>
			<td>
				<textarea name="textarearemarkmaintainancegeneralservice" id="textarearemarkmaintainancegeneralservice" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td>-</td>
			<td>IT</td>
			<td><input type="text" name="txtnameofpersoninchargeit" id="txtnameofpersoninchargeit"/></td>
			<td>
				<select name="slctsignatureclearedit" id="slctsignatureclearedit" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Cleared">Cleared</option>
					<option value="Not Cleared">Not Cleared</option>
				</select>
			</td>
			<td>
				<input type="text" name="txtdateofclearanceit" id="txtdateofclearanceit" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofclearanceit')" />
			</td>
			<td>
				<textarea name="textarearemarkit" id="textarearemarkit" style="width:100%" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="6" align="right">
				<input type="button" value="Save" class="input-submit" id="btnsave"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<p class="msg info">N.B. Fields indicated by <font color='red'>*</font> are required!</p>
			</td>
		</tr>
	</table>
	</form>
	<div id="errorDiv"></div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnsave').click(function(){
			var employeeId = $('#slctemployee').val();
			var terminationDate = $('#txtdateoftermination').val();
			var immediateSupervisorName = $('#txtnameofpersoninchargeimmediatesupervisor').val();
			var immediateSupervisorCleared = $('#slctsignatureclearedimmediatesupervisor').val();
			var immediateSupervisorClearanceDate = $('#txtdateofclearanceimmediatesupervisor').val();
			var immediateSupervisorRemark = $('#textarearemarkimmediatesupervisor').val();
			var libraryHeadName = $('#txtnameofpersoninchargeheadoflibrary').val();
			var libraryHeadCleared = $('#slctsignatureclearedheadoflibrary').val();
			var libraryHeadClearanceDate = $('#txtdateofclearanceheadoflibrary').val();
			var libraryHeadRemark = $('#textarearemarkheadoflibrary').val();
			var financeHeadName = $('#txtnameofpersoninchargeheadoffinance').val();
			var financeHeadCleared = $('#slctsignatureclearedheadoffinance').val();
			var financeHeadClearanceDate = $('#txtdateofclearanceheadoffinance').val();
			var financeHeadRemark = $('#textarearemarkheadoffinance').val();
			var propertyHousingName = $('#txtnameofpersoninchargepropertyandhousing').val();
			var propertyHousingCleared = $('#slctsignatureclearedpropertyandhousing').val();
			var propertyHousingClearanceDate = $('#txtdateofclearancepropertyandhousing').val();
			var propertyHousingRemark = $('#textarearemarkpropertyandhousing').val();
			var accountsBudgetName = $('#txtnameofpersoninchargeaccountsandbudget').val();
			var accountsBudgetCleared = $('#slctsignatureclearedaccountsandbudget').val();
			var accountsBudgetClearanceDate = $('#txtdateofclearanceaccountsandbudget').val();
			var accountsBudgetRemark = $('#textarearemarkaccountsandbudget').val();
			var procurmentName = $('#txtnameofpersoninchargeprocurment').val();
			var procurmentCleared = $('#slctsignatureclearedprocurment').val();
			var procurmentClearanceDate = $('#txtdateofclearanceprocurment').val();
			var procurmentRemark = $('#textarearemarkprocurment').val();
			var hrHeadName = $('#txtnameofpersoninchargeheadofhr').val();
			var hrHeadCleared = $('#slctsignatureclearedheadofhr').val();
			var hrHeadClearanceDate = $('#txtdateofclearanceheadofhr').val();
			var hrHeadRemark = $('#textarearemarkheadofhr').val();
			var personnelBenefitsName = $('#txtnameofpersoninchargepersonnelandbenefits').val();
			var personnelBenefitsCleared = $('#slctsignatureclearedpersonnelandbenefits').val();
			var personnelBenefitsClearanceDate = $('#txtdateofclearancepersonnelandbenefits').val();
			var personnelBenefitsRemark = $('#textarearemarkpersonnelandbenefits').val();
			var maintainanceGeneralServiceName = $('#txtnameofpersoninchargemaintainancegeneralservice').val();
			var maintainanceGeneralServiceCleared = $('#slctsignatureclearedmaintainancegeneralservice').val();
			var maintainanceGeneralServiceClearanceDate = $('#txtdateofclearancemaintainancegeneralservice').val();
			var maintainanceGeneralServiceRemark = $('#textarearemarkmaintainancegeneralservice').val();
			var itName = $('#txtnameofpersoninchargeit').val();
			var itCleared = $('#slctsignatureclearedit').val();
			var itClearanceDate = $('#txtdateofclearanceit').val();
			var itRemark = $('#textarearemarkit').val();
			
			if(employeeId != "" && terminationDate != "" && immediateSupervisorName != "" && immediateSupervisorCleared != "" &&
					immediateSupervisorClearanceDate != "" && libraryHeadName != "" && libraryHeadCleared != "" &&
					libraryHeadClearanceDate != "" && financeHeadName != "" && financeHeadCleared != "" &&
					financeHeadClearanceDate != "" && propertyHousingName != "" && propertyHousingCleared != "" &&
					propertyHousingClearanceDate != "" && accountsBudgetName != "" && accountsBudgetCleared != "" &&
					accountsBudgetClearanceDate != "" && procurmentName != "" && procurmentCleared != "" &&
					procurmentClearanceDate != "" && hrHeadName != "" && hrHeadCleared != "" && hrHeadClearanceDate != "" &&
					personnelBenefitsName != "" && personnelBenefitsCleared != "" && personnelBenefitsClearanceDate != "" &&
					maintainanceGeneralServiceName != "" && maintainanceGeneralServiceCleared != "" &&
					maintainanceGeneralServiceClearanceDate != "" && itName != "" && itCleared != "" &&
					itClearanceDate != ""){			
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
						"&itCleared="+itCleared+"&itClearanceDate="+itClearanceDate+"&itRemark="+itRemark;
						//alert(dataString);
						$.ajax({
						    url: 'savecleranceforadminstaffform.jsp',		
						    data: dataString,
						    type:'POST',
						    success:function(response){
						    		alert(response);
						    		$('#formDetailDiv').load('showclearanceforadminstaff.jsp');					
						    },
						    error:function(error){
								alert(error);
						    }
						});
			}else{
				$('#errorDiv').html("<p class='msg error'>Required data missing. Please enter the missing values!</p>");	
			}
		});//button.save function		
	});//document.ready function
</script>