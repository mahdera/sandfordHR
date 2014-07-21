<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="1" width="100%" style="background:#eee">
		<tr>
			<td>1.</td>
			<td width="30%">Please Select The Employee <font color="red">*</font></td>
			<td colspan="4">
				<select name="slctemployee" id="slctemployee" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Employee> employeeList = Employee.getAllEmployees();
						Iterator<Employee> employeeItr = employeeList.iterator();
						while(employeeItr.hasNext()){
							Employee employee = employeeItr.next();
							String fullName = employee.getFirstName()+" "+employee.getLastName();
							%>
							<option value="<%=employee.getId()%>"><%=fullName %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>2.</td>
			<td>Reason for Leaving <font color="red">*</font></td>
			<td colspan="4">
				<select name="slctreasonforleaving" id="slctreasonforleaving" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="End of Contract">End of Contract</option>
					<option value="Retirement">Retirement</option>
					<option value="Resignation">Resignation</option>
					<option value="Other causes">Other causes</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<div id="otherCausesDiv"></div>
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
					<tr style="background:#ccc;font-weight:bolder;">
						<td width="20%">Action</td>
						<td width="10%">Deadline on/or before</td>
						<td width="20%">Name of person in Charge/department</td>
						<td>Signature <font color="red">* (All)</font></td>
						<td>Date cleared <font color="red">* (All)</font></td>
						<td>Remark</td>
					</tr>
					<tr>
						<td>Library Books and Resources</td>
						<td>Last day of academic year</td>
						<td>Head of Library</td>
						<td>
							<select name="slctsignaturelibrarybooks" id="slctsignaturelibrarybooks" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedlibrarybooks" id="txtdateclearedlibrarybooks" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedlibrarybooks')"/>.
						</td>
						<td><textarea name="textarearemarklibrarybooks" id="textarearemarklibrarybooks" rows="3" style="width:100%"></textarea></td>
					</tr>
					<tr>
						<td>Curriculum notes and mark books</td>
						<td>Last day of academic year</td>
						<td>Head of Section/Department</td>
						<td>
							<select name="slctsignaturecurriculumnotes" id="slctsignaturecurriculumnotes" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedcurriculumnotes" id="txtdateclearedcurriculumnotes" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedcurriculumnotes')"/>.
						</td>
						<td><textarea name="textarearemarkcurriculumnotes" id="textarearemarkcurriculumnotes" rows="3" style="width:100%"></textarea></td>
					</tr>
					<tr>
						<td>Textbooks and Other Class Resources</td>
						<td>Last day of academic year</td>
						<td>Head of Section/Department</td>
						<td>
							<select name="slctsignaturetextbooks" id="slctsignaturetextbooks" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedtextbooks" id="txtdateclearedtextbooks" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedtextbooks')"/>.
						</td>
						<td><textarea name="textarearemarktextbooks" id="textarearemarktextbooks" rows="3" style="width:100%"></textarea></td>
					</tr>
					<tr>
						<td>Room, office, Desk, filing cabinet, Lockers keys etc.</td>
						<td>Last day of academic year</td>
						<td>Head of Section</td>
						<td>
							<select name="slctsignatureroomoffice" id="slctsignatureroomoffice" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedroomoffice" id="txtdateclearedroomoffice" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedroomoffice')"/>.
						</td>
						<td><textarea name="textarearemarkroomoffice" id="textarearemarkroomoffice" rows="3" style="width:100%"></textarea></td>
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
						<td>Signature <font color="red">* (All)</font></td>
						<td>Date cleared <font color="red">* (All)</font></td>
						<td>Remark</td>						
					</tr>
					<tr>
						<td>Property, Housing</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Property</td>
						<td>
							<select name="slctsignaturepropertyhousing" id="slctsignaturepropertyhousing" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedpropertyhousing" id="txtdateclearedpropertyhousing" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedpropertyhousing')"/>.
						</td>
						<td><textarea name="textarearemarkpropertyhousing" id="textarearemarkpropertyhousing" rows="3" style="width:100%"></textarea></td>
					</tr>
					<tr>
						<td>Accounts and Utilities</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Accounts</td>
						<td>
							<select name="slctsignatureaccountsandutilities" id="slctsignatureaccountsandutilities" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedaccountsandutilities" id="txtdateclearedaccountsandutilities" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedaccountsandutilities')"/>.
						</td>
						<td><textarea name="textarearemarkaccountsandutilities" id="textarearemarkaccountsandutilities" rows="3" style="width:100%"></textarea></td>
					</tr>
					<tr>
						<td>Purchasing</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Purchasing</td>
						<td>
							<select name="slctsignaturepurchasing" id="slctsignaturepurchasing" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedpurchasing" id="txtdateclearedpurchasing" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedpurchasing')"/>.
						</td>
						<td><textarea name="textarearemarkpurchasing" id="textarearemarkpurchasing" rows="3" style="width:100%"></textarea></td>
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
					<tr style="background:#ccc;font-weight:bolder">
						<td width="15%">Action</td>
						<td width="15%">Deadline on/or before</td>
						<td width="15%">Name of person in Charge/department</td>
						<td>Signature <font color="red">* (All)</font></td>
						<td>Date cleared <font color="red">* (All)</font></td>
						<td>Remark</td>						
					</tr>
					<tr>
						<td>Personnel and Benefits</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Personnel</td>
						<td>
							<select name="slctsignaturepersonnelandbenefits" id="slctsignaturepersonnelandbenefits" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedpersonnelandbenefits" id="txtdateclearedpersonnelandbenefits" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedpersonnelandbenefits')"/>.
						</td>
						<td><textarea name="textarearemarkpersonnelandbenefits" id="textarearemarkpersonnelandbenefits" rows="3" style="width:100%"></textarea></td>
					</tr>
					<tr>
						<td>Maintainance, transport and General service</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Head of Maintainance</td>
						<td>
							<select name="slctsignaturemaintainancetransport" id="slctsignaturemaintainancetransport" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedmaintainancetransport" id="txtdateclearedmaintainancetransport" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedmaintainancetransport')"/>.
						</td>
						<td><textarea name="textarearemarkmaintainancetransport" id="textarearemarkmaintainancetransport" rows="3" style="width:100%"></textarea></td>
					</tr>
					<tr>
						<td>IT - Network Administrator</td>
						<td>2<sup>nd</sup> week of june</td>
						<td>Network Administrator</td>
						<td>
							<select name="slctsignatureit" id="slctsignatureit" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="Not Signed">Not Signed</option>
								<option value="Signed">Signed</option>
							</select>
						</td>
						<td>
							<input type="text" name="txtdateclearedit" id="txtdateclearedit" size="8"/>
							<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateclearedit')"/>.
						</td>
						<td><textarea name="textarearemarkit" id="textarearemarkit" rows="3" style="width:100%"></textarea></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>Cleared for Final Payment: <font color="red">*</font></td>
			<td colspan="5">
				<select name="slctclearedforfinalpayment" id="slctclearedforfinalpayment" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Not Cleared">Not Cleared</option>
					<option value="Cleared">Cleared</option>
				</select>
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
		$('#slctreasonforleaving').change(function(){
			var reasonForLeaving = $(this).val();
			if(reasonForLeaving == "Other causes"){
				$('#otherCausesDiv').load('specifiyothercausestextarea.jsp');
			}else{
				$('#otherCausesDiv').html('');
			}
		});//end end .change function
		
		$('#btnsave').click(function(){
			var employeeId = $('#slctemployee').val();
			var reasonForLeaving = $('#slctreasonforleaving').val();
			var otherCausesForLeaving = "";
			if($('#textareaspecifyothercauses').val() != null){
				otherCausesForLeaving = $('#textareaspecifyothercauses').val();
			}
			var librarySignature = $('#slctsignaturelibrarybooks').val();
			var libraryClearanceDate = $('#txtdateclearedlibrarybooks').val();
			var libraryRemark = $('#textarearemarklibrarybooks').val();
			var curriculumNotesSignature = $('#slctsignaturecurriculumnotes').val();
			var curriculumNotesClearanceDate = $('#txtdateclearedcurriculumnotes').val();
			var curriculumNotesRemark = $('#textarearemarkcurriculumnotes').val();
			var textbookSignature = $('#slctsignaturetextbooks').val();
			var textbookClearanceDate = $('#txtdateclearedtextbooks').val();
			var textbookRemark = $('#textarearemarktextbooks').val();
			var roomOfficeSignature = $('#slctsignatureroomoffice').val();
			var roomOfficeClearanceDate = $('#txtdateclearedroomoffice').val();
			var roomOfficeRemark = $('#textarearemarkroomoffice').val();
			var propertyHousingSignature = $('#slctsignaturepropertyhousing').val();
			var propertyHousingClearanceDate = $('#txtdateclearedpropertyhousing').val();
			var propertyHousingRemark = $('#textarearemarkpropertyhousing').val();
			var accountsUtilitiesSignature = $('#slctsignatureaccountsandutilities').val();
			var accountsUtilitiesClearanceDate = $('#txtdateclearedaccountsandutilities').val();
			var accountsUtilitiesRemark = $('#textarearemarkaccountsandutilities').val();
			var purchasingSignature = $('#slctsignaturepurchasing').val();
			var purchasingClearanceDate = $('#txtdateclearedpurchasing').val();
			var purchasingRemark = $('#textarearemarkpurchasing').val();
			var personnelBenefitsSignature = $('#slctsignaturepersonnelandbenefits').val();
			var personnelBenefitsClearanceDate = $('#txtdateclearedpersonnelandbenefits').val();
			var personnelBenefitsRemark = $('#textarearemarkpersonnelandbenefits').val();
			var maintainanceTransportSignature = $('#slctsignaturemaintainancetransport').val();
			var maintainanceTransportClearanceDate = $('#txtdateclearedmaintainancetransport').val();
			var maintainanceTransportRemark = $('#textarearemarkmaintainancetransport').val();
			var itSignature = $('#slctsignatureit').val();
			var itClearanceDate = $('#txtdateclearedit').val();
			var itRemark = $('#textarearemarkit').val();
			var clearedForFinalPayment = $('#slctclearedforfinalpayment').val();
			
			if(employeeId != "" && reasonForLeaving != "" && librarySignature != "" && libraryClearanceDate != "" &&
					curriculumNotesSignature != "" && curriculumNotesClearanceDate != "" && 
					textbookSignature != "" && textbookClearanceDate != "" && roomOfficeSignature != "" &&
					roomOfficeClearanceDate != "" && propertyHousingSignature != "" && propertyHousingClearanceDate != "" &&
					accountsUtilitiesSignature != "" && accountsUtilitiesClearanceDate != "" &&
					purchasingSignature != "" && purchasingClearanceDate != "" && personnelBenefitsSignature != "" &&
					personnelBenefitsClearanceDate != "" && maintainanceTransportSignature != "" &&
					maintainanceTransportClearanceDate != "" && itSignature != "" && itClearanceDate != "" &&
					clearedForFinalPayment != ""){
					var dataString = "employeeId="+employeeId+"&reasonForLeaving="+reasonForLeaving+
					"&otherCausesForLeaving="+otherCausesForLeaving+"&librarySignature="+librarySignature+
					"&libraryClearanceDate="+libraryClearanceDate+"&libraryRemark="+libraryRemark+
					"&curriculumNotesSignature="+curriculumNotesSignature+"&curriculumNotesClearanceDate="+
					curriculumNotesClearanceDate+"&curriculumNotesRemark="+curriculumNotesRemark+
					"&textbookSignature="+textbookSignature+"&textbookClearanceDate="+textbookClearanceDate+
					"&textbookRemark="+textbookRemark+"&roomOfficeSignature="+roomOfficeSignature+
					"&roomOfficeClearanceDate="+roomOfficeClearanceDate+"&roomOfficeRemark="+roomOfficeRemark+
					"&propertyHousingSignature="+propertyHousingSignature+"&propertyHousingClearanceDate="+
					propertyHousingClearanceDate+"&propertyHousingRemark="+propertyHousingRemark+"&accountsUtilitiesSignature="+
					accountsUtilitiesSignature+"&accountsUtilitiesClearanceDate="+accountsUtilitiesClearanceDate+
					"&accountsUtilitiesRemark="+accountsUtilitiesRemark+"&purchasingSignature="+purchasingSignature+
					"&purchasingClearanceDate="+purchasingClearanceDate+"&purchasingRemark="+purchasingRemark+
					"&personnelBenefitsSignature="+personnelBenefitsSignature+"&personnelBenefitsClearanceDate="+
					personnelBenefitsClearanceDate+"&personnelBenefitsRemark="+personnelBenefitsRemark+
					"&maintainanceTransportSignature="+maintainanceTransportSignature+"&maintainanceTransportClearanceDate="+
					maintainanceTransportClearanceDate+"&maintainanceTransportRemark="+maintainanceTransportRemark+
					"&itSignature="+itSignature+"&itClearanceDate="+itClearanceDate+"&itRemark="+itRemark+
					"&clearedForFinalPayment="+clearedForFinalPayment;
					
					//alert(dataString);
					$.ajax({
					    url: 'savedepartingemployeecheckoutform.jsp',		
					    data: dataString,
					    type:'POST',
					    success:function(response){
					    		alert(response);
					    		$('#formDetailDiv').load('showdepartingemployeecheckoutform.jsp');					
					    },
					    error:function(error){
							alert(error);
					    }
					});
			}else{
				$('#errorDiv').html("<p class='msg error'>Required data missing. Please enter the missing values!</p>");
			}
		});//end button.click function
	});//end document.ready function
</script>